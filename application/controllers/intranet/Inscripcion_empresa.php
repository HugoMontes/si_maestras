<?php
    class Inscripcion_empresa extends CI_Controller{
        public function __construct()
        {
            parent::__construct();

            existe_sesion_urse();
                        
            // modelos
            $this->load->model('intranet/postulacion_empresa_model');  
            $this->load->model('intranet/convocatoria_empresa_model');  
            $this->load->model('intranet/ciudad_inscripcion_model');                  
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>INSCRIPCION_EMPRESAS)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('nombre_empresa','convocatoria_id');
            
            $opcion_convocatoria_id = 0;  
            $buscar = '';       
            if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
                $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' "." AND bloqueado = ".NO_BLOQUEADO;
            
                $config['add_pars']['search_key'] = $search_key;
                $config['add_pars']['search_in'] = $search_in;
                
                if($search_in == 'convocatoria_id'){
                   $opcion_convocatoria_id = $search_key;                     
                }elseif($search_in == 'nombre'){
                   $buscar = $search_key;  
                }                           
            }

            $data['opcion_convocatoria_id'] = $opcion_convocatoria_id; 
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
            
            $count = $this->postulacion_empresa_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/intranet/inscripcion_empresa/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'inscripciones';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['inscripciones'] = $this->postulacion_empresa_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
            ########################################################################################  
            // convocatorias
            $convocatorias = $this->convocatoria_empresa_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id DESC','');
            $convocatorias_ = array();
            $convocatorias_[0] = '- Seleccionar convocatoria -';  
            foreach ($convocatorias as $convocatoria)
            {
              $convocatorias_[$convocatoria['id']] = $convocatoria['nombre'];      
            }
            $data['convocatorias'] = $convocatorias_;  
            $data['titulo'] = $this->lang->line('score_inscripcion_empresas');
            $this->load->view('intranet/inscripcion_empresas',$data);
    	}
        
        public function existe($inscripcion_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>INSCRIPCION_EMPRESAS));
            
            if($inscripcion_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_inscripcion_empresa_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->convocatoria_empresa_model->exists('id', $inscripcion_id))
            {
                $this->editar($inscripcion_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_inscripcion_empresa_error_enlace').' (#'.$inscripcion_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($inscripcion_id = FALSE)
        {
            if($inscripcion_id == FALSE)
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

            $data['titulo'] = $this->lang->line('score_inscripcion_empresa_editar_titulo');
            
            $data['inscripcion']=$this->postulacion_empresa_model->get($inscripcion_id);
            
            // ciudades habilitadas para la inscripcion
            $ciudades_inscripcion = array();
            $ciudades = $this->ciudad_inscripcion_model->get_all('id, nombre',array('estado'=>PUBLICADO),'','','','');
            foreach($ciudades as $ciudad):
               $ciudad = (object)$ciudad;  
               $ciudades_inscripcion[$ciudad->id] = $ciudad->nombre;                  
            endforeach;
            $data['ciudades_inscripcion'] = $ciudades_inscripcion;               
            
            // convocatorias
            $convocatorias = $this->convocatoria_empresa_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id DESC','');
            $convocatorias_ = array();
            foreach ($convocatorias as $convocatoria)
            {
              $convocatorias_[$convocatoria['id']] = $convocatoria['nombre'];      
            }
            $data['convocatorias'] = $convocatorias_;              
                   
            $this->load->view('intranet/inscripcion_empresa_editar',$data);
        }

        public function eliminar($inscripcion_id = FALSE)
        {
            // obtenemos los datos del usuario administrador
            $usuario_sesion = get_user_session();
            
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>INSCRIPCION_EMPRESAS));
            if($inscripcion_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_inscripcion_empresa_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->postulacion_empresa_model->exists('id', $inscripcion_id))
            {

                $data = array();
                $data = array ('bloqueado' =>BLOQUEADO,
                               'estado'=> DESPUBLICADO, 
                               'modificado_por'=>$usuario_sesion->id);     
                
                $this->postulacion_empresa_model->update($data, $inscripcion_id);
                
                $this->session->set_flashdata('mensaje', $this->lang->line('score_inscripcion_empresa_eliminada'));                    
                                                 
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_inscripcion_empresa_error_enlace').' (#'.$inscripcion_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        


        public function guardar()
    	{
    		if(isset($_POST['guardar']) AND $_POST['guardar'] == EDICION)
    		{       
                $inscripcion_id = $this->input->post('inscripcion_id');
              
                // Paso 1
                $this->form_validation->set_rules('nombre_empresa', 'Nombre de la empresa', 'trim|required');
                $this->form_validation->set_rules('nit', 'NIT', 'trim|required|is_natural');      
                $this->form_validation->set_rules('telefono', 'Teléfono', 'trim|required|is_natural');                                        
                $this->form_validation->set_rules('nombre_gerente', 'Apellidos y Nombres del Gerente', 'trim|required');
                $this->form_validation->set_rules('ciudad_id', 'Ciudad', 'trim|required');
                $this->form_validation->set_rules('convocatoria_id', 'Convocatoria', 'trim|required');
                
                // Paso 4                    
                $this->form_validation->set_rules('nombre_representante_legal', 'Nombres y Apellidos del representante legal', 'trim|required');
                $this->form_validation->set_rules('cargo_representante_legal', 'Cargo del representante legal', 'trim|required');
                $this->form_validation->set_rules('email_representante_legal', 'E-mail del representante legal', 'trim|required|valid_email');
                $this->form_validation->set_rules('celular_representante_legal', 'Celular del representante legal', 'trim|required|is_natural');                  
                                                                  
    			$this->form_validation->set_message('required', 'Falta el campo %s');
          
    			if($this->form_validation->run() == FALSE)
    			{			 
                    $this->session->set_flashdata('error', validation_errors());
                    $this->editar($inscripcion_id); 
    			}
                else
                {
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    // Paso 1                        
                    $nombre_empresa = $this->input->post('nombre_empresa',TRUE);
                    $nit = $this->input->post('nit',TRUE);
                    $telefono = $this->input->post('telefono',TRUE);                        
                    $nombre_gerente = $this->input->post('nombre_gerente',TRUE);
                    $ciudad_id = $this->input->post('ciudad_id',TRUE);
                    $direccion_gerencia = $this->input->post('direccion_gerencia',TRUE);
                    $afiliado = $this->input->post('afiliado');
                    $nombre_afiliado = $this->input->post('nombre_afiliado',TRUE);
                    // identificador de convocatoria
                    $convocatoria_id = $this->input->post('convocatoria_id');                    
                    
                    if(empty($afiliado))
                        $afiliado = AFILIADO_NO;
                    
                    // Paso 3
                    $array_modulos = array();
                    $modulo_1 = MODULO_1; // por defecto seleccionado
                    $modulo_2 = $this->input->post('modulo_2');
                    $modulo_3 = $this->input->post('modulo_3');
                    $modulo_4 = $this->input->post('modulo_4');
                    $modulo_5 = $this->input->post('modulo_5');                            
                    
                    
                    $array_modulos[] = $modulo_1;
                    if($modulo_2)
                        $array_modulos[] = $modulo_2;
                    if($modulo_3)
                        $array_modulos[] = $modulo_3;
                    if($modulo_4)
                        $array_modulos[] = $modulo_4;
                    if($modulo_5)
                        $array_modulos[] = $modulo_5;
                        
                    $modulos = implode(',',$array_modulos);    
                                                                           
                    // Paso 4
                    $nombre_representante_legal = $this->input->post('nombre_representante_legal');
                    $cargo_representante_legal = $this->input->post('cargo_representante_legal');
                    $email_representante_legal = $this->input->post('email_representante_legal');
                    $celular_representante_legal = $this->input->post('celular_representante_legal');
                    
                    // Paso 5
                    $medio_aviso_id = $this->input->post('medio_aviso_id');
                    if($medio_aviso_id)
                        $medio_aviso_id = $medio_aviso_id;
                    else
                        $medio_aviso_id = SIN_MEDIO_AVISO;    
                    
                    $medio_nota = $this->input->post('medio_nota');                                                                    
                    
                    $data = array();                                
                    $data = array ( 'convocatoria_id' => $convocatoria_id,
                                    'nombre_empresa' =>$nombre_empresa,
                                    'nit' =>$nit,
                                    'telefono'=>$telefono,
                                    'nombre_gerente'=>$nombre_gerente,
                                    'ciudad_id'=>$ciudad_id,
                                    'direccion_gerencia'=>$direccion_gerencia,
                                    'afiliado'=>$afiliado,
                                    'nombre_afiliado'=>$nombre_afiliado,
                                    'modulos_interes'=>$modulos,
                                    'nombre_representante_legal'=>$nombre_representante_legal,
                                    'cargo_representante_legal'=>$cargo_representante_legal,
                                    'email_representante_legal'=>$email_representante_legal,
                                    'celular_representante_legal'=>$celular_representante_legal,
                                    'medio_aviso_id'=>$medio_aviso_id,
                                    'medio_nota'=>$medio_nota,
                                    'modificado_por'=>$usuario_sesion->id                                     
                                    );                
                                    
                    if($this->postulacion_empresa_model->exists('id',$inscripcion_id))
                    {                                                                                 
                        $this->postulacion_empresa_model->update($data,$inscripcion_id);
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_inscripcion_empresa_guardada')); 
                        redirect('intranet/inscripcion_empresa/editar/'.$inscripcion_id);                                                            
                    }
                    else
                    {
                        redirect('intranet/inscripcion_empresa'); 
                    }                                                                           
    		    } 
            }
            else
            {
                redirect('intranet/inscripcion_empresa');     
            }           
        } 
    }