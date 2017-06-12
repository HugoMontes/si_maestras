<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


if ( ! function_exists('get_palabras'))
{
    function get_palabras($str,$number)
    {
       $array_str = explode(" ", $str);
       if(isset($array_str[$number]))
       {
         return implode(" ",array_slice($array_str, 0, $number))."...";
       }
       return $str;
    }
}


if ( ! function_exists('enviar_email'))
{
    function enviar_email($mensaje = '', $asunto = '', $email_destino)
    {              
        $email_remitente='info@maestrasconstructoras.org';
        
        $config = Array(
        'mailtype'  => 'html', 
        'charset' => 'utf-8',
        'wordwrap' => TRUE
        );
        
        $CI =& get_instance();
        $CI->load->library('email',$config); 	
		$CI->email->from($email_remitente, 'Maestras Constructoras');
		$CI->email->to($email_destino);
		
		$CI->email->subject($asunto);
		$CI->email->message($mensaje);
		
        if ( ! $CI->email->send())
            return FALSE;
        else
            return TRUE;
        //echo $this->email->print_debugger();		
    }
}

if(!function_exists('get_primera_palabra'))    
{
    function get_primera_palabra($string = '')
    {
        $array = explode(' ',trim($string));
        return $array[0];    
    }
}

if(!function_exists('existe_sesion_urse'))    
{
    function existe_sesion_urse()
    {
       $CI =& get_instance();
       $usuario_sesion = get_user_session();
       
       $CI->load->model('perfil_model');
       
       $perfil_urse = $CI->perfil_model->get_values('id', array('nombre'=>'URSE'));
       
       if($perfil_urse->id != $usuario_sesion->perfil_id)
       {
           $CI->session->set_flashdata('error','¡Por favor inicia sesión como usuario URSE!');
           redirect('administrador/sesion');        
       }      
    }
}


if(!function_exists('existe_sesion_inscripcion'))    
{
    function existe_sesion_inscripcion()
    {
       $CI =& get_instance();
       $CI->load->model('intranet/postulacion_formador_model');
       $postulacion_formador = $CI->session->userdata('postulacion_formador');
       if(!isset($postulacion_formador) OR empty($postulacion_formador))
       {
            $CI->session->set_flashdata('error','¡Por favor inicia sesión!');
            redirect('incripciones-previo-formadores-score-bolivia');       
       } 
       else
       {
            // verificamos si existe el identificador de postulacion 
            $postulacion_formador = (object)$postulacion_formador;
            if($CI->postulacion_formador_model->exists('id',$postulacion_formador->id))
            {
                // verificamos que la postulacion no este bloqueada
                $postulacion_registro = $CI->postulacion_formador_model->get($postulacion_formador->id);
                if($postulacion_registro->bloqueado == BLOQUEADO)
                {
                    $CI->session->set_flashdata('error','¡La postulación ya fue enviada!');
                    redirect('incripciones-previo-formadores-score-bolivia');     
                }
            }
       }    
    }
}   
 
if(!function_exists('existe_sesion_perfil'))    
{
    function existe_sesion_perfil($perfiles_autorizados = '')
    {
       $CI =& get_instance();
       $usuario_sesion = get_user_session();
       
       $CI->load->model('perfil_model');
       
       if(!empty($perfiles_autorizados))
       {
            $sw = FALSE;    
            $array_perfiles_autorizados = explode(',',$perfiles_autorizados);
            for($i = 0; $i < count($array_perfiles); $i++)
            {
                if($usuario_sesion->perfil_id == $array_perfiles_autorizados[i])
                {
                    $sw = TRUE;
                }
            }        
            
            if(!$sw)
            {
                $CI->session->set_flashdata('error','¡Por favor inicia sesión como usuario autorizado para poder acceder a esta área');
                redirect('intranet/sesion');                  
            }
       }
   
    }
}

if(!function_exists('es_item_usuario'))    
{
    function es_item_usuario($id){
       $usuario_sesion = get_user_session();
       if($id==$usuario_sesion->id or $usuario_sesion->perfil_id==SUPER){
        return true;
       }
       return false;
    }
}

if(!function_exists('es_super_usuario'))    
{
    function es_super_usuario(){
       $usuario_sesion = get_user_session();
       if($usuario_sesion->perfil_id==SUPER){
        return true;
       }
       return false;
    }
}

