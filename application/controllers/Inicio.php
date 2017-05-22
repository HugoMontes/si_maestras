<?php
class Inicio extends CI_Controller{
  public function __construct(){
    parent::__construct();            
    // modelos
    $this->load->model('menu_model');
    $this->load->model('modulo_model');
    $this->load->model('noticia_model');
    $this->load->model('slide_model');
    $this->load->model('especialista_ciudad_model');
    //$this->load->model('especialista_especialidad_model');       
    $this->load->model('especialista_area_model');
    $this->load->model('pagina_predisenada_model');
    // bibliotecas
    $this->load->library('nested_set');
    // configuracion de menu
    $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
  }

  public function index(){
    $pagina_inicio = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits, estado', array('alias'=>''));
    if($pagina_inicio->estado == PUBLICADO){
      $this->pagina_predisenada_model->update(array('hits'=>$pagina_inicio->hits + 1),$pagina_inicio->id);  
      $data['titulo'] = $this->lang->line('score_sitio_inicio');
      $data['metadescripcion'] = $pagina_inicio->metadescripcion;
      $data['metapalabras_clave'] = $pagina_inicio->metapalabras_clave;
      $data['menus'] = $this->nested_set->getMenuBootstrap();
      $data['ciudades'] = $this->especialista_ciudad_model->get_all('',array(),'','','','');
      // $data['especialidades'] = $this->especialista_especialidad_model->get_all('',array(),'','','','');
      // $data['especialidades'] = $this->especialista_especialidad_model->get_all_distinct();
      $data['rubros'] = $this->especialista_area_model->get_all('', array('estado'=>1), '', '', 'descripcion', '');
      $data['slides'] = $this->slide_model->get_all('',array('estado'=>PUBLICADO),'','','id ASC','');
      $data['noticias_generales'] = $this->noticia_model->get_all('',array('id_grupo'=>1,'estado'=>PUBLICADO),'',6,'creado desc','');
      $data['noticias_capacitacion'] = $this->noticia_model->get_all('',array('id_grupo'=>2,'estado'=>PUBLICADO),'',3,'creado desc','');
      $data['mod_escuelas'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_enlaces','estado'=>PUBLICADO));
      $data['mod_auspiciantes'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_auspiciantes','estado'=>PUBLICADO));
      $data['mod_empresas'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_auspiciadores','estado'=>PUBLICADO));
      $data['mod_score_global'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_score_global','estado'=>PUBLICADO));  
      $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
      $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
      $data['widget'] = $this->recaptcha->getWidget();
      $data['script'] = $this->recaptcha->getScriptTag(); 
      $this->load->view('frontend/inicio',$data);        
    }elseif($pagina_inicio->estado == DESPUBLICADO){
      redirect('404_override'); 
    }
  }
}