<?php
class Testimonios extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('testimonio_model');
        $this->load->model('pagina_predisenada_model');
        // bibliotecas
        $this->load->library('nested_set');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function index()
	{
	   $pagina_testimonios = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits,estado', array('alias'=>'testimonios-score-bolivia'));
       if($pagina_testimonios->estado == PUBLICADO){
           $this->pagina_predisenada_model->update(array('hits'=>$pagina_testimonios->hits + 1),$pagina_testimonios->id);  
           $data['titulo'] = $this->lang->line('score_sitio_testimonios');
           $data['metadescripcion'] = $pagina_testimonios->metadescripcion;
           $data['metapalabras_clave'] = $pagina_testimonios->metapalabras_clave;
           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
    	   $data['testimonios_empresas'] = $this->testimonio_model->get_all('',array('estado'=>PUBLICADO, 'tipo'=> TESTIMONIO_EMPRESA),'','','creado DESC','');
           $data['testimonios_personal'] = $this->testimonio_model->get_all('',array('estado'=>PUBLICADO, 'tipo'=> TESTIMONIO_PERSONAL),'','','creado DESC','');
           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO)); 
           $this->load->view('frontend/testimonios',$data);        
       }elseif($pagina_testimonios->estado == DESPUBLICADO)
       {
           redirect('404_override');
       }              
	}
}