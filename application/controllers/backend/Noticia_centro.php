<?php
class Noticia_centro extends CI_Controller{
    public function __construct()
    {
        parent::__construct();

        //existe_sesion_urse();
                    
        // modelos
        $this->load->model('noticia_model');
        $this->load->model('noticia_grupo_model');
        $this->load->model('navegacion_model');
        
        // helpers
        //$this->load->helper('lms');
        //$this->load->helper('security');
        
        //$this->load->library('session');
    }

    //public function index()
	public function listar($idgrupo){
        $usuario_sesion = get_user_session();
       if($this->session->flashdata('mensaje'))
       {
           $data['mensaje'] = $this->session->flashdata('mensaje');
       } 
       elseif ($this->session->flashdata('error'))
       { 
           $data['error'] = $this->session->flashdata('error');
       }
        $this->session->set_userdata(array('grupo_noticia'=>$idgrupo));
        ###################################################
        # url
        ###################################################
        $url = str_replace(base_url(),"",current_url());
        $categoria='';
        if($idgrupo==1){
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>'noticias_generales')); 
            $categoria='noticia';
        }elseif($idgrupo==2){
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>'noticias_capacitacion'));                 
            $categoria='noticia';
        }elseif($idgrupo==3){
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>'informacion_equidad'));                 
            $categoria='informacion';
        }elseif($idgrupo==4){
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>'informacion_derecho'));                 
            $categoria='informacion';
        }elseif($idgrupo==5){
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>'informacion_salud'));                 
            $categoria='informacion';
        }
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
        ###################################################
        #	Busqueda
        ###################################################
        $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
        $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
        $safe_columns = array('titulo','estado');
        if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
            $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' AND id_grupo=".$idgrupo." AND id_centro=".$usuario_sesion->centro_formacion;
        
            $config['add_pars']['search_key'] = $search_key;
            $config['add_pars']['search_in'] = $search_in;
            $data['buscar'] = $search_key;
        }
        else
        {
            $data['buscar']='';
        }
        
        ###################################################
        #	Ordenamiento
        ###################################################
        $col = (isset($_GET['col']) ? $_GET['col'] : null);
        $dir = (isset($_GET['dir']) ? $_GET['dir'] : null);
        if (!is_null($col) && !is_null($dir)) {
            $order = " $col $dir ";
        
            $config['add_pars']['col'] = $col;
            $config['add_pars']['dir'] = $dir;
        } else {
            $order = " `creado` DESC ";
        }
        
        ###################################################
        #	Consulta principal
        ###################################################
        if (!isset($where)) {
            $where = array('id_grupo'=>$idgrupo,'id_centro'=>$usuario_sesion->centro_formacion);
        }
        $count = $this->noticia_model->get_count($where, $order);
        
        ###################################################
        #	Pagination
        ###################################################
        $this->load->library('page');
        $cur_page = (isset($_GET['page']) ? $_GET['page'] : null);
        
        if (!is_numeric($cur_page) && $cur_page != 'all') {
            $cur_page = 1;
        }
        
        $config['rows_per_page'] = FILAS;
        $config['page_limit'] = NUMERO_ITEMS_PAGINACION;
        $config['base_url'] = base_url('index.php') . '/administrador/noticia/centro/'.$idgrupo; //always put trailing slash
        $config['total_rows'] = $count;
        $config['cur_page'] = $cur_page;
        $config['stats_title'] = 'noticias';
        $config['url_type'] = 'q';
        
        $this->page->initialize($config);
        
        $data['noticias'] = $this->noticia_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
        ########################################################################################  
        $data['grupo']=$this->noticia_grupo_model->get($idgrupo);
        $data['categoria']=$categoria;
        //$data['noticias'] = $this->noticia_model->get_all('',array(),'','','creado desc','');
        $this->load->view('backend/noticias_centro',$data);
	}
}