<?php
class Especialista_solicitud extends CI_Controller{

    public function __construct(){
        parent::__construct();  
        // modelos
        $this->load->model('especialista_ciudad_model');
        $this->load->model('especialista_especialidad_model'); 
        $this->load->model('especialista_empleador_model');
        $this->load->model('especialista_solicitud_model'); 
        $this->load->model('menu_model');
        $this->load->model('modulo_model');   
        $this->load->model('pagina_predisenada_model');
        // bibliotecas
        $this->load->library('nested_set');
        // helpers
        $this->load->helper('security');
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function index(){
        if($this->session->flashdata('mensaje')){
            $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif($this->session->flashdata('error')){    
            $data['error'] = $this->session->flashdata('error');
        }
       	  
        $pagina_especialistas = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'contacto-maestras-constructoras'));
        $this->pagina_predisenada_model->update(array('hits'=>$pagina_especialistas->hits + 1),$pagina_especialistas->id);  
        
        $data['titulo'] = $this->lang->line('caboco_sitio_titulo_solicitud_especialista');
        $data['metadescripcion'] = $pagina_especialistas->metadescripcion;
        $data['metapalabras_clave'] = $pagina_especialistas->metapalabras_clave;
        $data['menus'] = $this->nested_set->getMenuBootstrap(); 
        $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO)); 
        $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
        if($this->input->post('txtCiudad')!==null AND $this->input->post('txtEspecialidad')!==null){
            $data['ciudad']=$this->especialista_ciudad_model->get($_POST['txtCiudad']);
            $data['especialista']=$this->especialista_especialidad_model->get($_POST['txtEspecialidad']);
            $data['especialidades'] = $this->especialista_especialidad_model->get_all('',array(),'','','orden asc','');
        }else{
            redirect('/');
        }
        $this->load->view('frontend/especialista_formulario_solicitud',$data);
    }

    public function save_solicitud(){
        $idCiudad = $this->input->post('txtCiudad'); 
        $idEspecialidad=$_POST['txtEspecialidad'];
        $nroTrab=$_POST['txtNumero'];
        $fechaIni=$_POST['txtFechaInicio'];
        $fechaFin=$_POST['txtFechaFin'];
        $nombre = $this->input->post('txtNombre');
        $correo = $this->input->post('txtCorreo');
        $direccion = $this->input->post('txtDireccion');
        /*
        echo 'Id Ciudad: '.$idCiudad.'<br/>';
        echo 'Id Especialidad: '.$idEspecialidad.'<br/>';
        echo 'Nro trab: '.$nroTrab.'<br/>';
        echo 'Fech Ini: '.$fechaIni.'<br/>';
        echo 'Fech Fin: '.$fechaFin.'<br/>';
        echo 'Nombre: '.$nombre.'<br/>';
        echo 'Email: '.$correo.'<br/>';
        echo 'Direccion: '.$direccion.'<br/>';  
        */
        $data=array(
            'nombre'=>$nombre,
            'correo'=>$correo,
            'direccion'=>$direccion,
        );
        $empleador_id=$this->especialista_empleador_model->insert($data);
        $data=array(
            'cantidad'=>$nroTrab,
            'fecha_ini'=>$fechaIni,
            'fecha_fin'=>$fechaFin,
            'id_empleador'=>$empleador_id,
            'id_ciudad'=>$idCiudad,
            'id_especialidad'=>$idEspecialidad,
            'ctr_formulario_satisfaccion'=>0,
        );
        $id_solicitud=$this->especialista_solicitud_model->insert($data);
 
        $this->enviarEmail($correo,$id_solicitud);
        $pagina_especialistas = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'contacto-maestras-constructoras'));
        $this->pagina_predisenada_model->update(array('hits'=>$pagina_especialistas->hits + 1),$pagina_especialistas->id);  
        $data=array();
        $data['titulo'] = $this->lang->line('caboco_sitio_titulo_solicitud_especialista');
        $data['metadescripcion'] = $pagina_especialistas->metadescripcion;
        $data['metapalabras_clave'] = $pagina_especialistas->metapalabras_clave;
        $data['menus'] = $this->nested_set->getMenuBootstrap(); 
        $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO)); 
        $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
        $this->load->view('frontend/especialista_solicitud_enviada',$data);
    }
