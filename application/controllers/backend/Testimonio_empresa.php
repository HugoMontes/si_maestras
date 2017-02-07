<?php
class Testimonio_empresa extends CI_Controller{
    public function __construct()
    {
        parent::__construct();

        //existe_sesion_urse();    
            
        // modelos
        $this->load->model('testimonio_model');
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
        $navegacion = $this->navegacion_model->get_values('id',array('vista'=>TESTIMONIOS)); 
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
        $count = $this->testimonio_model->get_count($where, $order);
        
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
        $config['base_url'] = base_url('index.php') . 'administrador/testimonio/'; //always put trailing slash
        $config['total_rows'] = $count;
        $config['cur_page'] = $cur_page;
        $config['stats_title'] = 'testimonios';
        $config['url_type'] = 'q';
        
        $this->page->initialize($config);
        
        $data['testimonios'] = $this->testimonio_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
       ########################################################################################  

       $data['titulo'] = $this->lang->line('score_testimonios');
	   //$data['noticias'] = $this->noticia_model->get_all('',array(),'','','creado desc','');
       $this->load->view('backend/testimonios',$data);
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
          
        $data['titulo'] = $this->lang->line('score_testimonio_nuevo_titulo');
        $this->load->view('backend/testimonio_empresa_nuevo',$data);
    }
    
    public function existe($testimonio_id = FALSE)
    {
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>TESTIMONIOS));
        if($testimonio_id == FALSE)
        {
            $this->session->set_flashdata('error', $this->lang->line('score_testimonio_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        } 
        if($this->testimonio_model->exists('id', $testimonio_id))
        {
            $this->editar($testimonio_id);
        }
        else
        {
            $this->session->set_flashdata('error', $this->lang->line('score_testimonio_error_enlace').' (#'.$testimonio_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }
    
    public function editar($testimonio_id = FALSE)
    {
        if($testimonio_id == FALSE)
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

        $data['titulo'] = $this->lang->line('score_testimonio_editar_titulo');
        $data['testimonio'] = $this->testimonio_model->get($testimonio_id);               
        $this->load->view('backend/testimonio_empresa_editar',$data);
    }

    public function guardar()
	{
	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>TESTIMONIOS));
		if(isset($_POST['guardar']))
		{              
		    $guardar = $this->input->post("guardar");
            if($guardar == EDICION)
            {
                $testimonio_id = $this->input->post('testimonio_id');
                $imagen = $this->input->post('imagen'); 
                $imagen_thumb = $this->input->post('imagen_thumb');  
            }
            if($guardar == NUEVO)
            {
                if (empty($_FILES['imagen']['name']))
                $this->form_validation->set_rules('imagen', 'Imagen destacada', 'required');
            }
                    
            //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
            $this->form_validation->set_rules('contenido', 'Contenido', 'trim|required');
            $this->form_validation->set_rules('url_video', 'Url video', 'trim|valid_url_format|url_exists');                   
            $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

			$this->form_validation->set_message('required', 'Falta el campo %s');
                            
			if($this->form_validation->run() == FALSE)
			{
			 
              $this->session->set_flashdata('error', validation_errors());
              
			  if($guardar == NUEVO)
                $this->nuevo();
              if($guardar == EDICION)
                $this->editar($testimonio_id);
			}
            else
            {
                // obtenemos los datos del usuario administrador
                $usuario_sesion = get_user_session();
                                    
                $titulo = $this->input->post('titulo');
                $contenido = $this->input->post('contenido');
                $tipo = TESTIMONIO_EMPRESA;
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
                    $config['upload_path'] = './assets/img/testimonios';
                    $config['allowed_types'] = 'gif|jpg|png|jpeg';    
                    $config['max_size'] = 128; // 128 kb 
                    $config['encrypt_name'] = FALSE;
        
                    $this->upload->initialize($config);
        
                    if (!$this->upload->do_upload('imagen'))
                    {
                        $sw = 0;
                        
                        $this->session->set_flashdata('error',$this->upload->display_errors());     
                        
                        if($guardar == NUEVO)
                        $this->nuevo();
                        if($guardar == EDICION)
                        $this->editar($testimonio_id);

                    }
                    else
                    {
                        $data = $this->upload->data();
                        $imagen = $data['file_name'];
                        // thumb
                        $source_path = './assets/img/testimonios/' . $imagen;
                        $target_path = './assets/img/testimonios/' . 'thumb/';
                        $config_thumb = array(
                            'image_library' => 'gd2',
                            'source_image' => $source_path,
                            'new_image' => $target_path,
                            'maintain_ratio' => TRUE,
                            'create_thumb' => TRUE,
                            'thumb_marker' => '_thumb',
                            'width' => 366,
                            'height' => 0
                        );
                        $this->load->library('image_lib', $config_thumb);
                        if (!$this->image_lib->resize())
                        {
                            $this->session->set_flashdata('error',$this->image_lib->display_errors()); 
                            if($guardar == NUEVO)
                                $this->nuevo();
                            if($guardar == EDICION)
                                $this->editar($testimonio_id);
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
                                        'contenido' =>$contenido,
                                        'tipo' => $tipo,
                                        'url_video' => trim($url_video),
                                        'imagen' => $imagen,
                                        'thumb'=> $imagen_thumb,
                                        'estado' =>$estado,
                                        'creado_por'=>$usuario_sesion->id);
                                        
                                        
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                                        
                        $testimonio_id = $this->testimonio_model->insert($data);
                        
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_testimonio_guardado'));
                        
                        redirect('administrador/testimonio_empresa/editar/'.$testimonio_id);                       
                    }

                    if($guardar == EDICION)
                    {
                        $data = array();
                        $data = array ('titulo' =>$titulo,
                                        'contenido' =>$contenido,
                                        'tipo' => $tipo,
                                        'url_video' => $url_video,
                                        'imagen' => $imagen,
                                        'thumb' => $imagen_thumb,
                                        'estado' =>$estado,
                                        'modificado_por'=>$usuario_sesion->id);
                                        
                                        
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                        
                        if($this->testimonio_model->exists('id',$testimonio_id))
                        {
                            $this->testimonio_model->update($data, $testimonio_id);
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_testimonio_guardado'));
                            redirect('administrador/testimonio_empresa/editar/'.$testimonio_id);
                        }
                        else
                        {
                            redirect('administrador/testimonio_empresa/nuevo');
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

}