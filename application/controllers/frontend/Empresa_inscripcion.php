<?php
class Empresa_inscripcion extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');   
        $this->load->model('email_model');           
        $this->load->model('intranet/ciudad_inscripcion_model');
        $this->load->model('intranet/convocatoria_empresa_model');             
        $this->load->model('intranet/postulacion_empresa_model');                        
        $this->load->model('pagina_predisenada_model');
        
        // bibliotecas
        $this->load->library('nested_set');
        
        // helpers
        $this->load->helper('security');
        
        
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
        
        // ademas verificamos que exista una convocatoria de empresas publicada
        $pagina_empresa_inscripcion= $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'inscripciones-empresas-score-bolivia'));
        if($pagina_empresa_inscripcion->estado == PUBLICADO AND existe_convocatoria_empresa()){
           $this->pagina_predisenada_model->update(array('hits'=>$pagina_empresa_inscripcion->hits + 1),$pagina_empresa_inscripcion->id);  
           $data['titulo'] = $this->lang->line('score_sitio_inscripcion_empresa');
           $data['metadescripcion'] = $pagina_empresa_inscripcion->metadescripcion;
           $data['metapalabras_clave'] = $pagina_empresa_inscripcion->metapalabras_clave;
           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO)); 
           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
           $ciudades_inscripcion = array();
           $ciudades = $this->ciudad_inscripcion_model->get_all('id, nombre',array('estado'=>PUBLICADO),'','','','');
           foreach($ciudades as $ciudad):
              $ciudad = (object)$ciudad;  
              $ciudades_inscripcion[$ciudad->id] = $ciudad->nombre;                  
           endforeach;
           
           $data['ciudades_inscripcion'] = $ciudades_inscripcion;   
           $convocatoria = get_convocatoria_empresa_publicada();
           $convocatoria = (object)$convocatoria;
           $data['convocatoria'] = $convocatoria;
           $data['widget'] = $this->recaptcha->getWidget();
           $data['script'] = $this->recaptcha->getScriptTag(); 
                   
           $this->load->view('frontend/empresa_inscripcion',$data);        
        }
        else
        {
           redirect('404_override');
        }              
	}

    public function guardar()
	{
		if(isset($_POST['guardar']) AND $_POST['guardar'] == NUEVO)
		{ 
            $recaptcha = $this->input->post('g-recaptcha-response');
            if (!empty($recaptcha))
            //if(TRUE)
            {
                $response = $this->recaptcha->verifyResponse($recaptcha);
                if (isset($response['success']) and $response['success'] === true)
                //if(TRUE)
                {
                    // validamos el formulario
                                       
                    // Paso 1
                    $this->form_validation->set_rules('nombre_empresa', 'Nombre de la empresa', 'trim|required');
                    $this->form_validation->set_rules('nit', 'NIT', 'trim|required|is_natural');      
                    $this->form_validation->set_rules('telefono', 'Teléfono', 'trim|required|is_natural');                                        
                    $this->form_validation->set_rules('nombre_gerente', 'Apellidos y Nombres del Gerente', 'trim|required');
                    $this->form_validation->set_rules('ciudad_id', 'Ciudad', 'trim|required');
                    
                    // Paso 4                    
                    $this->form_validation->set_rules('nombre_representante_legal', 'Nombres y Apellidos del representante legal', 'trim|required');
                    $this->form_validation->set_rules('cargo_representante_legal', 'Cargo del representante legal', 'trim|required');
                    $this->form_validation->set_rules('email_representante_legal', 'E-mail del representante legal', 'trim|required|valid_email');
                    $this->form_validation->set_rules('celular_representante_legal', 'Celular del representante legal', 'trim|required|is_natural');
                    $this->form_validation->set_rules('acepto_terminos', 'Acepto términos y condiciones', 'callback_acepto_terminos');                    
                                                                      
        			$this->form_validation->set_message('required', 'Falta el campo %s');
              
        			if($this->form_validation->run() == FALSE)
        			{			 
                        $this->session->set_flashdata('error', validation_errors());
                        $this->index(); 
        			}
                    else
                    {                        
                        // Paso 1                        
                        $nombre_empresa = $this->input->post('nombre_empresa',TRUE);
                        $nit = $this->input->post('nit',TRUE);
                        $telefono = $this->input->post('telefono',TRUE);                        
                        $nombre_gerente = $this->input->post('nombre_gerente',TRUE);
                        $ciudad_id = $this->input->post('ciudad_id',TRUE);
                        $direccion_gerencia = $this->input->post('direccion_gerencia',TRUE);
                        $afiliado = $this->input->post('afiliado');
                        $nombre_afiliado = $this->input->post('nombre_afiliado',TRUE);
                        
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
                        $acepto_terminos = $this->input->post('acepto_terminos');
                        
                        // Paso 5
                        $medio_aviso_id = $this->input->post('medio_aviso_id');
                        if($medio_aviso_id)
                            $medio_aviso_id = $medio_aviso_id;
                        else
                            $medio_aviso_id = SIN_MEDIO_AVISO;    
                        
                        $medio_nota_5 = $this->input->post('medio_nota_5');
                        $medio_nota_6 = $this->input->post('medio_nota_6');
                        if(!empty($medio_nota_5))
                            $medio_nota = $medio_nota_5;
                        elseif(!empty($medio_nota_6))
                            $medio_nota = $medio_nota_6;
                        else
                            $medio_nota = '';                                
                        
                        // insert base de datos
                        // obtenemos la convocatoria publicada actualmente
                        $convocatoria = get_convocatoria_empresa_publicada();
                        $convocatoria = (object)$convocatoria;
                        $data = array();                                
                        $data = array ( 'convocatoria_id' => $convocatoria->id,
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
                                        'acepto_terminos'=>$acepto_terminos,
                                        'medio_aviso_id'=>$medio_aviso_id,
                                        'medio_nota'=>$medio_nota,
                                        'bloqueado'=>NO_BLOQUEADO,
                                        'estado'=>PUBLICADO                                        
                                        );                
                                        
                        $postulacion_empresa_id = $this->postulacion_empresa_model->insert($data);
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_sitio_inscripcion_empresa_guardada'));
                        
                        // enviamos un resumen de la inscripcion al correo de notificacion
                        $ciudad = $this->ciudad_inscripcion_model->get($ciudad_id);
                        $email_notificacion = $this->email_model->get(1);
                        $mensaje = '<p><strong>Nombre de la empresa: </strong>'.$nombre_empresa.'</p><p><strong>Ciudad: </strong>'.$ciudad->nombre.'</p><p><strong>Nombre del gerente:</strong></p>'.$nombre_gerente;
                          
                                    
                        enviar_email($mensaje,$this->lang->line('score_inscripcion_empresa_notificacion'),$email_notificacion->email_notificacion);
                        
                        redirect('inscripciones-empresas-score-bolivia');                                    
        			}                                        
                }
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_sitio_inscripcion_empresa_error_recaptcha'));
                //redirect('inscripciones-empresas-score-bolivia');
                $this->index();   
            }
		}
        else
        {
            redirect('inscripciones-empresas-score-bolivia');
        }
	}
    
    function acepto_terminos() {
        if (isset($_POST['acepto_terminos'])) return true;
            $this->form_validation->set_message('acepto_terminos', 'Por favor, lea y acepte los términos y condiciones.');
        return false;
    }    
}