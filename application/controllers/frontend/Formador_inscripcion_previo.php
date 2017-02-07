<?php
class Formador_inscripcion_previo extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('pagina_predisenada_model');
        $this->load->model('intranet/postulacion_formador_tmp_model');
        $this->load->model('intranet/postulacion_formador_model');
        
        // bibliotecas
        $this->load->library('nested_set');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
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
	   $pagina_formador_inscripcion_previo = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'inscripciones-previo-formadores-score-bolivia'));
       if($pagina_formador_inscripcion_previo ->estado == PUBLICADO){
           $this->pagina_predisenada_model->update(array('hits'=>$pagina_formador_inscripcion_previo ->hits + 1),$pagina_formador_inscripcion_previo ->id);  
           $data['titulo'] = $this->lang->line('score_sitio_inscripcion_formador');
           $data['metadescripcion'] = $pagina_formador_inscripcion_previo ->metadescripcion;
           $data['metapalabras_clave'] = $pagina_formador_inscripcion_previo ->metapalabras_clave;
           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
           $this->load->view('frontend/formador_inscripcion_previo',$data);        
       }elseif($pagina_formador_inscripcion_previo->estado == DESPUBLICADO)
       {
           redirect('404_override');
       }              
	}
    
    public function guardar()
	{
		if(isset($_POST['guardar']) AND $_POST['guardar'] == NUEVO)
		{ 
            //$recaptcha = $this->input->post('g-recaptcha-response');
            //if (!empty($recaptcha))
            if(TRUE)
            {
                //$response = $this->recaptcha->verifyResponse($recaptcha);
                //if (isset($response['success']) and $response['success'] === true)
                if(TRUE)
                {
                    $this->form_validation->set_rules('nombres', 'Nombres', 'trim|required');
                    $this->form_validation->set_rules('apellido_paterno', 'Apellido paterno', 'trim|required');      
                    $this->form_validation->set_rules('apellido_materno', 'Apellido materno', 'trim|required');                                        
                    $this->form_validation->set_rules('ci', 'Número de documento de identidad', 'trim|required|is_natural');
                    $this->form_validation->set_rules('email', 'Correo electrónico ', 'trim|required|valid_email');
                    $this->form_validation->set_rules('password', 'Contraseña', 'trim|required');
                    $this->form_validation->set_rules('password_confirmacion', 'Confirmar contraseña', 'trim|required|verificar_password_confirmacion['.$this->input->post('password').']');
              
        			if($this->form_validation->run() == FALSE)
        			{			 
                        $this->session->set_flashdata('error', validation_errors());
                        $this->index(); 
        			}
                    else
                    {                                            
                        $nombres = $this->input->post('nombres',TRUE);
                        $apellido_paterno = $this->input->post('apellido_paterno',TRUE);
                        $apellido_materno = $this->input->post('apellido_materno',TRUE);
                        $ci = $this->input->post('ci',TRUE);
                        $email = $this->input->post('email',TRUE);
                        $password = $this->input->post('password',TRUE);
                        
                        // generando codigo de activacion
                        do {
                            $codigo_activacion = get_codigo_activacion(20);
                        } while ($this->postulacion_formador_tmp_model->exists('codigo_activacion',$codigo_activacion));
                        
                        // insert base de datos
                        $data = array();                                
                        $data = array ( 'nombres' =>$nombres,
                                        'apellido_paterno'=>$apellido_paterno,
                                        'apellido_materno'=>$apellido_materno,
                                        'ci'=>$ci,
                                        'email'=>$email,
                                        'password'=>$password,
                                        'codigo_activacion'=>$codigo_activacion                                     
                                        );                
                                        
                        $postulacion_formador_id = $this->postulacion_formador_tmp_model->insert($data);
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_sitio_inscripcion_formador_tmp_guardada'));
                        
                        // enviamos el codigo de activacion al email enviado
                        $nombre = $nombres.' '.$apellido_paterno.' '.$apellido_materno;
                        $enlace_activacion = base_url('index.php/formador_inscripcion_previo/activar_cuenta/'.$codigo_activacion) ;
                        $mensaje = '<p>Estimado(a) '.$nombre.'.</p><p>Para activar tu cuenta en SCORE Bolivia ingresa en el siguiente enlace:</p><a href="'.$enlace_activacion.'" target="_blank">'.$enlace_activacion.'</a>';
                                                              
                        enviar_email($mensaje,$this->lang->line('score_activacion_formador_notificacion'),$email);
                        
                        redirect('inscripciones-previo-formadores-score-bolivia');                                    
        			}                                        
                }
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_sitio_inscripcion_formador_error_recaptcha'));
                redirect('inscripciones-previo-formadores-score-bolivia');
                //$this->index();   
            }
		}
        else
        {
            redirect('inscripciones-previo-formadores-score-bolivia');
        }
	}
    
    
    public function activar_cuenta($codigo_activacion = FALSE)
    {
        if($codigo_activacion == FALSE)
        {
            redirect('inscripciones-previo-formadores-score-bolivia'); 
        }
        
        // activamos la cuenta si el codigo existe
        if($this->postulacion_formador_tmp_model->exists('codigo_activacion',$codigo_activacion))
        {
            $postulacion_formador = $this->postulacion_formador_tmp_model->get_values('id',array('codigo_activacion'=>$codigo_activacion));
            $postulacion_formador = $this->postulacion_formador_tmp_model->get($postulacion_formador->id);

            if($postulacion_formador->activado == NO_ACTIVADO)
            {
                $this->postulacion_formador_tmp_model->update(array('activado'=>ACTIVADO),$postulacion_formador->id);
                
                //copiamos los datos relevantes a la tabla de postulantes oficial
                $data = array(
                'nombres'=>$postulacion_formador->nombres,
                'apellido_paterno'=>$postulacion_formador->apellido_paterno,
                'apellido_materno'=>$postulacion_formador->apellido_materno,
                'ci'=>$postulacion_formador->ci,
                'email'=>$postulacion_formador->email,
                'password'=>$postulacion_formador->password
                );
                
                $postulacion_formador_id = $this->postulacion_formador_model->insert($data);
                if(!empty($postulacion_formador_id))
                {
                    // iniciamos sesion
                    $array = array(
                    'id' => $postulacion_formador_id,
                    );
                    $this->session->set_userdata('postulacion_formador', $array); 
                    redirect('inscripciones-formadores-score-bolivia'); 
                }                
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_sitio_inscripcion_formador_error_activacion'));
                redirect('inscripciones-previo-formadores-score-bolivia'); 
            }
        }
        else
        {
            redirect('inscripciones-previo-formadores-score-bolivia');     
        }
    }


    public function autenticar()
    {
		if(isset($_POST['autenticar']))
		{              
		    $autenticar = $this->input->post("autenticar");
            if($autenticar == AUTENTICAR)
            {                                    
                $this->form_validation->set_rules('usuario', 'Usuario', 'trim|required');
                $this->form_validation->set_rules('password_sesion', 'Contraseña', 'trim|required');

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{        			 
                    $this->session->set_flashdata('error', validation_errors());
                    $this->index();                       
    			}
                else
                {
                    $usuario = $this->input->post('usuario');
                    $password = $this->input->post('password_sesion');
                    
                    // verificamos que el nombre de usuario y password sean corretos
                    if($this->postulacion_formador_model->exists('email',$usuario) AND $this->postulacion_formador_model->exists('password',$password))
                    {
                        // iniciamos sesion
                        $postulacion_formador = $this->postulacion_formador_model->get_values('id',array('email'=>$usuario, 'password'=>$password));
                        $array = array(
                        'id' => $postulacion_formador->id,
                        );
                        $this->session->set_userdata('postulacion_formador', $array); 
                        redirect('inscripciones-formadores-score-bolivia');                              
                    }
                    else
                    {
                        $this->session->set_flashdata('error', 'El inicio de sesión no es válido.');
                        redirect('inscripciones-previo-formadores-score-bolivia');
                    }

                }  
            }
        }
        else
        {
            redirect('inscripciones-previo-formadores-score-bolivia');        
        }
    }    
}