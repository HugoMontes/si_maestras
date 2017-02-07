<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
 
/**
 * Additional validations for URL format.
 *
 * @package      Module Creator
 * @subpackage  ThirdParty
 * @category    Libraries
 * @author  Anup Shakya 
 * @created 01/10/2013
 */
 
class Extend_Form_validation extends CI_Form_validation{
     
   public function __construct()
   {
     parent::__construct();
    }  
                         
    /**
     * Validate URL format
     *
     * @access  public
     * @param   string
     * @return  string
     */
    function valid_url_format($str){
        $pattern = "|^http(s)?://[a-z0-9-]+(.[a-z0-9-]+)*(:[0-9]+)?(/.*)?$|i";
        if (!preg_match($pattern, $str)){
            $this->set_message('valid_url_format', 'La URL que ha introducido no tiene el formato correcto.');
            return FALSE;
        }
 
        return TRUE;
    }       
 
    // --------------------------------------------------------------------
     
    /**
     * Validates that a URL is accessible. Also takes ports into consideration. 
     * Note: If you see "php_network_getaddresses: getaddrinfo failed: nodename nor servname provided, or not known" 
     *          then you are having DNS resolution issues and need to fix Apache
     *
     * @access  public
     * @param   string
     * @return  string
     */
    function url_exists($url){                                   
        $url_data = parse_url($url); // scheme, host, port, path, query
        if(!fsockopen($url_data['host'], isset($url_data['port']) ? $url_data['port'] : 80)){
            $this->set_message('url_exists', 'La URL que ha introducido no es accesible.');
            return FALSE;
        }               
         
        return TRUE;
    }
    
    function verificar_estado_menu($estado,$padre_id){   
        $CI = get_instance();
        $CI->load->model('menu_model');        
        $menu_padre = $CI->menu_model->get($padre_id);
        if($estado == PUBLICADO){
            if($menu_padre->estado == DESPUBLICADO)
            {                      
                $this->set_message('verificar_estado_menu', $CI->lang->line('score_menu_error_padre_despublicado'));
                return FALSE;                       
            }            
        }elseif($estado == DESPUBLICADO){
            return TRUE;
        }  
    }
    
    function verificar_estado_biblioteca_categoria($estado,$padre_id){   
        $CI = get_instance();
        $CI->load->model('intranet/biblioteca_categoria_model');        
        $biblioteca_categoria_padre = $CI->biblioteca_categoria_model->get($padre_id);
        if($estado == PUBLICADO){
            if($biblioteca_categoria_padre->estado == DESPUBLICADO)
            {                      
                $this->set_message('verificar_estado_biblioteca_categoria', $CI->lang->line('score_biblioteca_categoria_error_padre_despublicado'));
                return FALSE;                       
            }            
        }elseif($estado == DESPUBLICADO){
            return TRUE;
        }  
    } 

    function verificar_password_confirmacion($password_confirmacion,$password){   
        $CI = get_instance();
        if($password_confirmacion != $password){                     
            $this->set_message('verificar_password_confirmacion', $CI->lang->line('score_sitio_inscripcion_formador_error_password'));
            return FALSE;                                  
        }else{
            return TRUE;
        }  
    }     
    
    function verificar_biblioteca_biblioteca_categoria($biblioteca_id,$padre_id){   
        $CI = get_instance();
        $CI->load->model('intranet/biblioteca_categoria_model');        
        $biblioteca_categoria_padre = $CI->biblioteca_categoria_model->get($padre_id);
        
        if($biblioteca_categoria_padre->padre_id >0)
        {
             if($biblioteca_id != $biblioteca_categoria_padre->biblioteca_id){                   
                $this->set_message('verificar_biblioteca_biblioteca_categoria', $CI->lang->line('score_biblioteca_categoria_error_biblioteca'));
                return FALSE;                                  
            }elseif($biblioteca_id == $biblioteca_categoria_padre->biblioteca_id){
                return TRUE;
            }             
        }
        else
        {
            return TRUE;
        }

    }     
    
    function id_biblioteca_exists($biblioteca_id){                                   
        
        $CI = get_instance();
        $CI->load->model('intranet/biblioteca_model');

        if(!$CI->biblioteca_model->exists('id',$biblioteca_id))
        {
            $this->set_message('id_biblioteca_exists', 'Seleccione una biblioteca');
            return FALSE;
        }            
         
        return TRUE;            
    }
    
    function id_biblioteca_categoria_exists($biblioteca_categoria_id){                                   
        
        $CI = get_instance();
        $CI->load->model('intranet/biblioteca_categoria_model');

        if(!$CI->biblioteca_categoria_model->exists('id',$biblioteca_categoria_id))
        {
            $this->set_message('id_biblioteca_categoria_exists', 'Seleccione una categoría de biblioteca');
            return FALSE;
        }            
        return TRUE;            
    }    
    
