<?php
class Presentacion extends CI_Controller{
    public function __construct()
    {
        parent::__construct();

        //existe_sesion_urse();
                    
        // modelos
        $this->load->model('presentacion_model');
    }
    
    public function existe($presentacion_id = FALSE)
    {
        if($presentacion_id == FALSE)
        {
            redirect('administrador/escritorio');
        } 
        if($this->presentacion_model->exists('id', $presentacion_id))
        {
            $this->editar($presentacion_id);
        }
        else
        {
            redirect('administrador/escritorio');
        }
    }
    
    public function editar($presentacion_id = FALSE)
    {
        if($presentacion_id == FALSE)
        {
            //$this->nuevo();
            redirect('administrador/escritorio');
        }
        
        if($this->session->flashdata('mensaje'))
        {
           $data['mensaje'] = $this->session->flashdata('mensaje');
        } 
        elseif ($this->session->flashdata('error'))
        {    
            $data['error'] = $this->session->flashdata('error');
        }

        $data['titulo'] = $this->lang->line('score_presentacion_titulo');
        
        $data['presentacion']=$this->presentacion_model->get($presentacion_id);
               
        $this->load->view('backend/presentacion_editar',$data);
    }
     

    public function guardar()
	{
		if(isset($_POST['guardar']) AND $_POST['guardar'] == EDICION)
		{
            $imagen_fondo = $this->input->post('imagen_fondo'); 
            $presentacion_id = $this->input->post('presentacion_id');
            //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
            $this->form_validation->set_rules('presentacion_id', 'Identificador de presentación', 'trim|required|is_natural_no_zero');
            $this->form_validation->set_rules('contenido', 'Texto de presentación', 'trim|required');
			$this->form_validation->set_rules('url_video', 'Url de video', 'trim|valid_url_format|url_exists');
            $this->form_validation->set_rules('estado', 'Estado', 'integer|required');     

			$this->form_validation->set_message('required', 'Falta el campo %s');

          
			if($this->form_validation->run() == FALSE)
			{			 
                $this->session->set_flashdata('error', validation_errors());
                $this->editar($presentacion_id);
			}
            else
            {
                // obtenemos los datos del usuario administrador
                $usuario_sesion = get_user_session();
                
                $contenido = $this->input->post('contenido');
                $url_video = $this->input->post('url_video');
                $estado = $this->input->post('estado');
                
                $titulo_enlace_1 = trim($this->input->post('titulo_enlace_1'));
                $titulo_enlace_2 = trim($this->input->post('titulo_enlace_2'));
                $titulo_enlace_3 = trim($this->input->post('titulo_enlace_3'));
                $titulo_enlace_4 = trim($this->input->post('titulo_enlace_4'));
                $titulo_enlace_5 = trim($this->input->post('titulo_enlace_5'));
                
                $url_enlace_1 = trim($this->input->post('url_enlace_1'));
                $url_enlace_2 = trim($this->input->post('url_enlace_2'));
                $url_enlace_3 = trim($this->input->post('url_enlace_3'));
                $url_enlace_4 = trim($this->input->post('url_enlace_4'));
                $url_enlace_5 = trim($this->input->post('url_enlace_5'));
                
                /*********************************************************************/
                // upload imagen de fondo
                /*********************************************************************/
                $sw = 1;
                if (!empty($_FILES['imagen_fondo']['name']))
                {
                    $this->load->library('upload');
                    $config['upload_path'] = './assets/img/presentacion';
                    $config['allowed_types'] = 'gif|jpg|png|jpeg';    
                    $config['max_size'] = 128;
                    $config['encrypt_name'] = TRUE;
        
                    $this->upload->initialize($config);
        
                    if (!$this->upload->do_upload('imagen_fondo'))
                    {
                        $sw = 0;
                        
                        $this->session->set_flashdata('error',$this->upload->display_errors());     
                        $this->editar($presentacion_id);

                    }
                    else
                    {
                        $data = $this->upload->data();
                        $imagen_fondo = $data['file_name'];
                    }
                }
                if($sw == 1)
                {
                    $data = array();
                    /*$data = array ( 'contenido' =>$contenido,
                                    'url_video' =>$url_video,
                                    'imagen_fondo' => $imagen_fondo,
                                    'estado' =>$estado,
                                    'modificado_por'=>$usuario_sesion->id);*/
                                    
                    $data = array ( 'contenido' =>$contenido,
                                    'url_video' =>$url_video,
                                    'imagen_fondo' => $imagen_fondo,
                                    'titulo_enlace_1'=> $titulo_enlace_1,
                                    'titulo_enlace_2'=> $titulo_enlace_2,
                                    'titulo_enlace_3'=> $titulo_enlace_3,
                                    'titulo_enlace_4'=> $titulo_enlace_4,
                                    'titulo_enlace_5'=> $titulo_enlace_5,
                                    'url_enlace_1'=> $url_enlace_1,                                                                                           'url_enlace_2'=> $url_enlace_2,
                                    'url_enlace_3'=> $url_enlace_3,
                                    'url_enlace_4'=> $url_enlace_4,
                                    'url_enlace_5'=> $url_enlace_5,                                                     
                                    'estado' =>$estado,
                                    'modificado_por'=>$usuario_sesion->id);                
                                      
                    if($estado == PUBLICADO)                
                        $data['publicado'] = date('Y-m-d H:i:s');
                    if($estado == DESPUBLICADO)    
                        $data['despublicado'] = date('Y-m-d H:i:s');
                    
                    if($this->presentacion_model->exists('id',$presentacion_id))
                    {
                        $this->presentacion_model->update($data, $presentacion_id);
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_presentacion_guardada'));
                        redirect('administrador/presentacion/editar/'.$presentacion_id);
                    }
                    else
                    {
                        redirect('administrador/escritorio');
                    }                     
                }                
			}
		}
        else
        {
            redirect('administrador/escritorio');
        }
	}
}