/*
    public function guardar_solicitud(){
        if(!empty($_POST)){
            $idCiudad = $this->input->post('txtIdCiudad'); 
            $nombre = $this->input->post('txtNombre');
            $correo = $this->input->post('txtCorreo');
            $direccion = $this->input->post('txtDireccion');
            $data=array(
                'nombre'=>$nombre,
                'correo'=>$correo,
                'direccion'=>$direccion,
            );
            $empleador_id=$this->especialista_empleador_model->insert($data);

            $vectorIdEspecialidad=$_POST['txtIdEspecialidad'];
            $vectorNroTrab=$_POST['txtNumero'];
            $vectorFechaIni=$_POST['txtFechaInicio'];
            $vectorFechaFin=$_POST['txtFechaFin'];
            for($i=0;$i<count($vectorIdEspecialidad);$i++){
                $id_esp=$vectorIdEspecialidad[$i];
                $cantidad=$vectorNroTrab[$i];
                $fechaIni=$vectorFechaIni[$i];
                $fechaFin=$vectorFechaFin[$i];
                $data=array(
                    'cantidad'=>$cantidad,
                    'fecha_ini'=>$fechaIni,
                    'fecha_fin'=>$fechaFin,
                    'id_empleador'=>$empleador_id,
                    'id_ciudad'=>$idCiudad,
                    'id_especialidad'=>$id_esp,
                );
                $this->especialista_solicitud_model->insert($data);      
            }
        }
        $this->enviarEmail($correo,$empleador_id);
        $pagina_especialistas = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'contacto-maestras-constructoras'));
        $this->pagina_predisenada_model->update(array('hits'=>$pagina_especialistas->hits + 1),$pagina_especialistas->id);  
        $data=array();
        $data['titulo'] = $this->lang->line('caboco_sitio_titulo_solicitud_especialista');
        $data['metadescripcion'] = $pagina_especialistas->metadescripcion;
        $data['metapalabras_clave'] = $pagina_especialistas->metapalabras_clave;
        $data['menus'] = $this->nested_set->getMenuBootstrap(); 
        $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO)); 
        $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
        $this->load->view('frontend/especialista_solicitud_enviada',$data);
    }
*/
    private function enviarEmail($email,$id){
        $logo=$this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO)); 
        $to = $email;
        $subject = 'Solicitud especialistas';
        $message = '
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title></title>
        </head>
        <body>
            <table width="100%" style="font-family: Verdana;">
                <tr>
                    <td align="center" >
                        <table id="contenido" style="min-width:332px; max-width:600px; border:1px solid #F0F0F0; border:1px solid #C0C0C0; border-bottom-left-radius:3px; border-bottom-right-radius:3px;">
                            <tbody>
                                <tr>
                                    <td style="padding: 10px;">
                                        <div class="container-image" style="background: #fff;">
                                            <img src="'.base_url('assets/img/logo/'.$logo->contenido).'" alt="">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background: #f8d38a; font-size: 24px; padding: 20px;">
                                        <p>Se ha procesado correctamente su solicitud.</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;">
                                        <div style="font-size: 14px;">
                                            <p>Recientemente a realizado una solicitud de especialistas mediante el formulario de <a href="http://maestrasconstructoras.org/">Maestras Constructoras</a>.</p>
                                            <p>Ahora usted puede acceder al listado del especialistas mediante el siguiente botón:</p>
                                            <p><center>
                                                <a href="'.base_url('index.php/listar_especialistas/'.$id).'" style="display: inline-block; padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: 400; line-height: 1.42857143; text-align: center; white-space: nowrap; vertical-align: middle; -ms-touch-action: manipulation; touch-action: manipulation; cursor: pointer; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; background-image: none; border: 1px solid transparent; border-radius: 4px; color: #fff; background-color: #337ab7; text-decoration:none;">
                                                    Ver listado de especialistas
                                                </a></center>
                                             </p>
                                            <p>Si usted no hizo la solicitud, ignorar este correo electrónico.</p>
                                        </div>
                                        <p style="font-size: 12px; color: #9e9e9e">Esta dirección de correo electrónico no admite respuestas. Para obtener más información ingresar a la pagina <a href="http://maestrasconstructoras.org/">Maestras Constructoras</a>.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table>
        </body>
        </html>';

        $from = "Maestras Constructoras";
        //$Bcc = "example@example.com";

        // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\n";
        $headers .= 'Content-type: text/html; charset="UTF-8"' . "\n";

        // Additional headers
        $headers .= 'To: ' .$to. "\n";
        //$headers .= 'From: ' .$from. "<maestrasconstructoras>\n";
        $headers .= 'From: ' .$from. "<info@maestrasconstructoras.org>\n";
        //  $headers .= 'Bcc: '.$Bcc. "\r\n";

        // Send the email
        if(mail($to,$subject,$message,$headers)){
            return true;
        }
        return false;
    }

    public function listar_especialistas($id){
        $this->load->helper('caboco_helper');
        $especialistas=$this->especialista_solicitud_model->get_especialistas_by_id_solicitud($id);
  

        
        $i=0;
        foreach ($especialistas as $e) {
            $especialidades=$this->especialista_solicitud_model->get_especialidad_by_id_trabajador($e['id_trabajador']);
            $especialistas[$i]['especialidades']=$especialidades;
            $i++;
            /*
            echo $e['id_trabajador'].'<br>';
            //print_r($especialidades);
            //echo count($especialidades);
            echo '<br>=============================<br>';
            */            
        }
        
        $pagina_especialistas = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'contacto-maestras-constructoras'));
        $this->pagina_predisenada_model->update(array('hits'=>$pagina_especialistas->hits + 1),$pagina_especialistas->id);  
        $data=array();
        $data['titulo'] = $this->lang->line('caboco_sitio_titulo_solicitud_especialista');
        $data['metadescripcion'] = $pagina_especialistas->metadescripcion;
        $data['metapalabras_clave'] = $pagina_especialistas->metapalabras_clave;
        $data['menus'] = $this->nested_set->getMenuBootstrap(); 
        $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO)); 
        $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
        $data['especialistas'] = $especialistas;
        // $data['selecesp'] = $this->especialista_solicitud_model->get_id_especialidades_by_id_empleador($id);
        $this->load->view('frontend/especialista_respuesta_consulta',$data);        
    }

    public function enviar_formulario_satisfaccion(){
        $solicitudes=$this->especialista_solicitud_model->get_all_solicitudes_satisfaccion();
        if(isset($solicitudes)){
            foreach ($solicitudes as $sol) {
                //echo $sol->id.', '.$sol->correo.', '.$sol->fecha_ini.', '.$sol->fecha_fin.', '.date('d/m/Y',strtotime($sol->creado)).'<br>';
                if($this->envia_mail_satisfaccion($sol)){
                    $data=array(
                        'ctr_formulario_satisfaccion'=>1,
                    );
                    $this->especialista_solicitud_model->update($data,$sol->id);
                }
            }
        }
    }

    public function envia_mail_satisfaccion($solicitud){ 
        $logo=$this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO)); 
        $to = $solicitud->correo;
        $subject = 'Maestras Constructoras - Formulario de satisfaccion';
        $message = '
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <title></title>
        </head>
        <body>
            <table width="100%" style="font-family: Verdana;">
                <tr>
                    <td>
                        <table id="contenido" style="min-width:332px; max-width:600px; border:1px solid #F0F0F0; border:1px solid #C0C0C0; border-bottom-left-radius:3px; border-bottom-right-radius:3px;">
                            <tbody>
                                <tr>
                                    <td style="padding: 10px;">
                                        <div class="container-image" style="background: #fff;">
                                            <img src="'.base_url('assets/img/logo/'.$logo->contenido).'" alt="">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="background: #f8d38a; font-size: 24px; padding: 20px;">
                                        <p>Encuesta de satisfacción:</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="padding: 10px;">
                                        <div style="font-size: 14px;">
                                            <p><center>En fecha '.date('d/m/Y',strtotime($solicitud->creado)).' usted ha solicitado los servicios del sitio web: maestrasconstructoras.org. A fin de mejorar, agradeceriamos conocer su opinion acerca del servicio recibido. Para ello agradeceriamos responda una pequeña encuesta haciendo clic en el siguiente enlace:</center></p>
                                            <p>
                                                <center>
                                                    <a href="'.base_url('index.php/llenar/formulario/satisfaccion/'.$solicitud->id).'" style="display: inline-block; padding: 6px 12px; margin-bottom: 0; font-size: 14px; font-weight: 400; line-height: 1.42857143; text-align: center; white-space: nowrap; vertical-align: middle; -ms-touch-action: manipulation; touch-action: manipulation; cursor: pointer; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; background-image: none; border: 1px solid transparent; border-radius: 4px; color: #fff; background-color: #337ab7; text-decoration:none;">
                                                        Ir a encuesta
                                                    </a>
                                                </center>
                                             </p>
                                            <p><center>El llenado del formulario de satisfaccion permite mejorar nuestros servios.</center></p>
                                            <p><center>Gracias por su apoyo. Si usted no contacto con ninguna maestra constructora porfavor ignore este mensaje.</center></p>
                                        </div>
                                        <p style="font-size: 12px; color: #9e9e9e">Esta dirección de correo electrónico no admite respuestas. Para obtener más información ingresar a la pagina <a href="http://maestrasconstructoras.org/">Maestras Constructoras</a>.</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table>
        </body>
        </html>';

        $from = "Maestras Constructoras";
        //$Bcc = "example@example.com";

        // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\n";
        $headers .= 'Content-type: text/html; charset="UTF-8"' . "\n";

        // Additional headers
        $headers .= 'To: ' .$to. "\n";
        //$headers .= 'From: ' .$from. "<maestrasconstructoras>\n";
        $headers .= 'From: ' .$from. "<info@maestrasconstructoras.org>\n";
        //  $headers .= 'Bcc: '.$Bcc. "\r\n";

        // Send the email
        if(mail($to,$subject,$message,$headers)){
            return true;
        }
        return false;
    }

    public function formulario_satisfaccion($id){
        $this->load->helper('caboco_helper');
        $pagina_especialistas = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'contacto-maestras-constructoras'));
        $this->pagina_predisenada_model->update(array('hits'=>$pagina_especialistas->hits + 1),$pagina_especialistas->id);  
        $data=array();
        $data['titulo'] = $this->lang->line('caboco_sitio_titulo_solicitud_especialista');
        $data['metadescripcion'] = $pagina_especialistas->metadescripcion;
        $data['metapalabras_clave'] = $pagina_especialistas->metapalabras_clave;
        $data['menus'] = $this->nested_set->getMenuBootstrap(); 
        $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO)); 
        $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
        $this->load->view('frontend/especialista_formulario_satisfaccion',$data);        
    }
    /*
    public function genera_codigo(){
        $rand_part = str_shuffle("abcdefghijklmnopqrstuvwxyz0123456789".uniqid());
        echo $rand_part;
    }
    */
}