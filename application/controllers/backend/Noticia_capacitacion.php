<?php
    class Noticia_capacitacion extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            //existe_sesion_urse();
                        
            // modelos
            $this->load->model('noticia_capacitacion_model');
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>NOTICIAS_CAPACITACION)); 
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
            $count = $this->noticia_capacitacion_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/administrador/noticia_capacitacion/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'noticias';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['noticias'] = $this->noticia_capacitacion_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $data['titulo'] = $this->lang->line('score_noticias_capacitacion');
    	   //$data['noticias'] = $this->noticia_capacitacion_model->get_all('',array(),'','','creado desc','');
           $this->load->view('backend/noticias_capacitacion',$data);
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
            
            $data['titulo'] = $this->lang->line('score_noticia_nuevo_titulo');
            $this->load->view('backend/noticia_capacitacion_nuevo',$data);
        }
        
        public function existe($noticia_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>NOTICIAS_CAPACITACION));
            
            if($noticia_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_noticia_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->noticia_capacitacion_model->exists('id', $noticia_id))
            {
                $this->editar($noticia_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_noticia_error_enlace').' (#'.$noticia_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($noticia_id = FALSE)
        {
            if($noticia_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_noticia_editar_titulo');
            
            $data['noticia']=$this->noticia_capacitacion_model->get($noticia_id);
                   
            $this->load->view('backend/noticia_capacitacion_editar',$data);
        }

        public function eliminar($noticia_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>NOTICIAS_CAPACITACION));
            if($noticia_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_noticia_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->noticia_capacitacion_model->exists('id', $noticia_id))
            {
                $this->noticia_capacitacion_model->delete($noticia_id);
                $this->session->set_flashdata('mensaje', $this->lang->line('score_noticia_eliminada'));
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_noticia_error_enlace').' (#'.$noticia_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>NOTICIAS_CAPACITACION));
    		if(isset($_POST['guardar']))
    		{              
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $noticia_id = $this->input->post('noticia_id');
                    $imagen = $this->input->post('imagen');   
                    $imagen_thumb = $this->input->post('imagen_thumb');
                }
                /*
                if($guardar == NUEVO)
                {
                    if (empty($_FILES['imagen']['name']))
                    $this->form_validation->set_rules('imagen', 'Imagen destacada', 'required');
                }
                */      
                //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
    			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
                $this->form_validation->set_rules('resumen', 'Resumen', 'trim|required');
                $this->form_validation->set_rules('contenido', 'Contenido', 'trim|required');    
                $this->form_validation->set_rules('urlvideo', 'Url de video', 'trim|valid_url_format|url_exists');
                $this->form_validation->set_rules('url', 'Url externa', 'trim|valid_url_format|url_exists');                
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($noticia_id);
    			}
                else
                {                    
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $titulo = $this->input->post('titulo');
                    $resumen = $this->input->post('resumen');
                    $contenido = $this->input->post('contenido');
                    $url_video = $this->input->post('urlvideo');
                    $url_audio = $this->input->post('urlaudio');
                    $url = $this->input->post('url');
                    $fuente = trim($this->input->post('fuente'));
                    $estado = $this->input->post('estado');
                    $guardar = $this->input->post("guardar");

                    if(isset($url_video) && $url_video!=''){
                        $tipo_contenido='video';
                    }else if(isset($url_audio) && $url_audio!=''){
                        $tipo_contenido="audio";
                    }else{
                        $tipo_contenido="texto";
                    }
                    
                    /*********************************************************************/
                    // upload imagen
                    /*********************************************************************/
                    $sw = 1;
                    if (!empty($_FILES['imagen']['name']))
                    {
                        $this->load->library('upload');
                        $config['upload_path'] = './assets/img/noticias';
                        $config['allowed_types'] = 'gif|jpg|png|jpeg';    
                        $config['max_size'] = 200; 
                        $config['encrypt_name'] = FALSE;
            
                        $this->upload->initialize($config);
            
                        if (!$this->upload->do_upload('imagen'))
                        {
                            $sw = 0;
                            
                            $this->session->set_flashdata('error',$this->upload->display_errors());     
                            
                            if($guardar == NUEVO)
                            $this->nuevo();
                            if($guardar == EDICION)
                            $this->editar($noticia_id);
    
                        }
                        else
                        {
                            $data = $this->upload->data();
                            $imagen = $data['file_name'];
                            
                            // thumb
                            $source_path = './assets/img/noticias/' . $imagen;
                            $target_path = './assets/img/noticias/' . 'thumb/';
                            $config_thumb = array(
                                'image_library' => 'gd2',
                                'source_image' => $source_path,
                                'new_image' => $target_path,
                                'maintain_ratio' => TRUE,
                                'create_thumb' => TRUE,
                                'thumb_marker' => '_thumb',
                                'width' => 370,
                                'height' => 0
                            );
                            $this->load->library('image_lib', $config_thumb);
                            if (!$this->image_lib->resize())
                            {
                                $this->session->set_flashdata('error',$this->image_lib->display_errors()); 
                                if($guardar == NUEVO)
                                    $this->nuevo();
                                if($guardar == EDICION)
                                    $this->editar($noticia_id);
                            }
                            else
                            {
                                $imagen_thumb = $data['raw_name'].'_thumb'.$data['file_ext'];
                            }
                            $this->image_lib->clear();
                            // fin thumb                            
                        }
                       
                    }else{
                        switch($tipo_contenido){
                            case('video'):
                                $video_id=substr($url_video,strpos($url_video,'?v=')+3);
                                $imagen="https://img.youtube.com/vi/".$video_id."/0.jpg";
                                $imagen_thumb="noticia_default_thumb.jpg";
                            break;
                            case('audio'):
                                $imagen="default_soundcloud.png";
                                $imagen_thumb="default_soundcloud_thumb.jpg";
                            break;
                            default:
                                $imagen="noticia_default.png";
                                $imagen_thumb="noticia_default_thumb.jpg";
                        }
                    }
                    if($sw == 1)
                    {
                        if($guardar == NUEVO)
                        {                                            
                            $data = array();
                            $data = array ('titulo' =>$titulo,
                                            'resumen' => $resumen,
                                            'contenido' =>$contenido,
                                            'url_video' => $url_video,
                                            'url_audio' => $url_audio,
                                            'tipo_contenido' => $tipo_contenido,
                                            'url' => $url,
                                            'fuente'=> $fuente, 
                                            'imagen' => $imagen,
                                            'thumb' => $imagen_thumb,
                                            'estado' =>$estado,
                                            'creado_por'=>$usuario_sesion->id);
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                                            
                            $noticia_id = $this->noticia_capacitacion_model->insert($data);
                            
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_noticia_guardada'));
                            
                            redirect('administrador/capacitacion/editar/'.$noticia_id);
                            
                        }
    
                        if($guardar == EDICION)
                        {
                            $data = array();
                            $data = array ('titulo' =>$titulo,
                                            'resumen' => $resumen,
                                            'contenido' =>$contenido,
                                            'url_video' => $url_video,
                                            'url_audio' => $url_audio,
                                            'tipo_contenido' => $tipo_contenido,
                                            'url' => $url,
                                            'fuente'=> $fuente,
                                            'imagen' => $imagen,
                                            'thumb' => $imagen_thumb,
                                            'estado' =>$estado,
                                            'modificado_por'=>$usuario_sesion->id);
                                            
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                            
                            if($this->noticia_capacitacion_model->exists('id',$noticia_id))
                            {
                                $this->noticia_capacitacion_model->update($data, $noticia_id);
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_noticia_guardada'));
                                redirect('administrador/capacitacion/editar/'.$noticia_id);
                            }
                            else
                            {
                                redirect('administrador/capacitacion/nuevo');
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
            $noticia_id = $this->input->post('id');
                      
            if($this->noticia_capacitacion_model->exists('id', $noticia_id))
            {
                $noticia = $this->noticia_capacitacion_model->get($noticia_id);
                if($noticia->estado == 0)
                {
                    $data = array(
                        'estado'=> 1
                    );
                    
                    $this->noticia_capacitacion_model->update($data, $noticia_id);
                    
                    $data['id'] = $noticia_id;
                    echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> 0
                    );
                    
                    $this->noticia_capacitacion_model->update($data, $noticia_id);  

                    $data['id'] = $noticia_id;
                    echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $noticia_id = $this->input->post('id');
            
            if(empty($noticia_id))
            {          
                $data['error'] = $this->lang->line('score_noticia_error_enlace');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->noticia_capacitacion_model->exists('id', $noticia_id))
            {
                $noticia = $this->noticia_capacitacion_model->get($noticia_id);
                if($noticia->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_noticia_despublicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_noticia_publicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_noticia_error_enlace').' (#'.$noticia_id.')';
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
            } 
        }
        
    }