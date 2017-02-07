<?php
class Biblioteca extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('intranet/biblioteca_model');
        $this->load->model('pagina_predisenada_model');
        // bibliotecas
        $this->load->library('nested_set');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function mostrar($biblioteca_id =FALSE)
	{
	   if(!empty($biblioteca_id) AND $this->biblioteca_model->exists('id',$biblioteca_id))
       {       
            $biblioteca = $this->biblioteca_model->get($biblioteca_id);
            if($this->pagina_predisenada_model->exists('alias','biblioteca/'.$biblioteca_id))
            {
                $pagina_biblioteca = $this->pagina_predisenada_model->get_values('estado, hits, id', array('alias'=>'biblioteca/'.$biblioteca_id));
                $this->pagina_predisenada_model->update(array('hits'=>$pagina_biblioteca->hits + 1),$pagina_biblioteca->id);                 
            }
            else
                $pagina_biblioteca->estado = DESPUBLICADO;
                
            if($biblioteca->bloqueado == NO_BLOQUEADO AND $biblioteca->estado == PUBLICADO AND $pagina_biblioteca->estado == PUBLICADO)
            {     
                $data['titulo'] = $this->lang->line('score_sitio_biblioteca');
                $data['metadescripcion'] = $biblioteca->nombre;
                $data['metapalabras_clave'] = '';
                $data['menus'] = $this->nested_set->getMenuBootstrap();
                $data['biblioteca'] = $biblioteca;
                 
                $data['biblioteca_categorias'] = get_biblioteca_categorias(1,$biblioteca_id);
                $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
                $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));         
                $this->load->view('frontend/biblioteca',$data);                      
            }
            else
            {
                redirect('404_override');   
            }             
       }
       else
       {
            redirect('404_override');
       }
	}
}