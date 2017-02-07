<?php
class Contacto extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('contacto_model');
        $this->load->model('email_model');
        $this->load->model('pagina_predisenada_model');
        // bibliotecas
        $this->load->library('nested_set');
        $this->load->helper('security');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function index()
	{
	    if($this->session->flashdata('mensaje')){
            $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){    
            $data['error'] = $this->session->flashdata('error');
        }
       
        $pagina_contacto = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits, estado', array('alias'=>'contacto-maestras-constructoras'));
        if($pagina_contacto->estado == PUBLICADO){
           $this->pagina_predisenada_model->update(array('hits'=>$pagina_contacto->hits + 1),$pagina_contacto->id);       
           $data['titulo'] = $this->lang->line('score_sitio_contacto');
           $data['metadescripcion'] = $pagina_contacto->metadescripcion;
           $data['metapalabras_clave'] = $pagina_contacto->metapalabras_clave;
           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
           $data['widget'] = $this->recaptcha->getWidget();
           $data['script'] = $this->recaptcha->getScriptTag();        
           $this->load->view('frontend/contacto',$data);        
        }elseif($pagina_contacto->estado == DESPUBLICADO){
           redirect('404_override');
        }
	}
    
    public function guardar()
	{
		if(isset($_POST['guardar']) AND $_POST['guardar'] == NUEVO)
		{ 
            $recaptcha = $this->input->post('g-recaptcha-response');
            if (!empty($recaptcha))
            {
                $response = $this->recaptcha->verifyResponse($recaptcha);
                if (isset($response['success']) and $response['success'] === true)
                {
                    // validamos el formulario
                    $this->form_validation->set_rules('nombre', 'Nombre', 'trim|required');
                    $this->form_validation->set_rules('email', 'Correo electrónico', 'trim|required|valid_email');
                    $this->form_validation->set_rules('mensaje', 'Mensaje', 'trim|required');
            
        			$this->form_validation->set_message('required', 'Falta el campo %s');
              
        			if($this->form_validation->run() == FALSE)
        			{			 
                        $this->session->set_flashdata('error', validation_errors());
                        $this->index(); 
        			}
                    else
                    {                        
                        $nombre = $this->input->post('nombre');
                        $email = $this->input->post('email');
                        $mensaje = $this->input->post('mensaje',TRUE);
                        $data = array();                                
                        $data = array ( 'nombre' =>$nombre,
                                        'email' =>$email,
                                        'mensaje'=>$mensaje);                
                                        
                        $contacto_id = $this->contacto_model->insert($data);
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_sitio_contacto_guardado'));
                        
                        // enviamos una copia del mensaje al correo de notificacion
                        $email_notificacion = $this->email_model->get(1);
                        $mensaje = '<p><strong>Nombre: </strong>'.$nombre.'</p><p><strong>Email: </strong>'.$email.'</p><p><strong>Mensaje :</strong></p>'.$mensaje;
                          
                                    
                        enviar_email($mensaje,$this->lang->line('score_contacto_notificacion'),$email_notificacion->email_notificacion);
                        
                        redirect('contacto-maestras-constructoras');                                    
        			}                                        
                }
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_sitio_contacto_error_recaptcha'));
                redirect('contacto-maestras-constructoras');   
            }
		}
        else
        {
            redirect('contacto-maestras-constructoras');
        }
	}
}