    function email_user_no_exists($email, $user_id = ''){
        
        $CI = get_instance();
        $CI->load->model('usuario_model');
        if(empty($user_id))
        {
            if($CI->usuario_model->exists('email',trim($email)))
            {
                $this->set_message('email_user_no_exists', 'El Correo electrónico que ha introducido ya esta registrado.');
                return FALSE;
            }         
            return TRUE;
        }
        else
        {
            if($CI->usuario_model->exists('id',trim($user_id)))
            {
                $user_data = $CI->usuario_model->get($user_id);
                if($user_data->email == $email)
                {
                    return TRUE;
                }
                else
                {
                    if($CI->usuario_model->exists('email',trim($email)))
                    {
                        $this->set_message('email_user_no_exists', 'El Correo electrónico que ha introducido ya esta registrado.');
                        return FALSE;
                    }         
                    return TRUE;                  
                }                                
            } 
            else
            {
                $this->set_message('email_user_no_exists', 'El usuario no existe.');
                return FALSE;
            }              
        }   
    }
    
    function username_user_no_exists($user, $user_id = ''){                                   
        
        $CI = get_instance();
        $CI->load->model('usuario_model');
        if(empty($user_id))
        {
            if($CI->usuario_model->exists('usuario',trim($user)))
            {
                $this->set_message('username_user_no_exists', 'El Nombre de usuario que ha introducido ya esta registrado.');
                return FALSE;
            }            
             
            return TRUE;            
        }
        else
        {
            if($CI->usuario_model->exists('id',trim($user_id)))
            {
                $user_data = $CI->usuario_model->get($user_id);
                if($user_data->usuario == $user)
                {
                    return TRUE;
                }
                else
                {
                    if($CI->usuario_model->exists('usuario',trim($user)))
                    {
                        $this->set_message('username_user_no_exists', 'El Nombre de usuario que ha introducido ya esta registrado.');
                        return FALSE;
                    }            
                     
                    return TRUE;                    
                }                                
            } 
            else
            {
                $this->set_message('username_user_no_exists', 'El usuario no existe.');
                return FALSE;
            }                       
        }
    }

    function password_user_no_exists($password, $user_id = ''){
        
        $CI = get_instance();
        $CI->load->model('usuario_model');
        if(empty($user_id))
        {
            if($CI->usuario_model->exists('password',trim($password)))
            {
                $this->set_message('password_user_no_exists', 'La Contraseña que ha introducido ya esta registrada.');
                return FALSE;
            }            
             
            return TRUE;
        }
        else
        {
            if($CI->usuario_model->exists('id',trim($user_id)))
            {
                $user_data = $CI->usuario_model->get($user_id);
                if($user_data->password == $password)
                {
                    return TRUE;
                }
                else
                {
                    if($CI->usuario_model->exists('password',trim($password)))
                    {
                        $this->set_message('password_user_no_exists', 'La Contraseña que ha introducido ya esta registrada.');
                        return FALSE;
                    }            
                     
                    return TRUE;                  
                }                                
            } 
            else
            {
                $this->set_message('password_user_no_exists', 'El usuario no existe.');
                return FALSE;
            }                
        }
    }  
      
    function username_user_exists($user){                                   
        
        $CI = get_instance();
        $CI->load->model('usuario_model');

        if(!$CI->usuario_model->exists('usuario',trim($user)))
        {
            $this->set_message('username_user_exists', 'El Nombre de usuario que ha introducido no existe.');
            return FALSE;
        }            
         
        return TRUE;            
       
    }

    function password_user_exists($password){
        
        $CI = get_instance();
        $CI->load->model('usuario_model');
        
        if(!$CI->usuario_model->exists('password',trim($password)))
        {
            $this->set_message('password_user_exists', 'La Contraseña que ha introducido no existe.');
            return FALSE;
        }            
         
        return TRUE;
    } 

    function password_username_exists($password, $username){
        
        $CI = get_instance();
        $CI->load->model('usuario_model');
        
        if(!$CI->usuario_model->exists('password',trim($password)) AND !$CI->usuario_model->exists('usuario',trim($username)))
        {
            $this->set_message('password_username_exists', 'El inicio de sesión no es válido');
            return FALSE;
        }            
         
        return TRUE;
    }   
    
    
    function check_date_format($date) {
        
        $date = date("d/m/Y", strtotime($date));
        if (preg_match('/^\d{2}\/\d{2}\/\d{4}$/', $date)) {
            if(checkdate(substr($date, 3, 2), substr($date, 0, 2), substr($date, 6, 4)))
                return TRUE;
            else
            {
                $this->set_message('check_date_format', 'La fecha que ha introducido no es válida');
                return FALSE;                
            }
        } 
        else 
        {
            $this->set_message('check_date_format', 'La fecha que ha introducido no es válida');
            return FALSE;
        }
    }
            
}
// END Form Validation Class

/* End of file My_Form_validation.php */
/* Location: ./application/libraries/My_Form_validation.php */