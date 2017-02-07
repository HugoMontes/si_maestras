<?php
class Noticia extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('pagina_predisenada_model');
        // bibliotecas
        $this->load->library('nested_set');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function generales($id=null){
    	$this->load->model('noticia_model');
    	$pagina = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits, estado', array('alias'=>'noticias-generales'));
    	if($id==null){
	       	if($pagina->estado == PUBLICADO){
	           $this->pagina_predisenada_model->update(array('hits'=>$pagina->hits + 1),$pagina->id);       
	           $data['titulo'] = 'Noticias Generales';
	           $data['metadescripcion'] = $pagina->metadescripcion;
	           $data['metapalabras_clave'] = $pagina->metapalabras_clave;
	           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
	    	   $data['noticias'] = $this->noticia_model->get_all('',array('estado'=>PUBLICADO),'','','creado desc','');
	           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
	           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
	           $this->load->view('frontend/noticia_list',$data);        
	       	}elseif($pagina->estado == DESPUBLICADO){
	       	   redirect('404_override');
	       	}
    	}else{
	       	if($pagina->estado == PUBLICADO){
	           $this->pagina_predisenada_model->update(array('hits'=>$pagina->hits + 1),$pagina->id);       
	           $data['titulo'] = 'Noticia General';
	           $data['metadescripcion'] = $pagina->metadescripcion;
	           $data['metapalabras_clave'] = $pagina->metapalabras_clave;
	           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
	    	   $data['noticia'] = $this->noticia_model->get($id);
	           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
	           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
	           $this->load->view('frontend/noticia_view',$data);        
	       	}elseif($pagina->estado == DESPUBLICADO){
	       	   redirect('404_override');
	       	}
       	}
	}

	public function capacitacion($id=null){
	   	$this->load->model('noticia_capacitacion_model');
       	$pagina = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits, estado', array('alias'=>'noticias-capacitacion'));
		if($id==null){
    		if($pagina->estado == PUBLICADO){
	           $this->pagina_predisenada_model->update(array('hits'=>$pagina->hits + 1),$pagina->id);       
	           $data['titulo'] = 'Noticias Sobre Capacitación';
	           $data['metadescripcion'] = $pagina->metadescripcion;
	           $data['metapalabras_clave'] = $pagina->metapalabras_clave;
	           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
	    	   $data['noticias'] = $this->noticia_capacitacion_model->get_all('',array('estado'=>PUBLICADO),'','','creado desc','');
	           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
	           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
	           $this->load->view('frontend/noticia_list',$data);        
	       	}elseif($pagina->estado == DESPUBLICADO){
	       	   redirect('404_override');
	       	}
    	}else{
	       if($pagina->estado == PUBLICADO){
	           $this->pagina_predisenada_model->update(array('hits'=>$pagina->hits + 1),$pagina->id);       
	           $data['titulo'] = 'Noticia Sobre Capacitación';
	           $data['metadescripcion'] = $pagina->metadescripcion;
	           $data['metapalabras_clave'] = $pagina->metapalabras_clave;
	           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
	    	   $data['noticia'] = $this->noticia_capacitacion_model->get($id);
	           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
	           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
	           $this->load->view('frontend/noticia_view',$data);        
	       }elseif($pagina->estado == DESPUBLICADO){
	           redirect('404_override');
	       }
   		}
	}
}