if(!function_exists('existe_sesion'))    
{
    function existe_sesion()
    {
       $CI =& get_instance();
       $existe_sesion = $CI->session->userdata('existe_sesion');
       if(!isset($existe_sesion) OR $existe_sesion != TRUE)
       {
        //echo 'You don\'t have permission to access this page. <a href="../login">Login</a>';    
        //die();
        
        $CI->session->set_flashdata('error','¡Por favor inicia sesión!');
        redirect('administrador/sesion');       
       }       
    }
}

if(!function_exists('get_user_session'))    
{
    function get_user_session()
    {
       $CI =& get_instance();
    
       $user_session = $CI->session->userdata('usuario');
       if(!isset($user_session) OR empty($user_session))
       {
        //echo 'You don\'t have permission to access this page. <a href="../login">Login</a>';    
        //die()
        $CI->session->set_flashdata('error','¡Por favor inicia sesión!');
        redirect('administrador/sesion');       
       } 
       else
       {
        return $user_session = (object)$user_session;
       }      
    }
}

if(!function_exists('get_autor'))    
{
    function get_autor($usuario_id = FALSE)
    {
       if(empty($usuario_id))
       {
           return ''; 
       } 
       else
       {
           $CI =& get_instance();
           $CI->load->model('usuario_model');
           if($CI->usuario_model->exists('id',$usuario_id))
           {
               $autor = $CI->usuario_model->get_values('apellidos, nombres', array('id'=>$usuario_id));
               return get_primera_palabra($autor->apellidos).' '.get_primera_palabra($autor->nombres); 
           }
           else
           {
               return ''; 
           }           
       }      
    }
}

if(!function_exists('get_centro'))    
{
    function get_centro($centro_id = FALSE)
    {
       if(empty($centro_id))
       {
           return ''; 
       } 
       else
       {
           $CI =& get_instance();
           $CI->load->model('centro_model');
           if($CI->usuario_model->exists('id',$centro_id))
           {
               $autor = $CI->centro_model->get_values('descripcion', array('id'=>$centro_id));
               return strtoupper($autor->descripcion); 
           }
           else
           {
               return ''; 
           }           
       }      
    }
}


if(!function_exists('get_nombre_biblioteca'))    
{
    function get_nombre_biblioteca($biblioteca_id = FALSE)
    {
       $CI =& get_instance();
       $CI->load->model('intranet/biblioteca_model');
       
       if(empty($biblioteca_id) OR !$CI->biblioteca_model->exists('id',$biblioteca_id))
       {
           return ''; 
       } 
       else
       {
           $biblioteca = $CI->biblioteca_model->get_values('nombre', array('id'=>$biblioteca_id));
           return $biblioteca->nombre;         
       }      
    }
}

if(!function_exists('get_nombre_categoria'))    
{
    function get_nombre_categoria($biblioteca_categoria_id = FALSE)
    {
       $CI =& get_instance();
       $CI->load->model('intranet/biblioteca_categoria_model');
       
       if(empty($biblioteca_categoria_id) OR !$CI->biblioteca_categoria_model->exists('id',$biblioteca_categoria_id))
       {
           return ''; 
       } 
       else
       {
           $biblioteca_categoria = $CI->biblioteca_categoria_model->get_values('nombre', array('id'=>$biblioteca_categoria_id));
           return $biblioteca_categoria->nombre;         
       }      
    }
}

if(!function_exists('get_nombre_convocatoria_empresa'))    
{
    function get_nombre_convocatoria_empresa($convocatoria_empresa_id = FALSE)
    {
       $CI =& get_instance();
       $CI->load->model('intranet/convocatoria_empresa_model');
       
       if(empty($convocatoria_empresa_id) OR !$CI->convocatoria_empresa_model->exists('id',$convocatoria_empresa_id))
       {
           return ''; 
       } 
       else
       {
           $convocatoria_empresa = $CI->convocatoria_empresa_model->get_values('nombre', array('id'=>$convocatoria_empresa_id));
           return $convocatoria_empresa->nombre;         
       }      
    }
}

