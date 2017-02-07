<?php
class Email extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        //existe_sesion_urse();
        
        // modelo
        $this->load->model('email_model');
    }
    
    public function editar()
	{
       if($this->session->flashdata('mensaje'))
       {
           $data['mensaje'] = $this->session->flashdata('mensaje');
       } 
       elseif ($this->session->flashdata('error'))
       { 
           $data['error'] = $this->session->flashdata('error');
       }
       $data['titulo'] = $this->lang->line('score_email_editar_titulo');
       $data['email'] = $this->email_model->get(1);
       $this->load->view('backend/email',$data);
	}

    public function guardar()
	{
		if(isset($_POST['guardar']))
       	{           	                
	        $guardar = $this->input->post("guardar");
            $this->form_validation->set_rules('email_notificacion', 'Dirección de correo electrónico', 'trim|required|valid_email');
            
            $this->form_validation->set_message('required', 'Falta el campo %s');

            if($this->form_validation->run() == FALSE)
			{
              $this->session->set_flashdata('error', validation_errors());
              if($guardar == EDICION)
                $this->editar();
			}
            else
            {
                $usuario_sesion = get_user_session();
                if($guardar == EDICION)
                {
                    $email_notificacion = $this->input->post('email_notificacion');                      
                    $data = array();
                    
                    $data = array ('modificado_por'=>$usuario_sesion->id,
                                   'email_notificacion'=>$email_notificacion);
                    
                    if($this->email_model->exists('id',1))
                    {
                        $this->email_model->update($data, 1);
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_email_guardado'));
                        redirect('administrador/email/editar');
                    }
                    else
                    {
                        $this->session->set_flashdata('error', $this->lang->line('score_email_error_guardar'));
                        redirect('administrador/email/editar'); 
                    }                                                                                                                                                                 
                }       
                else
                {
                    redirect('administrador/email/editar');    
                }                 
            }                
        }  
        else
        {
            redirect('administrador/email/editar');
        }                                       			
	}
}