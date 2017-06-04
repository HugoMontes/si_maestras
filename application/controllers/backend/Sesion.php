<?php
    class Sesion extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
           
            // modelos
            $this->load->model('usuario_model');
            $this->load->model('perfil_model');
            $this->load->model('modulo_model'); 
            $this->load->model('centro_model');
        }
        
        public function index()
        {
            $session_set_value = $this->session->all_userdata();
            // verificamos si remember_me existe y esta guardada en la sesion
            if (isset($session_set_value['remember_me']) && $session_set_value['remember_me'] == "1")
            {
                redirect('administrador/escritorio'); 
            } 
            else
            {
                if ($this->session->flashdata('error'))
                { 
                   $data['error'] = $this->session->flashdata('error');
                }               
                $data['titulo'] = $this->lang->line('score_usuario_iniciar_sesion');
                $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
                $this->load->view('backend/usuario_iniciar_sesion',$data); 
            }          
        }
        
        public function autenticar(){
    		if(isset($_POST['autenticar'])){              
    		    $autenticar = $this->input->post("autenticar");
                if($autenticar == AUTENTICAR){                                    
                    $this->form_validation->set_rules('usuario', 'Usuario', 'trim|required');
                    $this->form_validation->set_rules('password', 'Contraseña', 'trim|required');
    
        			$this->form_validation->set_message('required', 'Falta el campo %s');
                                    
        			if($this->form_validation->run() == FALSE){        			 
                      $this->session->set_flashdata('error', validation_errors());
                      $this->index();                  
        			}else{
                        $password = $this->input->post('password');
                        $usuario = $this->input->post('usuario');
                        $remember = $this->input->post('remember_me');
                        
                        // verificamos que el nombre de usuario y password sean corretos
                        $usuario_ = $this->usuario_model->get_values('id, nombres, apellidos, creado, perfil, thumb, centro_formacion',array('password'=>$password, 'usuario'=>$usuario, 'estado'=>HABILITADO));
                        
                        if(!empty($usuario_)){
                            if(!empty($usuario_->thumb)){
                                $fotografia = base_url('assets/img/usuarios/thumb/'.$usuario_->thumb);
                            }else{
                                $fotografia = base_url('assets/img/usuarios/thumb/default.jpg');
                            }
                            
                            if($remember){
                                $this->session->set_userdata('remember_me', TRUE);
                            }
                            
                            // obtenemos el perfil del usuario
                            $perfil_id = $usuario_->perfil;
                            if(!empty($perfil_id) AND $this->perfil_model->exists('id',$perfil_id)){
                               $perfil = $this->perfil_model->get_values('nombre',array('id'=>$perfil_id));
                               $perfil = $perfil->nombre; 
                            }else{
                               $perfil = '';
                               $perfil_id = 0; 
                            }                            
                            
                            $array = array(
                                'id' => $usuario_->id,
                                'usuario' => $usuario,
                                'fotografia' => $fotografia,
                                'nombres' => $usuario_->nombres,
                                'apellidos' => $usuario_->apellidos,
                                'creado' => $usuario_->creado,
                                'perfil_id' => $perfil_id,
                                'centro_formacion' => $usuario_->centro_formacion,
                                'txt_centro_formacion' => strtoupper($this->centro_model->get($usuario_->centro_formacion)->descripcion),
                                'perfil' => $perfil,
                                'dir_imagenes'=>$perfil_id==1?'':$this->centro_model->get($usuario_->centro_formacion)->directorio_imagenes.'/',
                            );

                            $this->session->set_userdata('usuario', $array);
                            $this->session->set_userdata('existe_sesion', TRUE);
                            
                            // guardamos la fecha de visita del usuario
                            $this->usuario_model->update(array('ultima_visita'=> date('Y-m-d H:i:s')),$usuario_->id);
                            
                            redirect('administrador/escritorio');                              
                        }
                        else
                        {
                            $this->session->set_flashdata('error', 'El inicio de sesión no es válido.');
                            $this->index();
                            //redirect('administrador/sesion'); 
                        }

                    }  
                }
            }
            else
            {
                redirect('administrador/sesion');       
            }
        }

        // salimos de la sesion
        public function cerrar()
        {      
            // Destruimos los datos de la session
            $this->session->sess_destroy();
            redirect('administrador/sesion');
            //$this->iniciar_sesion();
        }        
    }