if(!function_exists('get_contactos'))    
{
    function get_contactos()
    {
       $CI =& get_instance();
       $CI->load->model('contacto_model');
       $CI->load->model('contacto_respuesta_model');
       
       $num_contactos = $CI->contacto_model->get_count();
       $num_contactos_respuestas = $CI->contacto_respuesta_model->get_count_custom('SELECT DISTINCT contacto_id FROM contacto_respuesta');
       
       return $num_contactos - $num_contactos_respuestas;    
    }
}


if(!function_exists('get_biblioteca_categorias_select'))    
{
    function get_biblioteca_categorias_select($biblioteca_id = FALSE, $incluir_categoria_raiz = TRUE)
    {
        $CI =& get_instance();
        $CI->load->model('intranet/biblioteca_categoria_model');
        $CI->load->model('intranet/biblioteca_model');
        if($biblioteca_id == FALSE OR !$CI->biblioteca_model->exists('id',$biblioteca_id))
        {
            return array();
        }
        else
        {
            $CI->load->library('nested_set');
            $CI->nested_set->setControlParams('biblioteca_categoria','lft','rgt','id','padre_id','nombre');
            
            $biblioteca_categorias_ = $CI->nested_set->getTreeForSelect('nombre');
            // key = id de categoria, $value = nombre IDENTADO de la categoria
            $biblioteca_categorias = array();
            
            if($incluir_categoria_raiz)
            {
                foreach ($biblioteca_categorias_ as $key => $value)
                {
                    $row = $CI->biblioteca_categoria_model->get($key);
                    if(($row->biblioteca_id == $biblioteca_id AND $row->bloqueado == NO_BLOQUEADO) OR $row->padre_id == 0)
                    {
                        $biblioteca_categorias[$key] = $value;                                                   
                    } 
                }                
            }
            else
            {
                foreach ($biblioteca_categorias_ as $key => $value)
                {
                    $row = $CI->biblioteca_categoria_model->get($key);
                    if($row->biblioteca_id == $biblioteca_id AND $row->bloqueado == NO_BLOQUEADO)
                    {
                        $biblioteca_categorias[$key] = $value;                                                   
                    } 
                }                  
            }
            
            return $biblioteca_categorias;                         
        } 
    }
}

if(!function_exists('get_icono_archivo'))    
{
    function get_icono_archivo($nombre_archivo)
    {
        $ext = pathinfo($nombre_archivo, PATHINFO_EXTENSION);
        switch($ext)
        {
            case 'doc': return 'icon_doc.png';
            break;
            case 'docx': return 'icon_doc.png';
            break;            
            case 'ppt': return 'icon_ppt.png';
            break;
            case 'xls': return 'icon_xls.png';
            break;
            case 'xlsx': return 'icon_xls.png';
            break;            
            case 'pdf': return 'icon_pdf.png';
            break;
            case 'mp3': return 'icon_mp3.png';
            break;            
            case 'mp4': return 'icon_mp4.png';
            break;  
            case 'png': return 'icon_png.png';
            break;
            case 'jpg': return 'icon_jpg.png';
            break;
            case 'jpeg': return 'icon_jpg.png';
            break;                                               
        }   
    }
}

if(!function_exists('get_icono_url'))    
{
    function get_icono_url($url)
    {
        if (strpos($url, 'youtube') > 0) {
          return 'icon_video.png';  
        } elseif (strpos($url, 'vimeo') > 0) {
          return 'icon_video.png';  
        } else{
          return 'icon_link.png';  
        }  
    }
}

if(!function_exists('get_numero_documentos_biblioteca'))    
{
    function get_numero_documentos_biblioteca($biblioteca_categoria_id)
    {
       $CI =& get_instance();
       $CI->load->model('intranet/biblioteca_documento_model');
       $CI->load->model('intranet/biblioteca_categoria_model');
       if(empty($biblioteca_categoria_id) OR !$CI->biblioteca_categoria_model->exists('id',$biblioteca_categoria_id))
           return 0; 
       else
           return $CI->biblioteca_documento_model->get_count('categoria_id = '.$biblioteca_categoria_id.' AND bloqueado = '.NO_BLOQUEADO,''); 
    }
}

