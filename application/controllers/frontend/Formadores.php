<?php
class Formadores extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('formador_model');
        $this->load->model('pagina_predisenada_model');
        // bibliotecas
        $this->load->library('nested_set');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function index()
	{
       $pagina_formadores = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits, estado', array('alias'=>'formadores-score-bolivia'));
       if($pagina_formadores->estado == PUBLICADO){
           $this->pagina_predisenada_model->update(array('hits'=>$pagina_formadores->hits + 1),$pagina_formadores->id);       
           $data['titulo'] = $this->lang->line('score_sitio_formadores');
           $data['metadescripcion'] = $pagina_formadores->metadescripcion;
           $data['metapalabras_clave'] = $pagina_formadores->metapalabras_clave;
           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
    	   $data['formadores'] = $this->formador_model->get_all('',array('estado'=>PUBLICADO),'','','apellidos asc','');
           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
           $this->load->view('frontend/formadores',$data);        
       }elseif($pagina_formadores->estado == DESPUBLICADO){
           redirect('404_override');
       }
	}
}