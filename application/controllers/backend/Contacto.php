<?php
    class Contacto extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            //existe_sesion_urse();
                        
            // modelos
            $this->load->model('contacto_model');
            $this->load->model('contacto_respuesta_model');
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>CONTACTOS)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('nombre','email');
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
            $count = $this->contacto_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/administrador/contacto/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'contactos';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['contactos'] = $this->contacto_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $data['titulo'] = $this->lang->line('score_contactos');
    	   //$data['noticias'] = $this->contacto_model->get_all('',array(),'','','creado desc','');
           $this->load->view('backend/contactos',$data);
    	}

        
        public function existe($contacto_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS));
            
            if($contacto_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_contacto_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->contacto_model->exists('id', $contacto_id))
            {
                $this->editar($contacto_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_contacto_error_enlace').' (#'.$contacto_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($contacto_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS));
            
            if($contacto_id == FALSE)
            {
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->session->flashdata('mensaje'))
            {
               $data['mensaje'] = $this->session->flashdata('mensaje');
            } 
            elseif ($this->session->flashdata('error'))
            {    
                $data['error'] = $this->session->flashdata('error');
            }

            $data['titulo'] = $this->lang->line('score_contacto_editar_titulo');
            
            $data['contacto']=$this->contacto_model->get($contacto_id);
                   
            $this->load->view('backend/contacto_editar',$data);
        }

        public function eliminar($contacto_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS));
            if($contacto_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_contacto_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->contacto_model->exists('id', $contacto_id))
            {
                $this->contacto_model->delete($contacto_id);
                // tambien eliminamos las respuestas para dicho contacto
                $contacto_respuestas = $this->contacto_respuesta_model->get_all('id',array('contacto_id'=>$contacto_id),'','','','');
                foreach($contacto_respuestas as $contacto_respuesta)
                {
                    $contacto_respuesta = (object) $contacto_respuesta;
                    $this->contacto_respuesta_model->delete($contacto_respuesta->id);
                }
                
                $this->session->set_flashdata('mensaje', $this->lang->line('score_contacto_eliminado'));
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_contacto_error_enlace').' (#'.$contacto_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        } 
        
        
        public function responder($contacto_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS));
            
            if($contacto_id == FALSE)
            {
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->contacto_model->exists('id', $contacto_id))
            {
                if($this->session->flashdata('mensaje'))
                {
                   $data['mensaje'] = $this->session->flashdata('mensaje');
                } 
                elseif ($this->session->flashdata('error'))
                {    
                    $data['error'] = $this->session->flashdata('error');
                }
    
                $data['titulo'] = $this->lang->line('score_contacto_responder_titulo');
                $data['contacto_respuestas'] = $this->contacto_respuesta_model->get_all('',array('contacto_id'=>$contacto_id),'','','creado DESC','');
                $data['contacto']=$this->contacto_model->get($contacto_id);
                       
                $this->load->view('backend/contacto_responder',$data);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_contacto_error_enlace').' (#'.$contacto_id.')');
                redirect(base_url($navegacion->navegacion));
            }         
        }
        
        
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS));
    		if(isset($_POST['guardar']) AND $_POST['guardar'] == EDICION)
    		{              
    		    $guardar = $this->input->post("guardar");
                $contacto_id = $this->input->post('contacto_id');

                //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
    			$this->form_validation->set_rules('nombre', 'Nombre', 'trim|required');
                $this->form_validation->set_rules('email', 'Correo electrónico', 'trim|required|valid_email');
                $this->form_validation->set_rules('mensaje', 'Mensaje', 'trim|required');      

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
                  $this->session->set_flashdata('error', validation_errors());
                  $this->editar($contacto_id);
    			}
                else
                {                    
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $nombre = $this->input->post('nombre');
                    $email = $this->input->post('email');
                    $mensaje = $this->input->post('mensaje');

                    $data = array();
                    $data = array ('nombre' =>$nombre,
                                    'email' => $email,
                                    'mensaje' =>$mensaje,
                                    'modificado_por'=>$usuario_sesion->id);
                    
                    if($this->contacto_model->exists('id',$contacto_id))
                    {
                        $this->contacto_model->update($data, $contacto_id);
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_contacto_guardado'));
                        redirect('administrador/contacto/editar/'.$contacto_id);
                    }
                    else
                    {
                        redirect(base_url($navegacion->navegacion));
                    }                            
                }                                      	
    		}
            else
            {
                redirect(base_url($navegacion->navegacion));
            }
    	}
        

        public function enviar_respuesta()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS));
    		if(isset($_POST['guardar']) AND $_POST['guardar'] == RESPUESTA)
    		{              
                $contacto_id = $this->input->post('contacto_id');
   
    			$this->form_validation->set_rules('respuesta', 'Mensaje', 'trim|required');  
                $this->form_validation->set_rules('asunto', 'Asunto', 'trim|required'); 
                $this->form_validation->set_rules('email_destino', 'Correo electrónico de destino', 'trim|required|valid_email');  
            
    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
                  $this->session->set_flashdata('error', validation_errors());
                  $this->responder($contacto_id);
    			}
                else
                {                                        
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                 
                    $respuesta = $this->input->post('respuesta');
                    $asunto = $this->input->post('asunto');
                    $email_destino = $this->input->post('email_destino');
                    
                    // enviamos el email de respuesta
                    if(!enviar_email($respuesta,$asunto,$email_destino))
                    {
                        $this->session->set_flashdata('error', $this->lang->line('score_contacto_error_email'));
                        redirect('administrador/contacto/responder/'.$contacto_id);                        
                    }                  
                    else    
                    {                        
                        $data = array();
                        $data = array ('respuesta' =>$respuesta,
                                        'contacto_id' =>$contacto_id,
                                        'creado_por'=>$usuario_sesion->id,
                                        'enviado'=>date('Y-m-d H:i:s'));
                                    
                        $this->contacto_respuesta_model->insert($data); 
                        $this->contacto_model->update(array('respondido'=>RESPUESTA_ENVIADA),$contacto_id); 
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_contacto_respuesta_enviada'));
                        redirect('administrador/contacto/responder/'.$contacto_id);
                    }                           
                }                                      	
    		}
            else
            {
                redirect(base_url($navegacion->navegacion));
            }
    	}        
        
    }