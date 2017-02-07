<?php
class Modulo extends CI_Controller{
    public function __construct()
    {
        parent::__construct();

        //existe_sesion_urse();
                    
        // modelos
        $this->load->model('modulo_model');
    }
    
    public function existe($modulo_id = FALSE)
    {
        if($modulo_id == FALSE)
        {
            redirect('administrador/escritorio');
        } 
        if($this->modulo_model->exists('id', $modulo_id))
        {
            $this->editar($modulo_id);
        }
        else
        {
            redirect('administrador/escritorio');
        }
    }
    
    public function editar($modulo_id = FALSE)
    {
        if($modulo_id == FALSE)
        {
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
        
        $modulo = $this->modulo_model->get($modulo_id);
        $data['titulo'] = 'Editar '.$modulo->titulo;
        $data['modulo']=$modulo;
               
        $this->load->view('backend/modulo_editar',$data);
    }
     

    public function guardar()
	{
		if(isset($_POST['guardar']) AND $_POST['guardar'] == EDICION)
		{ 
            $modulo_id = $this->input->post('modulo_id');
            //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
            $this->form_validation->set_rules('contenido', 'Contenido', 'trim|required');
            $this->form_validation->set_rules('estado', 'Estado', 'integer|required');     

			$this->form_validation->set_message('required', 'Falta el campo %s');

          
			if($this->form_validation->run() == FALSE)
			{			 
                $this->session->set_flashdata('error', validation_errors());
                $this->editar($modulo_id);
			}
            else
            {
                // obtenemos los datos del usuario administrador
                $usuario_sesion = get_user_session();
                
                $contenido = $this->input->post('contenido');
                $estado = $this->input->post('estado');
                
                $data = array();                                
                $data = array ( 'contenido' =>$contenido,
                                'estado' =>$estado,
                                'modificado_por'=>$usuario_sesion->id);                
                                  
                if($estado == PUBLICADO)                
                    $data['publicado'] = date('Y-m-d H:i:s');
                if($estado == DESPUBLICADO)    
                    $data['despublicado'] = date('Y-m-d H:i:s');
                
                if($this->modulo_model->exists('id',$modulo_id))
                {
                    $this->modulo_model->update($data, $modulo_id);
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_modulo_guardado'));
                    redirect('administrador/modulo/editar/'.$modulo_id);
                }
                else
                {
                    redirect('administrador/escritorio');
                }                     
                              
			}
		}
        else
        {
            redirect('administrador/escritorio');
        }
	}

    public function guardar_logotipo(){
        if($this->input->server('REQUEST_METHOD') == 'GET'){
            if($this->session->flashdata('mensaje')){
                $data['mensaje'] = $this->session->flashdata('mensaje');
            }elseif ($this->session->flashdata('error')){    
                $data['error'] = $this->session->flashdata('error');
            }
            $modulo = $this->modulo_model->get(6);
            $data['titulo'] = 'Editar '.$modulo->titulo;
            $data['modulo']=$modulo;
            $this->load->view('backend/modulo_editar_logo',$data);
        }else{
            if (!empty($_FILES['file-input']['name'])){
                // ELIMINAR ARCHIVOS ANTERIORIORES
                $this->load->helper("file");
                delete_files('./assets/img/logo');
                // CARGAR LA IMAGEN DEL LOGO
                $this->load->library('upload');
                $config['upload_path'] = './assets/img/logo';
                $config['allowed_types']        = 'gif|jpg|png';
                $config['max_size']             = 100;
                $config['max_width']            = 1024;
                $config['max_height']           = 768;
                $this->upload->initialize($config);
                $this->upload->do_upload('file-input');
                $data = array (
                    'contenido' => $this->upload->data()['file_name'],
                );
                $this->modulo_model->update($data, 6);
                $this->session->set_flashdata('mensaje', $this->lang->line('score_modulo_guardado_logo'));
            }
            redirect('administrador/modulo/editar/logo'.$modulo_id);
        }
        
    }
}