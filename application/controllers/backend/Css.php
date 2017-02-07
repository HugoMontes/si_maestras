<?php
class Css extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        //existe_sesion_urse();
        
        // helpers
        $this->load->helper('file');
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
       $data['titulo'] = $this->lang->line('score_css_editar_titulo');
       $data['archivo'] = 'custom.css';
       $data['archivo_contenido'] = read_file(getcwd().'\assets\css\custom.css');
       $this->load->view('backend/css',$data);
	}

    public function guardar()
	{
		if(isset($_POST['guardar']))
       	{           	                
	        $guardar = $this->input->post("guardar");
            if($guardar == EDICION)
            {
                $data = $this->input->post('archivo_contenido');
                
                if (!write_file(getcwd().'\assets\css\custom.css', $data))
                {
                    $this->session->set_flashdata('error', $this->lang->line('score_css_error_guardar'));
                    redirect('administrador/css/editar'); 
                }
                else
                {
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_css_guardado'));
                    redirect('administrador/css/editar'); 
                }                        
                                  
            }       
            else
            {
                redirect('administrador/css/editar');    
            }                 
        }  
        else
        {
            redirect('administrador/css/editar');
        }                                       			
	}
}