<?php
    class Formador extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
            
            //existe_sesion_urse();
            
            // modelos
            $this->load->model('formador_model');
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>FORMADORES)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('nombres','apellidos');
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
            $count = $this->formador_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/administrador/formador/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'formadores';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['formadores'] = $this->formador_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $data['titulo'] = $this->lang->line('score_formadores');
    	   //$data['noticias'] = $this->formador_model->get_all('',array(),'','','creado desc','');
           $this->load->view('backend/formadores',$data);
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
            
            $data['titulo'] = $this->lang->line('score_formador_nuevo_titulo');
            $this->load->view('backend/formador_nuevo',$data);
        }
        
        public function existe($formador_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>FORMADORES));
            if($formador_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->formador_model->exists('id', $formador_id))
            {
                $this->editar($formador_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace').' (#'.$formador_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($formador_id = FALSE)
        {
            if($formador_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_formador_editar_titulo');
            
            $data['formador']=$this->formador_model->get($formador_id);
                   
            $this->load->view('backend/formador_editar',$data);
        }

        public function eliminar($formador_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>FORMADORES));
            if($formador_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->formador_model->exists('id', $formador_id))
            {
                $this->formador_model->delete($formador_id);
                $this->session->set_flashdata('mensaje', $this->lang->line('score_formador_eliminado'));
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace').' (#'.$formador_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>FORMADORES));
    		if(isset($_POST['guardar']))
    		{           	                
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $formador_id = $this->input->post('formador_id');
                    $fotografia = $this->input->post('fotografia');   
                    $fotografia_thumb = $this->input->post('fotografia_thumb'); 
                }
                        
                //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
    			$this->form_validation->set_rules('nombres', 'Nombres', 'trim|required');
                $this->form_validation->set_rules('apellidos', 'Apellidos', 'trim|required');
                $this->form_validation->set_rules('genero', 'Genero', 'trim|required');
                $this->form_validation->set_rules('formador', 'Tipo de Formador', 'trim|required');
                $this->form_validation->set_rules('descripcion', 'Descripción', 'trim|required');                   
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($formador_id);
    			}
                else
                {
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $nombres = $this->input->post('nombres');
                    $apellidos = $this->input->post('apellidos');
                    $genero = $this->input->post('genero');
                    $formador = $this->input->post('formador');
                    $descripcion = $this->input->post('descripcion');
                    $estado = $this->input->post('estado');
                    $guardar = $this->input->post("guardar");
                    
                    /*********************************************************************/
                    // upload fotografia
                    /*********************************************************************/
                    $sw = 1;
                    if (!empty($_FILES['fotografia']['name']))
                    {
                        $this->load->library('upload');
                        $config['upload_path'] = './assets/img/formadores';
                        $config['allowed_types'] = 'gif|jpg|png|jpeg';    
                        $config['max_size'] = 128; 
                        $config['encrypt_name'] = FALSE;
            
                        $this->upload->initialize($config);
            
                        if (!$this->upload->do_upload('fotografia'))
                        {
                            $sw = 0;
                            
                            $this->session->set_flashdata('error',$this->upload->display_errors());     
                            
                            if($guardar == NUEVO)
                            $this->nuevo();
                            if($guardar == EDICION)
                            $this->editar($formador_id);
    
                        }
                        else
                        {
                            $data = $this->upload->data();
                            $fotografia = $data['file_name'];
                            // thumb
                            $source_path = './assets/img/formadores/' . $fotografia;
                            $target_path = './assets/img/formadores/' . 'thumb/';
                            $config_thumb = array(
                                'image_library' => 'gd2',
                                'source_image' => $source_path,
                                'new_image' => $target_path,
                                'maintain_ratio' => TRUE,
                                'create_thumb' => TRUE,
                                'thumb_marker' => '_thumb',
                                'width' => 200,
                                'height' => 0
                            );
                            $this->load->library('image_lib', $config_thumb);
                            if (!$this->image_lib->resize())
                            {
                                $this->session->set_flashdata('error',$this->image_lib->display_errors()); 
                                if($guardar == NUEVO)
                                    $this->nuevo();
                                if($guardar == EDICION)
                                    $this->editar($formador_id);
                            }
                            else
                            {
                                $fotografia_thumb = $data['raw_name'].'_thumb'.$data['file_ext'];
                            }
                            $this->image_lib->clear();
                            // fin thumb                             
                        }
                    }
                    if($sw == 1)
                    {
                        if($guardar == NUEVO)
                        {             
                            if(!isset($fotografia))
                            {
                                $fotografia ='';
                                $fotografia_thumb = '';
                            }
                            
                            $data = array();
                            $data = array ('nombres' =>$nombres,
                                            'apellidos' => $apellidos,
                                            'genero' =>$genero,
                                            'formador' => $formador,
                                            'descripcion' => $descripcion,
                                            'fotografia' => $fotografia,
                                            'thumb' => $fotografia_thumb,
                                            'estado' =>$estado,
                                            'creado_por'=>$usuario_sesion->id);
                                                                                        
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                                            
                            $formador_id = $this->formador_model->insert($data);
                            
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_formador_guardado'));
                            
                            redirect('administrador/formador/editar/'.$formador_id);
                            //$this->editar($formador_id);
                            
                        }
    
                        if($guardar == EDICION)
                        {
                            $data = array();
                            $data = array ('nombres' =>$nombres,
                                            'apellidos' => $apellidos,
                                            'genero' =>$genero,
                                            'formador' => $formador,
                                            'descripcion' => $descripcion,
                                            'fotografia' => $fotografia,
                                            'thumb' => $fotografia_thumb,
                                            'estado' =>$estado,
                                            'modificado_por'=>$usuario_sesion->id);
                                            
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                            
                            if($this->formador_model->exists('id',$formador_id))
                            {
                                $this->formador_model->update($data, $formador_id);
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_formador_guardado'));
                                redirect('administrador/formador/editar/'.$formador_id);
                                //$this->editar($formador_id);
                            }
                            else
                            {
                                redirect('administrador/formador/nuevo');
                            }    
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
            $formador_id = $this->input->post('id');
                      
            if($this->formador_model->exists('id', $formador_id))
            {
                $formador = $this->formador_model->get($formador_id);
                if($formador->estado == DESPUBLICADO)
                {
                    $data = array(
                        'estado'=> PUBLICADO
                    );
                    
                    $this->formador_model->update($data, $formador_id);
                    
                    $data['id'] = $formador_id;
                    echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> DESPUBLICADO
                    );
                    
                    $this->formador_model->update($data, $formador_id);  

                    $data['id'] = $formador_id;
                    echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $formador_id = $this->input->post('id');
            
            if(empty($formador_id))
            {          
                $data['error'] = $this->lang->line('score_formador_error_enlace');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->formador_model->exists('id', $formador_id))
            {
                $formador = $this->formador_model->get($formador_id);
                if($formador->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_formador_despublicado');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_formador_publicado');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_formador_error_enlace').' (#'.$formador_id.')';
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
            } 
        }
        
    }