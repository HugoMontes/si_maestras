<?php
class Menu extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        
        //existe_sesion_urse();
        
        // modelos
        $this->load->model('menu_model');
        $this->load->model('pagina_model');
        $this->load->model('navegacion_model');
        
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
        ###################################################
        # url
        ###################################################
        $url = str_replace(base_url(),"",current_url());
        $navegacion = $this->navegacion_model->get_values('id',array('vista'=>MENUS)); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id);  
                 	   
	   $data['titulo'] = $this->lang->line('score_menus');
       
       // obtenemos todos los nodos de menu ordenados
       $menus_ = $this->nested_set->getTreeForSelect('titulo');
       
       // key = id de menu, $value = titulo IDENTADO de menu
       $menus = array();
       foreach ($menus_ as $key => $value)
       {
            $row = $this->menu_model->get($key);
            $row = (array)$row;
            $row['titulo_identado']=$value;
            $row = (object)$row;
            $menus[] = $row;  
       }
	   $data['menus'] = $menus;
       $this->load->view('backend/menus',$data);
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
        
          
        $data['menus'] = $this->nested_set->getTreeForSelect('titulo');
        
        $data['titulo'] = $this->lang->line('score_menu_nuevo_titulo');
        $this->load->view('backend/menu',$data);
    }
    

    public function eliminar($menu_id = FALSE)
    {
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>MENUS));
        if($menu_id == FALSE)
        {
            $this->session->set_flashdata('error', $this->lang->line('score_menu_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        }
        
        if($this->menu_model->exists('id', $menu_id))
        {
            
            $menu = $this->menu_model->get($menu_id);
            $this->nested_set->deleteNode((array)$menu);
            $this->session->set_flashdata('mensaje', $this->lang->line('score_menu_eliminado'));
            redirect(base_url($navegacion->navegacion));
        }
        else
        {
            $this->session->set_flashdata('error', $this->lang->line('score_menu_error_enlace').' (#'.$menu_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }        

    public function publicar($menu_id = FALSE)
    {
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>MENUS));
        
        if($menu_id == FALSE)
        {
            $this->session->set_flashdata('error', $this->lang->line('score_menu_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        }
        
        if($this->menu_model->exists('id', $menu_id))
        {
            $menu = $this->menu_model->get($menu_id);
            if($menu->estado == DESPUBLICADO)
            {
                $data = array(
                    'estado'=> PUBLICADO
                );
                
                // verificamos que el padre no este despublicado
                // no puedo publicar un nodo si mi padre esta despublicado
                $menu_padre = $this->nested_set->getAncestor((array)$menu);
                $menu_padre = (object)$menu_padre;
                if($menu_padre->estado == PUBLICADO)
                {
                    $tree_handle = $this->nested_set->getTreePreorder((array)$menu);
                    $childrens = $tree_handle['result_array'];
                    
                    foreach($childrens as $children):
                    
                        $this->menu_model->update($data, $children['id']);
                    
                    endforeach;
                    
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_menu_publicado'));
                    redirect(base_url($navegacion->navegacion));                           
                }
                else
                {
                    $this->session->set_flashdata('error', $this->lang->line('score_menu_error_padre_despublicado'));
                    redirect(base_url($navegacion->navegacion));                        
                }
        
            }
            else
            {
                $data = array(
                    'estado'=> DESPUBLICADO
                );
                
                $tree_handle = $this->nested_set->getTreePreorder((array)$menu);
                $childrens = $tree_handle['result_array'];
                
                foreach($childrens as $children):
                
                    $this->menu_model->update($data, $children['id']);
                
                endforeach;
                
                $this->session->set_flashdata('mensaje', $this->lang->line('score_menu_despublicado'));
                redirect(base_url($navegacion->navegacion));                 
            }                
            
        }
        else
        {
            $this->session->set_flashdata('error', $this->lang->line('score_menu_error_enlace').' (#'.$menu_id.')');
            redirect(base_url($navegacion->navegacion));
        }         
    }
 
    public function guardar()
	{
	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>MENUS));
		if(isset($_POST['guardar']))
		{                                      
			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
            $this->form_validation->set_rules('tipo', 'Tipo de elemento del menú', 'trim|required');
            $this->form_validation->set_rules('abrir_en', 'Abrir en', 'integer|required');   
            $this->form_validation->set_rules('padre_id', 'Elemento principal', 'integer|required');                    
            $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

			$this->form_validation->set_message('required', 'Falta el campo %s');
                            
			if($this->form_validation->run() == FALSE)
			{
              $this->session->set_flashdata('error', validation_errors());
              $this->nuevo();
			}           
		}
        else
        {
            redirect(base_url($navegacion->navegacion));  
        }
	}    
}