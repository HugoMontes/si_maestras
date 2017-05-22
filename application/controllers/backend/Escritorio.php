<?php
class Escritorio extends CI_Controller{
    public function __construct(){
        parent::__construct();
        
        // existe_sesion_urse();
        
        // modelos
        $this->load->model('pagina_model');
        $this->load->model('pagina_predisenada_model');        
        $this->load->model('noticia_model');
        $this->load->model('testimonio_model');
        // $this->load->model('formador_model');
        $this->load->model('especialista_trabajador_model');
        $this->load->model('centro_model');
    }
    
    public function index(){	   
      $user=get_user_session();
      if($user->perfil_id==1){
         $data['noticias_publicadas_generales'] = $this->noticia_model->get_count(array('id_grupo'=>1),'');
         $data['especialistas_publicados'] = $this->especialista_trabajador_model->get_count(array('estado'=>PUBLICADO),'');
         $data['centros_formacion'] = $this->centro_model->get_count(array('estado'=>PUBLICADO),'');
         $data['paginas_visitadas'] = $this->pagina_model->get_all('',array('estado'=>PUBLICADO),'','5','hits DESC','');
         $data['paginas_predisenadas_visitadas'] = $this->pagina_predisenada_model->get_all('',array('estado'=>PUBLICADO),'','5','hits DESC','');       
         $data['paginas_recientes'] = $this->pagina_model->get_all('',array(),'','5','creado DESC','');
         $data['titulo'] = $this->lang->line('score_escritorio_titulo');
         $this->load->view('backend/escritorio',$data);
      }else{
         $data['noticias_publicadas_capacitacion'] = $this->noticia_model->get_count(array('id_grupo'=>2,'id_centro'=>$user->centro_formacion),'');
         $data['especialistas_publicados'] = $this->especialista_trabajador_model->get_count_by_id_centro($user->centro_formacion);
         $data['titulo'] = $this->lang->line('score_escritorio_titulo');
         $this->load->view('backend/escritorio_formacion',$data);
      }
	}
}