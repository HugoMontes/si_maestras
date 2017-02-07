<?php
    class Publicacion extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            //existe_sesion_urse();
                        
            // modelos
            $this->load->model('publicacion_model');
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>PUBLICACIONES)); 
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
            $count = $this->publicacion_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/administrador/publicacion/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'publicaciones';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['publicaciones'] = $this->publicacion_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $data['titulo'] = $this->lang->line('score_publicaciones');
           $this->load->view('backend/publicaciones',$data);
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
            
            $data['titulo'] = $this->lang->line('score_publicacion_nuevo_titulo');
            $this->load->view('backend/publicacion_nuevo',$data);
        }
        
        public function existe($publicacion_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>PUBLICACIONES));
            
            if($publicacion_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_publicacion_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->publicacion_model->exists('id', $publicacion_id))
            {
                $this->editar($publicacion_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_publicacion_error_enlace').' (#'.$publicacion_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($publicacion_id = FALSE)
        {
            if($publicacion_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_publicacion_editar_titulo');
            
            $data['publicacion']=$this->publicacion_model->get($publicacion_id);
                   
            $this->load->view('backend/publicacion_editar',$data);
        }

        public function eliminar($publicacion_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>PUBLICACIONES));
            if($publicacion_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_publicacion_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->publicacion_model->exists('id', $publicacion_id))
            {
                $this->publicacion_model->delete($publicacion_id);
                $this->session->set_flashdata('mensaje', $this->lang->line('score_publicacion_eliminada'));
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_publicacion_error_enlace').' (#'.$publicacion_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>PUBLICACIONES));
    		if(isset($_POST['guardar']))
    		{              
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $publicacion_id = $this->input->post('publicacion_id');
                    $imagen = $this->input->post('imagen');   
                    $imagen_thumb = $this->input->post('imagen_thumb');
                }
                if($guardar == NUEVO)
                {
                    if (empty($_FILES['imagen']['name']))
                    $this->form_validation->set_rules('imagen', 'Imagen de portada', 'required');
                }
                        
                //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
    			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
                $this->form_validation->set_rules('resumen', 'Resumen', 'trim|required');
                $this->form_validation->set_rules('contenido', 'Contenido', 'trim|required');  
                $this->form_validation->set_rules('fuente', 'Fuente', 'trim|required');     
                $this->form_validation->set_rules('fecha_publicacion', 'Fecha de la publicación', 'trim|required|check_date_format');                    
                $this->form_validation->set_rules('url_descarga', 'Url de descarga', 'trim|valid_url_format');                
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($publicacion_id);
    			}
                else
                {                    
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $titulo = $this->input->post('titulo');
                    $resumen = $this->input->post('resumen');
                    $contenido = $this->input->post('contenido');
                    $fuente = $this->input->post('fuente');
                    $fecha_publicacion = date('Y/m/d',strtotime($this->input->post('fecha_publicacion')));
                    $url_descarga = $this->input->post('url_descarga');
                    $estado = $this->input->post('estado');
                    $guardar = $this->input->post("guardar");
                    
                    /*********************************************************************/
                    // upload imagen
                    /*********************************************************************/
                    $sw = 1;
                    if (!empty($_FILES['imagen']['name']))
                    {
                        $this->load->library('upload');
                        $config['upload_path'] = './assets/img/publicaciones';
                        $config['allowed_types'] = 'gif|jpg|png|jpeg';    
                        $config['max_size'] = 128; 
                        $config['encrypt_name'] = FALSE;
            
                        $this->upload->initialize($config);
            
                        if (!$this->upload->do_upload('imagen'))
                        {
                            $sw = 0;
                            
                            $this->session->set_flashdata('error',$this->upload->display_errors());     
                            
                            if($guardar == NUEVO)
                            $this->nuevo();
                            if($guardar == EDICION)
                            $this->editar($publicacion_id);
    
                        }
                        else
                        {
                            $data = $this->upload->data();
                            $imagen = $data['file_name'];
                            
                            // thumb
                            $source_path = './assets/img/publicaciones/' . $imagen;
                            $target_path = './assets/img/publicaciones/' . 'thumb/';
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
                                    $this->editar($publicacion_id);
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
                            $data = array ('titulo' =>$titulo,
                                            'resumen' => $resumen,
                                            'contenido'=> $contenido,
                                            'fuente'=> $fuente,
                                            'fecha_publicacion'=>$fecha_publicacion,
                                            'url_descarga' => $url_descarga,
                                            'imagen' => $imagen,
                                            'thumb' => $imagen_thumb,
                                            'estado' =>$estado,
                                            'creado_por'=>$usuario_sesion->id);
                                            
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                                            
                            $publicacion_id = $this->publicacion_model->insert($data);
                            
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_publicacion_guardada'));
                            
                            redirect('administrador/publicacion/editar/'.$publicacion_id);
                            
                        }
    
                        if($guardar == EDICION)
                        {
                            $data = array();
                            $data = array ('titulo' =>$titulo,
                                            'resumen' => $resumen,
                                            'contenido'=> $contenido,
                                            'fuente'=> $fuente,                                            
                                            'fecha_publicacion'=>$fecha_publicacion,
                                            'url_descarga' => $url_descarga,
                                            'imagen' => $imagen,
                                            'thumb' => $imagen_thumb,
                                            'estado' =>$estado,
                                            'modificado_por'=>$usuario_sesion->id);
                                            
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                            
                            if($this->publicacion_model->exists('id',$publicacion_id))
                            {
                                $this->publicacion_model->update($data, $publicacion_id);
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_publicacion_guardada'));
                                redirect('administrador/publicacion/editar/'.$publicacion_id);
                            }
                            else
                            {
                                redirect('administrador/publicacion/nuevo');
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
            $publicacion_id = $this->input->post('id');
                      
            if($this->publicacion_model->exists('id', $publicacion_id))
            {
                $publicacion = $this->publicacion_model->get($publicacion_id);
                if($publicacion->estado == 0)
                {
                    $data = array(
                        'estado'=> 1
                    );
                    
                    $this->publicacion_model->update($data, $publicacion_id);
                    
                    $data['id'] = $publicacion_id;
                    echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> 0
                    );
                    
                    $this->publicacion_model->update($data, $publicacion_id);  

                    $data['id'] = $publicacion_id;
                    echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $publicacion_id = $this->input->post('id');
            
            if(empty($publicacion_id))
            {          
                $data['error'] = $this->lang->line('score_publicacion_error_enlace');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->publicacion_model->exists('id', $publicacion_id))
            {
                $publicacion = $this->publicacion_model->get($publicacion_id);
                if($publicacion->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_publicacion_despublicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_publicacion_publicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_publicacion_error_enlace').' (#'.$publicacion_id.')';
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
            } 
        }
        
    }