<?php
    class Biblioteca_documento extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            existe_sesion_urse();
                        
            // modelos
            $this->load->model('intranet/biblioteca_documento_model');
            $this->load->model('intranet/biblioteca_categoria_model');
            $this->load->model('intranet/biblioteca_model');            
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>BIBLIOTECA_DOCUMENTOS)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('titulo','biblioteca_id','categoria_id');
            
            $opcion_biblioteca_id = 0;
            $opcion_categoria_id = 0;     
            $buscar = '';       
            if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
                $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' "." AND bloqueado = ".NO_BLOQUEADO;
            
                $config['add_pars']['search_key'] = $search_key;
                $config['add_pars']['search_in'] = $search_in;
                //$data['buscar'] = $search_key;
                
                if($search_in == 'biblioteca_id'){
                   $opcion_biblioteca_id = $search_key;                     
                }elseif($search_in == 'categoria_id'){
                   $opcion_categoria_id = $search_key;
                   
                   //obtenemos el identificador de biblioteca
                   $categoria = $this->biblioteca_categoria_model->get($opcion_categoria_id);
                   $opcion_biblioteca_id = $categoria->biblioteca_id;                    
                }elseif($search_in == 'titulo'){
                   $buscar = $search_key;
                }                                
            }
            
            $data['opcion_biblioteca_id'] = $opcion_biblioteca_id;
            $data['opcion_categoria_id'] = $opcion_categoria_id; 
            $data['buscar'] = $buscar;              
            
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
            
            $count = $this->biblioteca_documento_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/intranet/biblioteca_documento/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'documentos';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
                        
            // bibliotecas
            $bibliotecas = $this->biblioteca_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id ASC','');
            $bibliotecas_ = array();
            $bibliotecas_[0] = '- Seleccionar biblioteca -';  
            foreach ($bibliotecas as $biblioteca)
            {
              $bibliotecas_[$biblioteca['id']] = $biblioteca['nombre'];      
            }
            $data['bibliotecas'] = $bibliotecas_;  
                       
            $data['biblioteca_documentos'] = $this->biblioteca_documento_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
            ########################################################################################  

            $data['titulo'] = $this->lang->line('score_biblioteca_documentos');
            $this->load->view('intranet/biblioteca_documentos',$data);
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
            
            // bibliotecas
            $bibliotecas = $this->biblioteca_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id ASC','');
            $bibliotecas_ = array();
            $bibliotecas_[0] = '- Seleccionar biblioteca -';  
            foreach ($bibliotecas as $biblioteca)
            {
              $bibliotecas_[$biblioteca['id']] = $biblioteca['nombre'];      
            }
            $data['bibliotecas'] = $bibliotecas_; 
            
            $data['titulo'] = $this->lang->line('score_biblioteca_documento_nuevo_titulo');
            $this->load->view('intranet/biblioteca_documento_nuevo',$data);
        }
        
        public function existe($biblioteca_documento_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_DOCUMENTOS));
            
            if($biblioteca_documento_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_documento_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->biblioteca_documento_model->exists('id', $biblioteca_documento_id))
            {
                $this->editar($biblioteca_documento_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_documento_error_enlace').' (#'.$biblioteca_documento_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($biblioteca_documento_id = FALSE)
        {
            if($biblioteca_documento_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_biblioteca_documento_editar_titulo');
            
            // bibliotecas
            $bibliotecas = $this->biblioteca_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id ASC','');
            $bibliotecas_ = array();
            $bibliotecas_[0] = '- Seleccionar biblioteca -';  
            foreach ($bibliotecas as $biblioteca)
            {
              $bibliotecas_[$biblioteca['id']] = $biblioteca['nombre'];      
            }
            $data['bibliotecas'] = $bibliotecas_;             
            
            // documento de biblioteca
            $biblioteca_documento=$this->biblioteca_documento_model->get($biblioteca_documento_id);   
            $data['biblioteca_documento'] = $biblioteca_documento;         
            
            // categorias filtradas por biblioteca             
            $data['biblioteca_categorias'] = get_biblioteca_categorias_select($biblioteca_documento->biblioteca_id, FALSE);
                   
            $this->load->view('intranet/biblioteca_documento_editar',$data);
        }

        public function eliminar($biblioteca_documento_id = FALSE)
        {
            // obtenemos los datos del usuario administrador
            $usuario_sesion = get_user_session();
            
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_DOCUMENTOS));
            if($biblioteca_documento_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_documento_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->biblioteca_documento_model->exists('id', $biblioteca_documento_id))
            {
                $data = array();
                $data = array ('bloqueado' =>BLOQUEADO,
                               'estado'=> DESPUBLICADO, 
                               'modificado_por'=>$usuario_sesion->id);     
                
                $this->biblioteca_documento_model->update($data, $biblioteca_documento_id);
                
                $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_documento_eliminado'));
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_documento_error_enlace').' (#'.$biblioteca_documento_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_DOCUMENTOS));
    		if(isset($_POST['guardar']))
    		{              
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $biblioteca_documento_id = $this->input->post('biblioteca_documento_id');
                    $documento = $this->input->post('documento');
                    $url = $this->input->post("url");
                    
                    if (empty($documento) AND empty($url))
                        $this->form_validation->set_rules('documento', 'Documento', 'required');
                    
                    if (empty($documento) AND !empty($url))
                        $this->form_validation->set_rules('url', 'Url de documento', 'required|trim|valid_url_format|url_exists');                            
                    
                }

                if($guardar == NUEVO)
                {
                    $url = $this->input->post("url");
                    if (empty($_FILES['documento']['name']) AND empty($url))
                        $this->form_validation->set_rules('documento', 'Documento', 'required');
                        
                    if (empty($_FILES['documento']['name']) AND !empty($url))
                        $this->form_validation->set_rules('url', 'Url de documento', 'required|trim|valid_url_format|url_exists');
                        
                }                
                        
    			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
                $this->form_validation->set_rules('descripcion', 'Descripción', 'trim');  
                $this->form_validation->set_rules('biblioteca_id', 'Biblioteca', 'is_natural|required|id_biblioteca_exists');  
                $this->form_validation->set_rules('categoria_id', 'Categoría', 'is_natural|required|id_biblioteca_categoria_exists');                             
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  
                
    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($biblioteca_documento_id);
    			}
                else
                {                    
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $titulo = $this->input->post('titulo');
                    $descripcion = $this->input->post('descripcion');
                    $biblioteca_id = $this->input->post('biblioteca_id');
                    $categoria_id = $this->input->post('categoria_id');
                    $estado = $this->input->post('estado');
                    $guardar = $this->input->post("guardar");

                    /*********************************************************************/
                    // upload documento
                    /*********************************************************************/
                    $sw = 1;
                    if (!empty($_FILES['documento']['name']))
                    {
                        $this->load->library('upload');
                        $config['upload_path'] = './assets/documentos';
                        $config['allowed_types'] = 'docx|doc|xls|xlsx|ppt|pdf|jpg|png|jpeg|mp4|mp3';    
                        $config['max_size'] = 50000; // 50MB 
                        $config['encrypt_name'] = FALSE;
            
                        $this->upload->initialize($config);
            
                        if (!$this->upload->do_upload('documento'))
                        {
                            $sw = 0;
                            
                            $this->session->set_flashdata('error',$this->upload->display_errors());     
                            
                            if($guardar == NUEVO)
                            $this->nuevo();
                            if($guardar == EDICION)
                            $this->editar($biblioteca_documento_id);
    
                        }
                        else
                        {
                            $data = $this->upload->data();
                            $documento = $data['file_name'];                          
                        }
                       
                    }                    

                    if($sw == 1)
                    {
                        if($guardar == NUEVO)
                        {                                            
                            $data = array();
                            $data = array ('titulo' =>$titulo,
                                           'descripcion' => $descripcion,
                                           'documento' => $documento,
                                           'url'=> $url,
                                           'biblioteca_id'=> $biblioteca_id,
                                           'categoria_id'=>$categoria_id,
                                           'estado' =>$estado,
                                           'creado_por'=>$usuario_sesion->id);
                                            
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                                            
                            $biblioteca_documento_id = $this->biblioteca_documento_model->insert($data);
                            
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_documento_guardado'));
                            
                            redirect('intranet/biblioteca_documento/editar/'.$biblioteca_documento_id);
                            
                        }
    
                        if($guardar == EDICION)
                        {
                            if(!empty($documento))                            
                                $url = '';
                            
                            $data = array();
                            $data = array ('titulo' =>$titulo,
                                           'descripcion' => $descripcion,
                                           'documento'=>$documento,
                                           'url'=>$url,
                                           'biblioteca_id'=> $biblioteca_id,
                                           'categoria_id'=>$categoria_id,                                           
                                           'estado' =>$estado,
                                           'modificado_por'=>$usuario_sesion->id);                                                                                   
                                            
                            if($estado == PUBLICADO)                
                                $data['publicado'] = date('Y-m-d H:i:s');
                            if($estado == DESPUBLICADO)    
                                $data['despublicado'] = date('Y-m-d H:i:s');
                            
                            if($this->biblioteca_documento_model->exists('id',$biblioteca_documento_id))
                            {
                                $this->biblioteca_documento_model->update($data, $biblioteca_documento_id);
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_documento_guardado'));
                                redirect('intranet/biblioteca_documento/editar/'.$biblioteca_documento_id);
                            }
                            else
                            {
                                redirect('intranet/biblioteca_documento/nuevo');
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
            // obtenemos los datos del usuario administrador
            $usuario_sesion = get_user_session();
            
            $biblioteca_documento_id = $this->input->post('id');
                      
            if($this->biblioteca_documento_model->exists('id', $biblioteca_documento_id))
            {
                $biblioteca_documento = $this->biblioteca_documento_model->get($biblioteca_documento_id);
                if($biblioteca_documento->estado == 0)
                {
                    $data = array(
                        'estado'=> 1,
                        'publicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id
                    );
                    
                    $this->biblioteca_documento_model->update($data, $biblioteca_documento_id);
                    
                    $data['id'] = $biblioteca_documento_id;
                    echo $this->load->view('intranet/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> 0,
                        'despublicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id                        
                    );
                    
                    $this->biblioteca_documento_model->update($data, $biblioteca_documento_id);  

                    $data['id'] = $biblioteca_documento_id;
                    echo $this->load->view('intranet/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $biblioteca_documento_id = $this->input->post('id');
            
            if(empty($biblioteca_documento_id))
            {          
                $data['error'] = $this->lang->line('score_biblioteca_documento_error_enlace');
                echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->biblioteca_documento_model->exists('id', $biblioteca_documento_id))
            {
                $biblioteca_documento = $this->biblioteca_documento_model->get($biblioteca_documento_id);
                if($biblioteca_documento->estado == 0)
                {                    
                    $data['mensaje'] = $this->lang->line('score_biblioteca_documento_despublicado');
                    echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_biblioteca_documento_publicado');
                    echo $this->load->view('intranet/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_biblioteca_documento_error_enlace').' (#'.$biblioteca_documento_id.')';
                echo $this->load->view('intranet/ajax/mensaje',$data,TRUE);
            } 
        }    
        
        public function remover_documento()
        {
            $biblioteca_documento_id = $this->input->post('id');
            
            if(!empty($biblioteca_documento_id))
            {          
                if($this->biblioteca_documento_model->exists('id', $biblioteca_documento_id))
                {
                    $this->biblioteca_documento_model->update(array('documento'=>''),$biblioteca_documento_id);
                }
            }             
        }             
    }