if(!function_exists('get_numero_documentos_biblioteca_id'))    
{
    function get_numero_documentos_biblioteca_id($biblioteca_id)
    {
       $CI =& get_instance();
       $CI->load->model('intranet/biblioteca_documento_model');
       $CI->load->model('intranet/biblioteca_model');
       if(empty($biblioteca_id) OR !$CI->biblioteca_model->exists('id',$biblioteca_id))
           return 0; 
       else
           return $CI->biblioteca_documento_model->get_count('biblioteca_id = '.$biblioteca_id.' AND bloqueado = '.NO_BLOQUEADO,''); 
    }
}

if(!function_exists('get_numero_categorias_biblioteca'))    
{
    function get_numero_categorias_biblioteca($biblioteca_id)
    {
       $CI =& get_instance();
       $CI->load->model('intranet/biblioteca_model');
       $CI->load->model('intranet/biblioteca_categoria_model');
       if(empty($biblioteca_id) OR !$CI->biblioteca_model->exists('id',$biblioteca_id))
           return 0; 
       else
           return $CI->biblioteca_categoria_model->get_count('biblioteca_id = '.$biblioteca_id.' AND bloqueado = '.NO_BLOQUEADO,''); 
    }
}

#########################################################################################################################
# funciones de biblioteca frontend
#########################################################################################################################
if(!function_exists('get_biblioteca_categorias'))    
{
    function get_biblioteca_categorias($biblioteca_categoria_id = FALSE, $biblioteca_id = FALSE, $directo = TRUE)
    {
        $CI =& get_instance();
        $CI->load->model('intranet/biblioteca_categoria_model');
        $CI->load->model('intranet/biblioteca_model');
        if(($biblioteca_id == FALSE OR !$CI->biblioteca_model->exists('id',$biblioteca_id)) OR
           ($biblioteca_categoria_id == FALSE OR !$CI->biblioteca_categoria_model->exists('id',$biblioteca_categoria_id)))
        {
            return array();
        }
        else
        {  
            $CI->load->library('nested_set');
            $CI->nested_set->setControlParams('biblioteca_categoria','lft','rgt','id','padre_id','nombre');
            
            $biblioteca_categoria = $CI->biblioteca_categoria_model->get($biblioteca_categoria_id);
            $tree_handle = $CI->nested_set->getTreePreorder((array)$biblioteca_categoria,$directo);
            $childrens = $tree_handle['result_array'];            
            
            $categorias = array();
            foreach($childrens as $children):
               $children = (object)$children;
               if($children->biblioteca_id == $biblioteca_id AND $children->bloqueado == NO_BLOQUEADO AND $children->estado = PUBLICADO)
               {
                 $categorias[] = $children;
               } 
            endforeach;
            return $categorias;                         
        } 
    }
}


if(!function_exists('get_biblioteca_documentos'))    
{
    function get_biblioteca_documentos($biblioteca_categoria_id = FALSE)
    {
        $CI =& get_instance();
        $CI->load->model('intranet/biblioteca_categoria_model');
        $CI->load->model('intranet/biblioteca_documento_model');
        
        if($biblioteca_categoria_id == FALSE OR !$CI->biblioteca_categoria_model->exists('id',$biblioteca_categoria_id))
        {
            return array();
        }
        else
        {  
            $documentos = array();
            $documentos = $CI->biblioteca_documento_model->get_all('',array('categoria_id'=>$biblioteca_categoria_id,'bloqueado'=>NO_BLOQUEADO, 'estado'=>PUBLICADO),'','','id ASC','');
            return $documentos;                      
        }       
 
    }
}

if(!function_exists('get_codigo_activacion'))    
{
    function get_codigo_activacion($tamano_codigo = 8)
    {    
        $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
        $codigo = array();
        $alphaLength = strlen($alphabet) - 1;
        for ($i = 0; $i < $tamano_codigo; $i++)
        {
            $n = rand(0, $alphaLength);
            $codigo[] = $alphabet[$n];
        }
        return implode($codigo); 
    }
}


if(!function_exists('get_numero_postulaciones_empresa'))    
{
    function get_numero_postulaciones_empresa($convocatoria_empresa_id = FALSE)
    {
        $CI =& get_instance();
        $CI->load->model('intranet/postulacion_empresa_model');
        $CI->load->model('intranet/convocatoria_empresa_model');
        
        if(empty($convocatoria_empresa_id) OR !$CI->convocatoria_empresa_model->exists('id',$convocatoria_empresa_id))
        {
            return 0;
        }
        else
        {
            $postulaciones = $CI->postulacion_empresa_model->get_all('',array('bloqueado'=>NO_BLOQUEADO,'estado'=>PUBLICADO,'convocatoria_id'=>$convocatoria_empresa_id));
            return count($postulaciones);             
        }        
          
    }
}


