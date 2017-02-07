<?php
    class Biblioteca extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            existe_sesion_urse();
                        
            // modelos
            $this->load->model('intranet/biblioteca_model');
            $this->load->model('intranet/biblioteca_categoria_model');
            $this->load->model('intranet/biblioteca_documento_model');    
            $this->load->model('pagina_predisenada_model');        
            $this->load->model('navegacion_model');
            
            // helpers
            //$this->load->helper('lms');
            //$this->load->helper('security');
            
            //$this->load->library('session');
        }

        public function index()
    	{
           if($this->session->flashdata('mensaje'))
           {
               $data['mensaje'] = $this->session->flashdata('mensaje');
           } 
           elseif ($this->session->flashdata('error'))
           { 
               $data['error'] = $this->session->flashdata('error');
           }
            
            ###################################################
            # url
            ###################################################
            $url = str_replace(base_url(),"",current_url());
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>BIBLIOTECAS)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('nombre');
            if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
                $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' "." AND bloqueado = ".NO_BLOQUEADO;
            
                $config['add_pars']['search_key'] = $search_key;
                $config['add_pars']['search_in'] = $search_in;
                $data['buscar'] = $search_key;
            }
            else
            {
                $data['buscar']='';
            }
            
            ###################################################
            #	Ordenamiento
            ###################################################
            $col = (isset($_GET['col']) ? $_GET['col'] : null);
            $dir = (isset($_GET['dir']) ? $_GET['dir'] : null);
            if (!is_null($col) && !is_null($dir)) {
                $order = " $col $dir ";
            
                $config['add_pars']['col'] = $col;
                $config['add_pars']['dir'] = $dir;
            } else {
                $order = " `creado` DESC ";
            }
            
            ###################################################
            #	Consulta principal
            ###################################################
            if (!isset($where)) {
                $where = 'bloqueado = '.NO_BLOQUEADO;
            }
            
            $count = $this->biblioteca_model->get_count($where, $order);
            
            ###################################################
            #	Pagination
            ###################################################
            $this->load->library('page');
            $cur_page = (isset($_GET['page']) ? $_GET['page'] : null);
            
            if (!is_numeric($cur_page) && $cur_page != 'all') {
                $cur_page = 1;
            }
            
            $config['rows_per_page'] = FILAS_INTRANET;
            $config['page_limit'] = NUMERO_ITEMS_PAGINACION;
            $config['base_url'] = base_url('index.php') . '/intranet/biblioteca/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'bibliotecas';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['bibliotecas'] = $this->biblioteca_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $data['titulo'] = $this->lang->line('score_bibliotecas');
           $this->load->view('intranet/bibliotecas',$data);
    	}

        public function nuevo()
        {
             if($this->session->flashdata('mensaje'))
             {
                $data['mensaje'] = $this->session->flashdata('mensaje');
             } 
             elseif ($this->session->flashdata('error'))
             {
                
                $data['error'] = $this->session->flashdata('error');
             }
            
            $data['titulo'] = $this->lang->line('score_biblioteca_nuevo_titulo');
            $this->load->view('intranet/biblioteca_nuevo',$data);
        }
        
        public function existe($biblioteca_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECAS));
            
            if($biblioteca_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->biblioteca_model->exists('id', $biblioteca_id))
            {
                $this->editar($biblioteca_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_error_enlace').' (#'.$biblioteca_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($biblioteca_id = FALSE)
        {
            if($biblioteca_id == FALSE)
            {
                $this->nuevo();
            }
            
            if($this->session->flashdata('mensaje'))
            {
               $data['mensaje'] = $this->session->flashdata('mensaje');
            } 
            elseif ($this->session->flashdata('error'))
            {    
                $data['error'] = $this->session->flashdata('error');
            }

            $data['titulo'] = $this->lang->line('score_biblioteca_editar_titulo');
            
            $data['biblioteca']=$this->biblioteca_model->get($biblioteca_id);
                   
            $this->load->view('intranet/biblioteca_editar',$data);
        }

        public function eliminar($biblioteca_id = FALSE)
        {
            // obtenemos los datos del usuario administrador
            $usuario_sesion = get_user_session();
            
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECAS));
            if($biblioteca_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->biblioteca_model->exists('id', $biblioteca_id))
            {
                // verificamos si existen categorias en esta biblioteca
                $num_categorias = get_numero_categorias_biblioteca($biblioteca_id);
                if($num_categorias == 0)
                {
                    $data = array();
                    $data = array ('bloqueado' =>BLOQUEADO,
                                   'estado'=> DESPUBLICADO, 
                                   'modificado_por'=>$usuario_sesion->id);     
                    
                    $this->biblioteca_model->update($data, $biblioteca_id);
                    
                    // eliminamos la bilbioteca de la lista de paginas predisenadas
                    $alias = 'biblioteca/'.$biblioteca_id;
                    $pagina_predisenada = $this->pagina_predisenada_model->get_values('id', array('alias'=>$alias));
                    $this->pagina_predisenada_model->delete($pagina_predisenada->id);
                                        
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_eliminada'));                    
                }elseif($num_categorias >0)
                {
                    $mensaje = "No está permitida la acción 'Eliminar' para la biblioteca ".get_nombre_biblioteca($biblioteca_id).". ".$num_categorias." categorías están asignadas a esta biblioteca.";
                    $this->session->set_flashdata('error', $mensaje);    
                }
                                 
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_error_enlace').' (#'.$biblioteca_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECAS));
    		if(isset($_POST['guardar']))
    		{              
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $biblioteca_id = $this->input->post('biblioteca_id');
                }
                        
    			$this->form_validation->set_rules('nombre', 'Nombre', 'trim|required');              
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($biblioteca_id);
    			}
                else
                {                    
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $nombre = $this->input->post('nombre');
                    $descripcion = $this->input->post('descripcion');
                    $estado = $this->input->post('estado');
                    $guardar = $this->input->post("guardar");

                    if($guardar == NUEVO)
                    {                                            
                        $data = array();
                        $data = array ('nombre' =>$nombre,
                                       'descripcion' => $descripcion,
                                       'estado' =>$estado,
                                       'creado_por'=>$usuario_sesion->id);
                                        
                                        
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                                        
                        $biblioteca_id = $this->biblioteca_model->insert($data);
                        
                        // creamos un acceso desde paginas prediseñadas
                        $alias = 'biblioteca/'.$biblioteca_id;                        
                        
                        $data_pagina = array();
                        $data_pagina = array ('titulo' =>$nombre,
                                              'alias' => $alias,
                                              'estado'=> $estado,
                                              'metadescripcion' =>$nombre,
                                              'creado_por'=>$usuario_sesion->id);
                                        
                                        
                        if($estado == PUBLICADO)                
                            $data_pagina['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data_pagina['despublicado'] = date('Y-m-d H:i:s'); 
                        
                        $this->pagina_predisenada_model->insert($data_pagina);                           
                                                
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_guardada'));
                        
                        redirect('intranet/biblioteca/editar/'.$biblioteca_id);
                        
                    }

                    if($guardar == EDICION)
                    {
                        $data = array();
                        $data = array ('nombre' =>$nombre,
                                       'descripcion' => $descripcion,
                                       'estado' =>$estado,
                                       'modificado_por'=>$usuario_sesion->id);                                       
                                        
                                        
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                        
                        if($this->biblioteca_model->exists('id',$biblioteca_id))
                        {
                            // modificaciones en el acceso desde paginas prediseñadas   
                            $pagina_predisenada = $this->pagina_predisenada_model->get_values('id',array('alias'=>'biblioteca/'.$biblioteca_id));                         
                            $data_pagina = array();
                            $data_pagina = array ('titulo' =>$nombre,
                                                  'metadescripcion' =>$nombre,
                                                  'estado' => $estado,
                                                  'modificado_por'=>$usuario_sesion->id);
                                            
                            if($estado == PUBLICADO)                
                                $data_pagina['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data_pagina['despublicado'] = date('Y-m-d H:i:s'); 
                            
                            $this->pagina_predisenada_model->update($data_pagina, $pagina_predisenada->id);                                                        
                            
                            // actualizamos biblioteca
                            $this->biblioteca_model->update($data, $biblioteca_id);
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_guardada'));
                            redirect('intranet/biblioteca/editar/'.$biblioteca_id);
                        }
                        else
                        {
                            redirect('intranet/biblioteca/nuevo');
                        }    
                    }                                                                                 
    			}
    		}
            else
            {
                redirect(base_url($navegacion->navegacion));
            }
    	}
        
        
        public function publicar()
        {
            // obtenemos los datos del usuario administrador
            $usuario_sesion = get_user_session();
            
            $biblioteca_id = $this->input->post('id');
                      
            if($this->biblioteca_model->exists('id', $biblioteca_id))
            {
                $biblioteca = $this->biblioteca_model->get($biblioteca_id);
                if($biblioteca->estado == DESPUBLICADO)
                {
                    $data = array(
                        'estado'=> PUBLICADO,
                        'publicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id
                    );
                    $this->biblioteca_model->update($data, $biblioteca_id);
                    
                    // cambiamos el estado de las categorias pertenecientes a la biblioteca
                    /*$biblioteca_categorias = $this->biblioteca_categoria_model->get_all('id',array('biblioteca_id'=>$biblioteca_id, 'bloqueado'=>NO_BLOQUEADO));
                    foreach($biblioteca_categorias as $biblioteca_categoria):
                        $biblioteca_categoria = (object)$biblioteca_categoria;
                        $this->biblioteca_categoria_model->update($data,$biblioteca_categoria->id);                    
                    endforeach;*/
                    
                    // actualizamos el estado de la biblioteca de la lista de paginas predisenadas
                    $alias = 'biblioteca/'.$biblioteca_id;
                    if($this->pagina_predisenada_model->exists('alias',$alias))
                    {
                        $pagina_predisenada = $this->pagina_predisenada_model->get_values('id', array('alias'=>$alias));
                        $this->pagina_predisenada_model->update($data,$pagina_predisenada->id);                         
                    }                   
                    
                    $data['id'] = $biblioteca_id;
                    echo $this->load->view('intranet/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> DESPUBLICADO,
                        'despublicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id                        
                    );
                    
                    $this->biblioteca_model->update($data, $biblioteca_id);  
                    
                    // actualizamos el estado de la biblioteca de la lista de paginas predisenadas
                    $alias = 'biblioteca/'.$biblioteca_id;
                    if($this->pagina_predisenada_model->exists('alias',$alias))
                    {
                        $pagina_predisenada = $this->pagina_predisenada_model->get_values('id', array('alias'=>$alias));
                        $this->pagina_predisenada_model->update($data,$pagina_predisenada->id);                         
                    }
                                
                    $data['id'] = $biblioteca_id;
                    echo $this->load->view('intranet/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $biblioteca_id = $this->input->post('id');
            
            if(empty($biblioteca_id))
            {          
                $data['error'] = $this->lang->line('score_biblioteca_error_enlace');
                echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->biblioteca_model->exists('id', $biblioteca_id))
            {
                $biblioteca = $this->biblioteca_model->get($biblioteca_id);
                if($biblioteca->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_biblioteca_despublicada');
                    echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_biblioteca_publicada');
                    echo $this->load->view('intranet/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_biblioteca_error_enlace').' (#'.$biblioteca_id.')';
                echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);
            } 
        }        
    }