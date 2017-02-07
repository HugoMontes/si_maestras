<?php
    class Slide extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            //existe_sesion_urse();
                        
            // modelos
            $this->load->model('slide_model');
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>SLIDES)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('contenido');
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
                $order = " `creado` ASC ";
            }
            
            ###################################################
            #	Consulta principal
            ###################################################
            if (!isset($where)) {
                $where = '';
            }
            $count = $this->slide_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/administrador/slide/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'slides';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['slides'] = $this->slide_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $data['titulo'] = $this->lang->line('score_slides');
           $this->load->view('backend/slides',$data);
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
            
            $data['titulo'] = $this->lang->line('score_slide_nuevo_titulo');
            $this->load->view('backend/slide_nuevo',$data);
        }
        
        public function existe($slide_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>SLIDES));
            
            if($slide_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_slide_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->slide_model->exists('id', $slide_id))
            {
                $this->editar($slide_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_slide_error_enlace').' (#'.$slide_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($slide_id = FALSE)
        {
            if($slide_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_slide_editar_titulo');
            
            $data['slide']=$this->slide_model->get($slide_id);
                   
            $this->load->view('backend/slide_editar',$data);
        }

        public function eliminar($slide_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>SLIDES));
            if($slide_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_slide_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->slide_model->exists('id', $slide_id))
            {
                $this->slide_model->delete($slide_id);
                $this->session->set_flashdata('mensaje', $this->lang->line('score_slide_eliminado'));
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_slide_error_enlace').' (#'.$slide_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>SLIDES));
    		if(isset($_POST['guardar']))
    		{              
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $slide_id = $this->input->post('slide_id');
                    $imagen = $this->input->post('imagen');   
                    $imagen_thumb = $this->input->post('imagen_thumb');
                }
                if($guardar == NUEVO)
                {
                    if (empty($_FILES['imagen']['name']))
                    $this->form_validation->set_rules('imagen', 'Imagen destacada', 'required');
                }

                $this->form_validation->set_rules('contenido', 'Contenido', 'trim|required');    
                $this->form_validation->set_rules('url_video', 'Url de video', 'trim|valid_url_format');                
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($slide_id);
    			}
                else
                {                    
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $contenido = $this->input->post('contenido');
                    $url_video = $this->input->post('url_video');
                    $estado = $this->input->post('estado');
                    $guardar = $this->input->post("guardar");
                    
                    /*********************************************************************/
                    // upload imagen
                    /*********************************************************************/
                    $sw = 1;
                    if (!empty($_FILES['imagen']['name']))
                    {
                        $this->load->library('upload');
                        $config['upload_path'] = './assets/img/slides';
                        $config['allowed_types'] = 'gif|jpg|png|jpeg';    
                        $config['max_size'] = 2048; 
                        $config['encrypt_name'] = FALSE;
            
                        $this->upload->initialize($config);
            
                        if (!$this->upload->do_upload('imagen'))
                        {
                            $sw = 0;
                            
                            $this->session->set_flashdata('error',$this->upload->display_errors());     
                            
                            if($guardar == NUEVO)
                            $this->nuevo();
                            if($guardar == EDICION)
                            $this->editar($slide_id);
    
                        }
                        else
                        {
                            $data = $this->upload->data();
                            $imagen = $data['file_name'];
                            
                            // redimensionamos la imagen original
                            $config_resize["source_image"] = './assets/img/slides/' . $imagen;
                            $config_resize['new_image'] = './assets/img/slides/' . $imagen;
                            //$config_resize['overwrite'] = TRUE;
                            $config_resize["width"] = 1600;
                            $config_resize["height"] = 700;
                            $this->load->library('image_lib', $config_resize);
                            $this->image_lib->fit();
                            $this->image_lib->clear();
                                                                                    
                            // thumb
                            $source_path = './assets/img/slides/' . $imagen;
                            $target_path = './assets/img/slides/' . 'thumb/';
                            $config_thumb = array(
                                'image_library' => 'gd2',
                                'source_image' => $source_path,
                                'new_image' => $target_path,
                                'maintain_ratio' => TRUE,
                                'create_thumb' => TRUE,
                                'thumb_marker' => '_thumb',
                                'width' => 160,
                                'height' => 70
                            );

                            $this->image_lib->initialize($config_thumb);
                            //if (!$this->image_lib->resize())
                            if(!$this->image_lib->fit())
                            {
                                $this->session->set_flashdata('error',$this->image_lib->display_errors()); 
                                if($guardar == NUEVO)
                                    $this->nuevo();
                                if($guardar == EDICION)
                                    $this->editar($usuario_id);
                            }
                            else
                            {
                                $imagen_thumb = $data['raw_name'].'_thumb'.$data['file_ext'];
                            }
                            $this->image_lib->clear();
                            // fin thumb  
                        }
                       
                    }
                    if($sw == 1)
                    {
                        if($guardar == NUEVO)
                        {                                            
                            $data = array();
                            $data = array ( 'contenido' =>$contenido,
                                            'url_video' => $url_video,
                                            'imagen' => $imagen,
                                            'thumb' => $imagen_thumb,
                                            'estado' =>$estado,
                                            'creado_por'=>$usuario_sesion->id);
                                            
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                                            
                            $slide_id = $this->slide_model->insert($data);
                            
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_slide_guardado'));
                            
                            redirect('administrador/slide/editar/'.$slide_id);
                            
                        }
    
                        if($guardar == EDICION)
                        {
                            $data = array();
                            $data = array ( 'contenido' =>$contenido,
                                            'url_video' => $url_video,
                                            'imagen' => $imagen,
                                            'thumb' => $imagen_thumb,
                                            'estado' =>$estado,
                                            'modificado_por'=>$usuario_sesion->id);
                                            
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                            
                            if($this->slide_model->exists('id',$slide_id))
                            {
                                $this->slide_model->update($data, $slide_id);
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_slide_guardado'));
                                redirect('administrador/slide/editar/'.$slide_id);
                            }
                            else
                            {
                                redirect('administrador/slide/nuevo');
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
            $slide_id = $this->input->post('id');
                      
            if($this->slide_model->exists('id', $slide_id))
            {
                $slide = $this->slide_model->get($slide_id);
                if($slide->estado == 0)
                {
                    $data = array(
                        'estado'=> 1
                    );
                    
                    $this->slide_model->update($data, $slide_id);
                    
                    $data['id'] = $slide_id;
                    echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> 0
                    );
                    
                    $this->slide_model->update($data, $slide_id);  

                    $data['id'] = $slide_id;
                    echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $slide_id = $this->input->post('id');
            
            if(empty($slide_id))
            {          
                $data['error'] = $this->lang->line('score_slide_error_enlace');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->slide_model->exists('id', $slide_id))
            {
                $slide = $this->slide_model->get($slide_id);
                if($slide->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_slide_despublicado');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_slide_publicado');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_slide_error_enlace').' (#'.$slide_id.')';
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
            } 
        }
        
    }