if(!function_exists('get_numero_postulaciones_formador'))    
{
    function get_numero_postulaciones_formador($convocatoria_formador_id = FALSE)
    {
        $CI =& get_instance();
        $CI->load->model('intranet/postulacion_formador_model');
        $CI->load->model('intranet/convocatoria_formador_model');
        
        if(empty($convocatoria_formador_id) OR !$CI->convocatoria_formador_model->exists('id',$convocatoria_formador_id))
        {
            return 0;
        }
        else
        {
            $postulaciones = $CI->postulacion_formador_model->get_all('',array('bloqueado'=>NO_BLOQUEADO,'estado'=>PUBLICADO,'convocatoria_id'=>$convocatoria_formador_id));
            return count($postulaciones);             
        }        
          
    }
}

#########################################################################################################################
# funciones de convocatorias frontend
#########################################################################################################################
if(!function_exists('existe_convocatoria_empresa'))    
{
    function existe_convocatoria_empresa()
    {
        $CI =& get_instance();
        $CI->load->model('intranet/convocatoria_empresa_model');
        
        $convocatorias = $CI->convocatoria_empresa_model->get_all('',array('bloqueado'=>NO_BLOQUEADO,'estado'=>PUBLICADO));
        if(count($convocatorias)>0)
            return TRUE;
        else
            return FALSE;     
    }
}

if(!function_exists('get_convocatoria_empresa_publicada'))    
{
    function get_convocatoria_empresa_publicada()
    {
        $CI =& get_instance();
        $CI->load->model('intranet/convocatoria_empresa_model');
        
        $convocatorias = $CI->convocatoria_empresa_model->get_all('',array('bloqueado'=>NO_BLOQUEADO,'estado'=>PUBLICADO),'','','id DESC','');
        if(count($convocatorias)>0)
            return $convocatorias[0]; 
        else
            return array();     
    }
}
if(!function_exists('existe_convocatoria_formador'))    
{
    function existe_convocatoria_formador()
    {
        $CI =& get_instance();
        $CI->load->model('intranet/convocatoria_formador_model');
        
        $convocatorias = $CI->convocatoria_formador_model->get_all('',array('bloqueado'=>NO_BLOQUEADO,'estado'=>PUBLICADO));
        if(count($convocatorias)>0)
            return TRUE;
        else
            return FALSE;     
    }
}

if(!function_exists('get_convocatoria_formador_publicada'))    
{
    function get_convocatoria_formador_publicada()
    {
        $CI =& get_instance();
        $CI->load->model('intranet/convocatoria_formador_model');
        
        $convocatorias = $CI->convocatoria_formador_model->get_all('',array('bloqueado'=>NO_BLOQUEADO,'estado'=>PUBLICADO),'','','id DESC','');
        if(count($convocatorias)>0)
            return $convocatorias[0]; 
        else
            return array();     
    }
}

if ( ! function_exists('get_columnas_contenido')){
  function get_columnas_contenido($str,$number){
    $n=strlen($str);
    // $cad='';
    $cad1=substr($str,0,intval($n/2));
    $cad2=substr($str,intval($n/2));
    $pos=strpos($cad2,'<br />');    
    $cadFin='<br />';
    if($pos==0){
      $pos=strpos($cad2,'</p>');
      $cadFin='</p>';
    }
    if($number==1){
      $cad1.=substr($cad2,0,$pos).$cadFin;
      return $cad1;
    }elseif($number==2){
      if($cadFin=='<br />'){
        $pos+=strlen($cadFin)*2+2;
      }else{
        $pos+=strlen($cadFin);
      }
      $cad2=substr($cad2,$pos);
      return $cad2;
    }
  }
}

if ( ! function_exists('is_youtube')){
  function is_youtube($str){
    $pos=strpos($str,'img.youtube.com');
    if($pos!=0){
      return true; 
    }else{
      return false;
    }
  }
}