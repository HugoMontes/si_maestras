<?php

    class Pagina extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
 
            //existe_sesion_urse();
                        
            // modelos
            $this->load->model('pagina_model');
            $this->load->model('navegacion_model');
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>PAGINAS)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('titulo','estado');
            if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
                $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            
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
                $where = '';
            }
            $count = $this->pagina_model->get_count($where, $order);
            
            ###################################################
            #	Pagination
            ###################################################
            $this->load->library('page');
            $cur_page = (isset($_GET['page']) ? $_GET['page'] : null);
            
            if (!is_numeric($cur_page) && $cur_page != 'all') {
                $cur_page = 1;
            }
            
            $config['rows_per_page'] = FILAS;
            $config['page_limit'] = NUMERO_ITEMS_PAGINACION;
            $config['base_url'] = base_url('index.php') . '/administrador/pagina/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'páginas';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['paginas'] = $this->pagina_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  
           
    	   $data['titulo'] = $this->lang->line('score_paginas');
    	   //$data['paginas'] = $this->pagina_model->get_all();
           $this->load->view('backend/paginas',$data);
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
            
            $data['titulo'] = $this->lang->line('score_pagina_nuevo_titulo');
            $this->load->view('backend/pagina_nuevo',$data);
        }
        
        public function existe($pagina_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>PAGINAS));
            if($pagina_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_pagina_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->pagina_model->exists('id', $pagina_id))
            {
                $this->editar($pagina_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_pagina_error_enlace').' (#'.$pagina_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($pagina_id = FALSE)
        {
            if($pagina_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_pagina_editar_titulo');
            
            $data['pagina']=$this->pagina_model->get($pagina_id);
                   
            $this->load->view('backend/pagina_editar',$data);
        }

        public function eliminar($pagina_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>PAGINAS));
            if($pagina_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_pagina_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->pagina_model->exists('id', $pagina_id))
            {
                $this->pagina_model->delete($pagina_id);
                $this->session->set_flashdata('mensaje', $this->lang->line('score_pagina_eliminada'));
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_pagina_error_enlace').' (#'.$pagina_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>PAGINAS));
    		if(isset($_POST['guardar']))
    		{
                //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
    			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required');     
                $this->form_validation->set_rules('contenido', 'Contenido', 'trim|required');

    			$this->form_validation->set_message('required', 'Falta el campo %s');

                $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                    $pagina_id = $this->input->post('pagina_id');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($pagina_id);
    			}
                else
                {
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                    
                    $titulo = $this->input->post('titulo');
                    $estado = $this->input->post('estado');
                    $contenido = $this->input->post('contenido');
                    $guardar = $this->input->post("guardar");
                    // seo
                    $alias = trim($this->input->post('alias'));
                    $metadescripcion = trim($this->input->post('metadescripcion'));
                    $metapalabras_clave = trim($this->input->post('metapalabras_clave'));
                    
                    if($guardar == NUEVO)
                    {                        
                        if(!empty($alias))
                        {
                            if($this->pagina_model->exists('alias',$alias))                        
                                $alias = $alias.'-'.$this->pagina_model->get_next_id();                        
                        }
                        else
                        {
                            $alias = convert_accented_characters(url_title($titulo, 'dash', TRUE));
                            if($this->pagina_model->exists('alias',$alias))                        
                                $alias = $alias.'-'.$this->pagina_model->get_next_id();                    
                        }                        
                        
                        $data = array();
                        $data = array ('titulo' =>$titulo,
                                        'contenido' =>$contenido,
                                        'estado' =>$estado,
                                        'creado_por'=>$usuario_sesion->id,
                                        'alias'=>$alias,
                                        'metadescripcion'=>$metadescripcion,
                                        'metapalabras_clave'=>$metapalabras_clave);
                                        
                                        
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                                        
                        $pagina_id = $this->pagina_model->insert($data);
                        
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_pagina_guardada'));
                        
                        redirect('administrador/pagina/editar/'.$pagina_id);
                        
                    }

                    if($guardar == EDICION)
                    {                  
                        $data = array();
                        $data = array ('titulo' =>$titulo,
                                        'contenido' =>$contenido,
                                        'estado' =>$estado,
                                        'modificado_por'=>$usuario_sesion->id,
                                        'metadescripcion'=>$metadescripcion,
                                        'metapalabras_clave'=>$metapalabras_clave);
                                          
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                        
                        if($this->pagina_model->exists('id',$pagina_id))
                        {                        
                            if(!empty($alias))
                            {   
                                $pagina = $this->pagina_model->get_values('alias',array('id'=>$pagina_id));
                                if($pagina->alias != $alias)
                                {
                                    if($this->pagina_model->exists('alias',$alias))                        
                                        $alias = $alias.'-'.$pagina_id;                                
                                }
                            }
                            else
                            {
                                $alias = convert_accented_characters(url_title($titulo, 'dash', TRUE));
                                if($this->pagina_model->exists('alias',$alias))                        
                                    $alias = $alias.'-'.$pagina_id;                    
                            }  
                            
                            $data['alias'] = $alias;                                                          
                            $this->pagina_model->update($data, $pagina_id);
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_pagina_guardada'));
                            redirect('administrador/pagina/editar/'.$pagina_id);
                        }
                        else
                        {
                            redirect('administrador/pagina/nuevo');
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
            $pagina_id = $this->input->post('id');
                      
            if($this->pagina_model->exists('id', $pagina_id))
            {
                $pagina = $this->pagina_model->get($pagina_id);
                if($pagina->estado == 0)
                {
                    $data = array(
                        'estado'=> 1
                    );
                    
                    $this->pagina_model->update($data, $pagina_id);
                    
                    $data['id'] = $pagina_id;
                    echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> 0
                    );
                    
                    $this->pagina_model->update($data, $pagina_id);  

                    $data['id'] = $pagina_id;
                    echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $pagina_id = $this->input->post('id');
            
            if(empty($pagina_id))
            {          
                $data['error'] = $this->lang->line('score_pagina_error_enlace');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->pagina_model->exists('id', $pagina_id))
            {
                $pagina = $this->pagina_model->get($pagina_id);
                if($pagina->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_pagina_despublicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_pagina_publicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_pagina_error_enlace').' (#'.$pagina_id.')';
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
            } 
        }
    }