<?php
class Busqueda_rapida extends CI_Controller{
    
    public function __construct()
    {
        parent::__construct();

        // existe_sesion_urse();
                    
        // modelos
        $this->load->model('pagina_model');
        $this->load->model('noticia_model');
        $this->load->model('formador_model');
        $this->load->model('testimonio_model');
        $this->load->model('navegacion_model');        
    }
    
    public function index()
	{
        ###################################################
        # url
        ###################################################
        $url = str_replace(base_url(),"",current_url());
        $navegacion_pagina = $this->navegacion_model->get_values('id',array('vista'=>PAGINAS));
        $navegacion_noticia = $this->navegacion_model->get_values('id',array('vista'=>NOTICIAS));
        $navegacion_formador = $this->navegacion_model->get_values('id',array('vista'=>FORMADORES));
        $navegacion_testimonio = $this->navegacion_model->get_values('id',array('vista'=>TESTIMONIOS)); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion_pagina->id); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion_noticia->id); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion_formador->id); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion_testimonio->id); 
        ###################################################
        #	Busqueda
        ###################################################
        $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
        if (!is_null($search_key) && !empty($search_key))
        {
            
            // consulta para paginas
            $where_pagina = " `titulo` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            $where_pagina.= " OR `contenido` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            
            // consulta para noticias
            $where_noticia = " `titulo` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            $where_noticia.= " OR `resumen` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            $where_noticia.= " OR `contenido` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            
            // consulta para formadores
            $where_formador = " `nombres` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            $where_formador.= " OR `apellidos` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            $where_formador.= " OR `descripcion` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            
            // consulta para testimonios
            $where_testimonio = " `titulo` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            $where_testimonio.= " OR `contenido` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            
    	    $data['titulo'] = $this->lang->line('score_busqueda_rapida_titulo');
	        $data['busqueda_rapida'] = $search_key; 
            $data['paginas'] = $this->pagina_model->get_fast_search($where_pagina,'id DESC');
            $data['noticias'] = $this->noticia_model->get_fast_search($where_noticia,'id DESC');
            $data['formadores'] = $this->formador_model->get_fast_search($where_formador,'id DESC');
            $data['testimonios'] = $this->testimonio_model->get_fast_search($where_testimonio,'id DESC');
        
            $this->load->view('backend/busqueda_rapida',$data);                                    
        }
        else
        {
            redirect('administrador/escritorio');    
        }
	}
}