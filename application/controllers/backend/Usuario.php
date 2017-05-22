<?php
    class Usuario extends CI_Controller{
        public function __construct(){
            parent::__construct();
            
            //existe_sesion_urse();
            
            // modelos
            $this->load->model('usuario_model');
            $this->load->model('email_model');
            $this->load->model('perfil_model');
            $this->load->model('centro_model');
            $this->load->model('navegacion_model');
            
            // helpers
            $this->load->helper('score');

            // bibliotecas
            $this->load->library('session');
        }
        
        public function index(){
           if($this->session->userdata('usuario')['perfil_id']!=1){
                redirect(base_url('index.php/administrador/escritorio'));
            }

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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>USUARIOS)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('nombres','apellidos','perfil');
            
            $data['buscar'] = '';
            $data['opcion_perfil'] = 0;
           
            if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
                $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            
                $config['add_pars']['search_key'] = $search_key;
                $config['add_pars']['search_in'] = $search_in;
                
                if($search_in == 'apellidos' OR $search_in == 'nombres')
                    $data['buscar'] = $search_key;
                
                if($search_in == 'perfil')
                    $data['opcion_perfil'] = $search_key;     
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
            $count = $this->usuario_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/administrador/usuario/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'usuarios';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['usuarios'] = $this->usuario_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  

           $perfiles = $this->perfil_model->get_all('id, nombre',array(),'','','id ASC','');
           $perfiles_ = array();
           $perfiles_[0] = '- Seleccionar perfil -';  
           foreach ($perfiles as $perfil)
           {
             $perfiles_[$perfil['id']] = $perfil['nombre'];      
           }
           $data['perfiles'] = $perfiles_;   
            
           $data['titulo'] = $this->lang->line('score_usuarios');
    	   //$data['noticias'] = $this->usuario_model->get_all('',array(),'','','creado desc','');
           $this->load->view('backend/usuarios',$data);
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
            
            $data['titulo'] = $this->lang->line('score_usuario_nuevo_titulo');
            
            // get all perfiles
            $perfiles = $this->perfil_model->get_all('id, nombre',array(),'','','id DESC','');
            $perfiles_ = array();
            foreach ($perfiles as $perfil)
            {
              $perfiles_[$perfil['id']] = $perfil['nombre'];      
            }

            // get all centros
            $this->load->model('centro_model');
            $centros = $this->centro_model->get_all('id, descripcion',array(),'','','id ASC','');
            $centros_ = array();
            foreach ($centros as $centro)
            {
              $centros_[$centro['id']] = $centro['descripcion'];      
            }
            
            $data['perfiles'] = $perfiles_;
            $data['centros'] = $centros_;
            $this->load->view('backend/usuario_nuevo',$data);
        }
        
        public function existe($usuario_id = FALSE){
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>USUARIOS));
            if($usuario_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_usuario_error_enlace'));
                echo "error";
            } 
            if($this->usuario_model->exists('id', $usuario_id))
            {
                $this->editar($usuario_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_usuario_error_enlace').' (#'.$usuario_id.')');
                echo "else";
            }
            
        }
        
        public function editar($usuario_id = FALSE){
            $usuario_sesion = get_user_session();
            $this->verificar_usuario($usuario_id);

            if($usuario_id == FALSE){
                $this->nuevo();
            }
            
            if($this->session->flashdata('mensaje')){
               $data['mensaje'] = $this->session->flashdata('mensaje');
            }elseif ($this->session->flashdata('error')){    
                $data['error'] = $this->session->flashdata('error');
            }

            $data['titulo'] = $this->lang->line('score_usuario_editar_titulo');

            // get all perfiles
            $perfiles = $this->perfil_model->get_all('id, nombre',array(),'','','id ASC','');
            $perfiles_ = array();
            foreach ($perfiles as $perfil){
              $perfiles_[$perfil['id']] = $perfil['nombre'];      
            }

            // get all centros
            $this->load->model('centro_model');
            $centros = $this->centro_model->get_all('id, descripcion',array(),'','','id ASC','');
            $centros_ = array();
            foreach ($centros as $centro){
              $centros_[$centro['id']] = $centro['descripcion'];      
            }
            
            $data['perfiles'] = $perfiles_;
            $data['centros'] = $centros_;
            $data['usuario']=$this->usuario_model->get($usuario_id);
            
            if($usuario_sesion->perfil_id==1){  
                $this->load->view('backend/usuario_editar',$data);
            }else{
                $this->load->view('backend/usuario_centro_editar',$data);
            }
        }

        public function eliminar($usuario_id = FALSE){
            $this->verificar_usuario($usuario_id);
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>USUARIOS));
            
            if($usuario_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_usuario_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            $usuario_sesion = get_user_session();
            if($usuario_sesion->id != $usuario_id)
            {
                if($this->usuario_model->exists('id', $usuario_id))
                {
                    $this->usuario_model->delete($usuario_id);
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_usuario_eliminado'));
                    redirect(base_url($navegacion->navegacion));
                }
                else
                {
                    $this->session->set_flashdata('error', $this->lang->line('score_usuario_error_eliminar'));
                    redirect(base_url($navegacion->navegacion));
                }
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_usuario_error_eliminar')); 
                redirect(base_url($navegacion->navegacion));              
            }
        }        
 
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>USUARIOS));
    		if(isset($_POST['guardar']))
    		{    		    
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $usuario_id = $this->input->post('usuario_id');
                    $fotografia = $this->input->post('fotografia');
                    $fotografia_thumb = $this->input->post('fotografia_thumb');
                       
                    $password = $this->input->post('password');
                    if(!empty($password))
                    {
                        $this->form_validation->set_rules('password', 'Contraseña', 'trim|min_length[8]|password_user_no_exists');
                    }
                    
                    $this->form_validation->set_rules('usuario', 'Usuario', 'trim|required|username_user_no_exists['.$usuario_id.']');
                    $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|email_user_no_exists['.$usuario_id.']');
                    $this->form_validation->set_rules('password', 'Contraseña', 'trim|min_length[8]|password_user_no_exists['.$usuario_id.']');
                }
                if($guardar == NUEVO)
                {
                    $this->form_validation->set_rules('password', 'Contraseña', 'trim|required|min_length[8]');
                    $this->form_validation->set_rules('usuario', 'Usuario', 'trim|required|username_user_no_exists');
                    $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|email_user_no_exists');
                }
                        
                //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
    			$this->form_validation->set_rules('nombres', 'Nombres', 'trim|required');
                $this->form_validation->set_rules('apellidos', 'Apellidos', 'trim|required');
                //$this->form_validation->set_rules('perfil', 'Perfil', 'integer|required');              
                //$this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                                
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($usuario_id);
    			}
                else
                {
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                    
                    $enviar_notificacion = $this->input->post('enviar_notificacion');
                    
                    $nombres = $this->input->post('nombres');
                    $apellidos = $this->input->post('apellidos');
                    $usuario = $this->input->post('usuario');
                    $password = $this->input->post('password');
                    $email = $this->input->post('email');
                    if($usuario_sesion->perfil_id==1){
                        $perfil = $this->input->post('perfil');
                        $centro = $perfil==1?0:$this->input->post('centro');                
                        $estado = $this->input->post('estado');
                    }
                    $guardar = $this->input->post("guardar");
                    
                    /*********************************************************************/
                    // upload fotografia
                    /*********************************************************************/
                    $sw = 1;
                    if (!empty($_FILES['fotografia']['name']))
                    {
                        $this->load->library('upload');
                        $config['upload_path'] = './assets/img/usuarios';
                        $config['allowed_types'] = 'gif|jpg|png|jpeg';    
                        $config['max_size'] = 128; 
                        $config['encrypt_name'] = FALSE;
            
                        $this->upload->initialize($config);
            
                        if (!$this->upload->do_upload('fotografia'))
                        {
                            $sw = 0;
                            
                            $this->session->set_flashdata('error',$this->upload->display_errors());     
                            
                            if($guardar == NUEVO)
                            $this->nuevo();
                            if($guardar == EDICION)
                            $this->editar($usuario_id);
    
                        }
                        else
                        {
                            $data = $this->upload->data();
                            $fotografia = $data['file_name'];

                            // redimensionamos la imagen original
                            $config_resize["source_image"] = './assets/img/usuarios/' . $fotografia;
                            $config_resize['new_image'] = './assets/img/usuarios/' . $fotografia;
                            //$config_resize['overwrite'] = TRUE;
                            $config_resize["width"] = 250;
                            $config_resize["height"] = 250;
                            $this->load->library('image_lib', $config_resize);
                            $this->image_lib->fit();
                            $this->image_lib->clear();
                                                                                    
                            // thumb
                            $source_path = './assets/img/usuarios/' . $fotografia;
                            $target_path = './assets/img/usuarios/' . 'thumb/';
                            $config_thumb = array(
                                'image_library' => 'gd2',
                                'source_image' => $source_path,
                                'new_image' => $target_path,
                                'maintain_ratio' => TRUE,
                                'create_thumb' => TRUE,
                                'thumb_marker' => '_thumb',
                                'width' => 150,
                                'height' => 150
                            );

                            $this->image_lib->initialize($config_thumb);
                            //if (!$this->image_lib->resize())
                            if(!$this->image_lib->fit())
                            {
                                $this->session->set_flashdata('error',$this->image_lib->display_errors()); 
                                if($guardar == NUEVO)
                                    $this->nuevo();
                                if($guardar == EDICION)
                                    $this->editar($usuario_id);
                            }
                            else
                            {
                                $fotografia_thumb = $data['raw_name'].'_thumb'.$data['file_ext'];
                            }
                            $this->image_lib->clear();
                            // fin thumb                                                                                      
                        }
                    }
                    if($sw == 1)
                    {
                        if($guardar == NUEVO)
                        {   
                            if(!isset($fotografia))
                            {
                                $fotografia ='';
                                $fotografia_thumb = '';
                            }
                                                                                    
                            $data = array();
                            $data = array ('nombres' =>$nombres,
                                            'apellidos' => $apellidos,
                                            'usuario' => $usuario,
                                            'password' => $password,
                                            'email' => $email,
                                            'fotografia' => $fotografia,
                                            'thumb'=> $fotografia_thumb,
                                            'perfil' => $perfil,
                                            'centro_formacion' => $centro,
                                            'estado' =>$estado,
                                            'creado_por'=>$usuario_sesion->id);
                                            
                            print_r($data);
                            if($estado == HABILITADO)                
                                $data['habilitado'] = date('Y-m-d H:i:s');
                            if($estado == DESHABILITADO)    
                                $data['deshabilitado'] = date('Y-m-d H:i:s');
                                            
                            $usuario_id = $this->usuario_model->insert($data);
                                                       
                            $add_mensaje = '';                           
                            if (isset($enviar_notificacion) AND $enviar_notificacion == '1')
                            {
                                if($this->usuario_model->exists('id',$usuario_id))
                                {
                                    $usuario = $this->usuario_model->get($usuario_id);
                                    $mensaje = '<p><strong>Nombre de usuario: </strong>'.$usuario->usuario.'</p><p><strong>Contraseña: </strong>'.$usuario->password.'</p>';
                                                
                                    if(!enviar_email($mensaje,$this->lang->line('score_usuario_asunto_email'),$usuario->email))
                                    {
                                       $add_mensaje = '<br/>'.$this->lang->line('score_usuario_error_email');
                                    }                                 
                                }                           
                            }
                            
                            // mensaje del sistema                            
                            $email_notificacion = $this->email_model->get(1);
                            if(!empty($email_notificacion->email_notificacion))
                            {
                                $usuario = $this->usuario_model->get($usuario_id);
                                $perfil = $this->perfil_model->get($usuario->perfil);
                                
                                $mensaje = '<p><strong>Nombre de usuario: </strong>'.$usuario->usuario.'</p><p><strong>Apellidos: </strong>'.$usuario->apellidos.'</p>'.'</p><p><strong>Nombres: </strong>'.$usuario->nombres.'</p><p><strong>Perfil de usuario: </strong>'.$perfil->nombre.'</p>';
                                enviar_email($mensaje,$this->lang->line('score_notificacion_nuevo_usuario'),$email_notificacion->email_notificacion);                                
                            }
                                                                                                                                            
                            $this->session->set_flashdata('mensaje', $this->lang->line('score_usuario_guardado').$add_mensaje);
                            redirect('administrador/usuario/editar/'.$usuario_id);                            
                        }
    
                        if($guardar == EDICION)
                        {                            
                            $data = array();                            
                            $data = array ('nombres' =>$nombres,
                                           'apellidos' => $apellidos,
                                           'usuario' => $usuario,
                                           'email' => $email,
                                           'fotografia' => $fotografia,
                                           'thumb'=> $fotografia_thumb,
                                           'modificado_por'=>$usuario_sesion->id);
                            if($usuario_sesion->perfil_id==1){
                                $data['perfil'] = $perfil;
                                $data['centro_formacion'] = $centro;
                                $data['estado'] = $estado;
                            }
                            if(!empty($password))
                            {
                                $data['password'] = $password;
                            }
                                                                                       
                            if($estado == HABILITADO)                
                                $data['habilitado'] = date('Y-m-d H:i:s');
                            if($estado == DESHABILITADO)    
                                $data['deshabilitado'] = date('Y-m-d H:i:s');
                            
                            if($this->usuario_model->exists('id',$usuario_id))
                            {
                                $this->usuario_model->update($data, $usuario_id);
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_usuario_guardado'));
                            
                                $add_mensaje = '';                           
                                if (isset($enviar_notificacion) AND $enviar_notificacion == '1')
                                {
                                    $usuario = $this->usuario_model->get($usuario_id);
                                    $mensaje = '<p>Nombre de usuario:'.$usuario->usuario.'</p><p>Contraseña:'.$usuario->password.'</p>';
                                    if(!enviar_email($mensaje,$this->lang->line('score_usuario_asunto_email'),$usuario->email))
                                    {
                                       $add_mensaje = '<br/>'.$this->lang->line('score_usuario_error_email');
                                    }                                                                                    
                                }
                                
                                // verificamos si los datos editados cirresponden al usuario en sesion actual
                                if($usuario_id == $usuario_sesion->id)
                                {
                                    $usuario = $this->usuario_model->get($usuario_id);
                                    $perfil_id = $usuario->perfil;
                                    if(!empty($perfil_id) AND $this->perfil_model->exists('id',$perfil_id))
                                    {
                                       $perfil = $this->perfil_model->get_values('nombre',array('id'=>$perfil_id));
                                       $perfil = $perfil->nombre; 
                                    }
                                    else
                                    {
                                       $perfil = '';
                                       $perfil_id = 0; 
                                    }
                                    
                                    if(!empty($usuario->thumb))
                                    {
                                        $fotografia = base_url('assets/img/usuarios/thumb/'.$usuario->thumb);
                                    }
                                    else
                                    {
                                        $fotografia = base_url('assets/img/usuarios/thumb/default.jpg');
                                    }                                    
                                    
                                    $array = array(
                                        'id' => $usuario->id,
                                        'usuario' => $usuario->usuario,
                                        'fotografia' => $fotografia,
                                        'nombres' => $usuario->nombres,
                                        'apellidos' => $usuario->apellidos,
                                        'creado' => $usuario->creado,
                                        'perfil_id' => $perfil_id,                                
                                        'perfil' => $perfil
                                    );
                                    
                                    $this->session->set_userdata('usuario', $array);
                                }
                                
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_usuario_guardado').$add_mensaje);
                                
                                redirect('administrador/usuario/editar/'.$usuario_id);
                                //$this->editar($usuario_id);
                            }
                            else
                            {
                                redirect('administrador/usuario/nuevo');
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
        
        
        public function habilitar()
        {
            $usuario_id = $this->input->post('id');
            
            $usuario_sesion = get_user_session();
            if($usuario_sesion->id != $usuario_id)
            {
                if($this->usuario_model->exists('id', $usuario_id))
                {
                    $usuario = $this->usuario_model->get($usuario_id);
                    if($usuario->estado == DESHABILITADO)
                    {
                        $data = array(
                            'estado'=> HABILITADO
                        );
                        
                        $this->usuario_model->update($data, $usuario_id);
                        
                        $data['id'] = $usuario_id;
                        echo $this->load->view('backend/ajax/habilitar_up',$data,TRUE);  
                    }
                    else
                    {
                        $data = array(
                            'estado'=> DESHABILITADO
                        );
                        
                        $this->usuario_model->update($data, $usuario_id);  
    
                        $data['id'] = $usuario_id;
                        echo $this->load->view('backend/ajax/habilitar_down',$data,TRUE);                
                    }
                }                                
            }
            else
            {
                $data['id'] = $usuario_id;
                echo $this->load->view('backend/ajax/habilitar_up',$data,TRUE);                 
            }
                  
        }
        
        public function habilitar_mensaje()
        {
            $usuario_id = $this->input->post('id');
 
            if(empty($usuario_id))
            {          
                $data['error'] = $this->lang->line('score_usuario_error_enlace');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            } 

            $usuario_sesion = get_user_session();
            
            if($usuario_sesion->id != $usuario_id)
            {                
                if($this->usuario_model->exists('id', $usuario_id))
                {
                    $usuario = $this->usuario_model->get($usuario_id);
                    if($usuario->estado == 0)
                    {                    
                        $data['mensaje'] = $this->lang->line('score_usuario_deshabilitado');
                        echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
                    }
                    else
                    {
                        $data['mensaje'] = $this->lang->line('score_usuario_habilitado');
                        echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
                    }
                }
                else
                {
                    $data['error'] = $this->lang->line('score_usuario_error_enlace').' (#'.$usuario_id.')';
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_usuario_error_deshabilitar');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);                 
            } 
        }
        
        public function iniciar_sesion()
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
                $this->load->view('backend/usuario_iniciar_sesion',$data); 
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
                    $this->form_validation->set_rules('password', 'Contraseña', 'trim|required');
    
        			$this->form_validation->set_message('required', 'Falta el campo %s');
                                    
        			if($this->form_validation->run() == FALSE)
        			{        			 
                      $this->session->set_flashdata('error', validation_errors());
                      $this->iniciar_sesion();                        
        			}
                    else
                    {
                        $password = $this->input->post('password');
                        $usuario = $this->input->post('usuario');
                        $remember = $this->input->post('remember_me');
                        
                        // verificamos que el nombre de usuario y password sean corretos
                        if($this->usuario_model->exists('usuario',$usuario) AND $this->usuario_model->exists('password',$password))
                        {
                            // mas datos del usuario
                            $usuario_ = $this->usuario_model->get_values('nombres, apellidos, fotografia, id',array('password'=>$password, 'usuario'=>$usuario));
                            
                            if(!empty($usuario_->fotografia))
                            {
                                $fotografia = base_url('assets/img/usuarios/'.$usuario_->fotografia);
                            }
                            else
                            {
                                $fotografia = base_url('assets/img/usuarios/default.png');
                            }
                            
                            if($remember)
                            {
                                $this->session->set_userdata('remember_me', TRUE);
                            }
                            
                            // obtenemos el perfil del usuario
                            $perfil_id = $usuario_['perfil'];
                            if(!empty($perfil_id) AND $this->perfil_model->exists('id',$perfil_id))
                            {
                               $perfil = $this->perfil_model->get_values('nombre',array('id'=>$perfil_id));
                               $perfil = $perfil->nombre; 
                            }
                            else
                            {
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
                                'perfil' => $perfil
                            );
                            
                            $this->session->set_userdata('usuario', $array);
                            $this->session->set_userdata('existe_sesion', TRUE);
                            
                            redirect('administrador/escritorio');                              
                        }
                        else
                        {
                            $this->session->set_flashdata('error', 'El inicio de sesión no es válido.');
                            $this->iniciar_sesion();
                        }

                    }  
                }
            }
            else
            {
                redirect('administrador/usuario/iniciar_sesion');       
            }
        }

        // salimos de la sesion
        public function cerrar_sesion()
        {      
            // Destruimos los datos de la session
            $this->session->sess_destroy();
            redirect('administrador/usuario/iniciar_sesion');
            //$this->iniciar_sesion();
        }

        public function verificar_usuario($usuario_id){
            $usuario_sesion = get_user_session();
            if($usuario_sesion->id!=$usuario_id){
                if($usuario_sesion->perfil_id!=1){
                    redirect(base_url('index.php/administrador/escritorio'));
                }
            }
        }
    }