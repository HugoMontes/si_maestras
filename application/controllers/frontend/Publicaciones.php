<?php
class Publicaciones extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('publicacion_model');
        $this->load->model('pagina_predisenada_model');
        // bibliotecas
        $this->load->library('nested_set');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function index()
	{
	   $pagina_publicaciones = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'publicaciones-score-bolivia'));
       if($pagina_publicaciones->estado == PUBLICADO){
           $this->pagina_predisenada_model->update(array('hits'=>$pagina_publicaciones->hits + 1),$pagina_publicaciones->id);  
           $data['titulo'] = $this->lang->line('score_sitio_publicaciones');
           $data['metadescripcion'] = $pagina_publicaciones->metadescripcion;
           $data['metapalabras_clave'] = $pagina_publicaciones->metapalabras_clave;
           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
    	   $data['publicaciones'] = $this->publicacion_model->get_all('',array('estado'=>PUBLICADO),'','','creado DESC','');
           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
           $this->load->view('frontend/publicaciones',$data);        
       }elseif($pagina_publicaciones->estado == DESPUBLICADO)
       {
           redirect('404_override');
       }              
	}
}