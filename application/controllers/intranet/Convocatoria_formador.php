<?php
    class Convocatoria_formador extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            existe_sesion_urse();
                        
            // modelos
            $this->load->model('intranet/convocatoria_formador_model'); 
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>CONVOCATORIA_FORMADORES)); 
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
            
            $count = $this->convocatoria_formador_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/intranet/convocatoria_formador/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'convocatorias';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['convocatorias'] = $this->convocatoria_formador_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $data['titulo'] = $this->lang->line('score_convocatoria_formadores');
           $this->load->view('intranet/convocatoria_formadores',$data);
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
            
            $data['titulo'] = $this->lang->line('score_convocatoria_formador_nuevo_titulo');
            $this->load->view('intranet/convocatoria_formador_nuevo',$data);
        }
        
        public function existe($convocatoria_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONVOCATORIA_FORMADORES));
            
            if($convocatoria_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->convocatoria_formador_model->exists('id', $convocatoria_id))
            {
                $this->editar($convocatoria_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_enlace').' (#'.$convocatoria_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($convocatoria_id = FALSE)
        {
            if($convocatoria_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_convocatoria_formador_editar_titulo');
            
            $data['convocatoria']=$this->convocatoria_formador_model->get($convocatoria_id);
                   
            $this->load->view('intranet/convocatoria_formador_editar',$data);
        }

        public function eliminar($convocatoria_id = FALSE)
        {
            // obtenemos los datos del usuario administrador
            $usuario_sesion = get_user_session();
            
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONVOCATORIA_FORMADORES));
            if($convocatoria_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->convocatoria_formador_model->exists('id', $convocatoria_id))
            {

                $data = array();
                $data = array ('bloqueado' =>BLOQUEADO,
                               'estado'=> DESPUBLICADO, 
                               'modificado_por'=>$usuario_sesion->id);     
                
                $this->convocatoria_formador_model->update($data, $convocatoria_id);
                
                // tambien bloquear todas las postulaciones que pertenecen a esta convocatoria
                
                // eliminamos la bilbioteca de la lista de paginas predisenadas                                    
                $this->session->set_flashdata('mensaje', $this->lang->line('score_convocatoria_formador_eliminada'));                    
                                                 
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_enlace').' (#'.$convocatoria_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONVOCATORIA_FORMADORES));
    		if(isset($_POST['guardar']))
    		{              
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $convocatoria_id = $this->input->post('convocatoria_id');
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
                    $this->editar($convocatoria_id);
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
                            
                        if($estado == PUBLICADO)
                        {
                            // verificamos que el estado de las convocatorias anteriores sea el de despublicado
                            $convocatorias = $this->convocatoria_formador_model->get_all('',array('bloqueado'=>NO_BLOQUEADO));
                            $existen_convocatorias_publicadas = FALSE;
                            foreach($convocatorias as $convocatoria):
                                $convocatoria = (object)$convocatoria;
                                if($convocatoria->estado == PUBLICADO)
                                    $existen_convocatorias_publicadas = TRUE;        
                            endforeach;
                            
                            if($existen_convocatorias_publicadas)
                            {
                                $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_publicado'));
                                $this->nuevo();    
                            }
                            else
                            {
                                $convocatoria_id = $this->convocatoria_formador_model->insert($data);                                                                           
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_convocatoria_formador_guardada'));                            
                                redirect('intranet/convocatoria_formador/editar/'.$convocatoria_id);                            
                            }                              
                        }
                        else
                        {
                            $convocatoria_id = $this->convocatoria_formador_model->insert($data);                                                                           
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_convocatoria_formador_guardada'));                            
                            redirect('intranet/convocatoria_formador/editar/'.$convocatoria_id);                              
                        }    

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
                        
                        if($this->convocatoria_formador_model->exists('id',$convocatoria_id))
                        {                                                                                 
                            // actualizamos la convocatoria de formadores
                            $estado_original = $this->convocatoria_formador_model->get_values('estado',array('id'=>$convocatoria_id));
                            
                            if($estado == PUBLICADO AND $estado_original->estado == DESPUBLICADO)
                            {
                                // verificamos que el estado de las convocatorias anteriores sea el de despublicado
                                $convocatorias = $this->convocatoria_formador_model->get_all('',array('bloqueado'=>NO_BLOQUEADO));
                                $existen_convocatorias_publicadas = FALSE;
                                foreach($convocatorias as $convocatoria):
                                    $convocatoria = (object)$convocatoria;
                                    if($convocatoria->estado == PUBLICADO)                                    
                                        $existen_convocatorias_publicadas = TRUE;                                         
                                               
                                endforeach;
                                
                                if($existen_convocatorias_publicadas)
                                {
                                    $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_publicado'));
                                    $this->editar($convocatoria_id);   
                                }
                                else
                                {
                                    $this->convocatoria_formador_model->update($data, $convocatoria_id);
                                    $this->session->set_flashdata('mensaje', $this->lang->line('score_convocatoria_formador_guardada'));
                                    redirect('intranet/convocatoria_formador/editar/'.$convocatoria_id);                           
                                }                              
                            }
                            else
                            {
                                $this->convocatoria_formador_model->update($data, $convocatoria_id);
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_convocatoria_formador_guardada'));
                                redirect('intranet/convocatoria_formador/editar/'.$convocatoria_id);                             
                            }                                                            
                        }
                        else
                        {
                            redirect('intranet/convocatoria_formador/nuevo');
                        }    
                    }                                                                                 
    			}
    		}
            else
            {
                redirect(base_url($navegacion->navegacion));
            }
    	}
        
        
        public function publicar($convocatoria_id = FALSE)
        {
            $usuario_sesion = get_user_session();
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONVOCATORIA_FORMADORES));
            
            if($convocatoria_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->convocatoria_formador_model->exists('id', $convocatoria_id))
            {
                $convocatoria = $this->convocatoria_formador_model->get($convocatoria_id);
                if($convocatoria->estado == DESPUBLICADO)
                {
                    $data = array(
                        'estado'=> PUBLICADO,
                        'publicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id
                    );
                    
                    // verificamos que el estado de las convocatorias anteriores sea el de despublicado
                    $convocatorias = $this->convocatoria_formador_model->get_all('',array('bloqueado'=>NO_BLOQUEADO));
                    $existen_convocatorias_publicadas = FALSE;
                    foreach($convocatorias as $convocatoria):
                        $convocatoria = (object)$convocatoria;
                        if($convocatoria->estado == PUBLICADO)
                            $existen_convocatorias_publicadas = TRUE;        
                    endforeach;
                    
                    if($existen_convocatorias_publicadas)
                    {
                        $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_publicado'));
                        redirect(base_url($navegacion->navegacion));      
                    }
                    else
                    {
                        $this->convocatoria_formador_model->update($data,$convocatoria_id);                                                                           
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_convocatoria_formador_publicada'));                            
                        redirect(base_url($navegacion->navegacion));                              
                    }  
            
                }
                else
                {
                    $data = array(
                        'estado'=> DESPUBLICADO,
                        'despublicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id                        
                    );
                    
                    $this->convocatoria_formador_model->update($data,$convocatoria_id);  
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_convocatoria_formador_despublicada'));
                    redirect(base_url($navegacion->navegacion));                 
                }                
                
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_convocatoria_formador_error_enlace').' (#'.$biblioteca_categoria_id.')');
                redirect(base_url($navegacion->navegacion));
            }         
        }
        
        public function publicar_mensaje()
        {
            $convocatoria_id = $this->input->post('id');
            
            if(empty($convocatoria_id))
            {          
                $data['error'] = $this->lang->line('score_convocatoria_formador_error_enlace');
                echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->convocatoria_formador_model->exists('id', $convocatoria_id))
            {
                $convocatoria = $this->convocatoria_formador_model->get($convocatoria_id);
                if($convocatoria->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_convocatoria_formador_despublicada');
                    echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_convocatoria_formador_publicada');
                    echo $this->load->view('intranet/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_convocatoria_formador_error_enlace').' (#'.$convocatoria_id.')';
                echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);
            } 
        }        
    }