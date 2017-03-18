<?php
class Noticia extends CI_Controller{
    public function __construct()
    {
        parent::__construct();            
        // modelos
        $this->load->model('menu_model');
        $this->load->model('modulo_model');        
        $this->load->model('pagina_predisenada_model');
        $this->load->model('noticia_model');
        $this->load->model('noticia_grupo_model');
        // bibliotecas
        $this->load->library('nested_set');
        
        // configuracion de menu
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }

    public function all_noticias_by_id_grupo($idgrupo=null){
    	//$idgrupo=1;
    	if($idgrupo!=null){
    		$grupo=$this->noticia_grupo_model->get($idgrupo);
	       	$pagina = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits, estado', array('alias'=>$grupo->alias));
	       	if($pagina->estado == PUBLICADO){

	           $this->pagina_predisenada_model->update(array('hits'=>$pagina->hits + 1),$pagina->id);       
	           $data['titulo'] = $grupo->descripcion;
	           $data['metadescripcion'] = $pagina->metadescripcion;
	           $data['metapalabras_clave'] = $pagina->metapalabras_clave;
	           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
	    	   //$data['noticias'] = $this->noticia_model->get_all('',array('id_grupo'=>$idgrupo,'estado'=>PUBLICADO),'','','creado desc','');
	           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
	           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
	   		   $data['columnas']=$grupo->columnas;
	           //**** Inicio Parametros Paginacion ****
	            $pages=6; //Número de registros mostrados por páginas
				$this->load->library('pagination'); //Cargamos la librería de paginación
				$config['base_url'] = base_url().'index.php/noticias/'.$idgrupo.'/'; // parametro base de la aplicación, si tenemos un .htaccess nos evitamos el index.php
				$config['total_rows'] = $this->noticia_model->filas($idgrupo);//calcula el número de filas  
				$config['per_page'] = $pages; //Número de registros mostrados por páginas
		        $config['num_links'] = 4; //Número de links mostrados en la paginación
		 		$config['first_link'] = 'Primera';//primer link
				$config['last_link'] = 'Última';//último link
		        $config["uri_segment"] = 3;//el segmento de la paginación
				$config['next_link'] = 'Siguiente';//siguiente link
				$config['prev_link'] = 'Anterior';//anterior link
				$this->pagination->initialize($config); //inicializamos la paginación
				$data["noticias"] = $this->noticia_model->total_paginados($config['per_page'],$this->uri->segment(3),$idgrupo);
				$data["pagina_actual"] = floor(($this->uri->segment(3)/$config['per_page']) + 1);  
				$data["pagina_total"] = ceil($config['total_rows']/$pages);
			   //**** Fin Parametros Paginacion

	           $this->load->view('frontend/noticia_list',$data);        
	     	
	       	}elseif($pagina->estado == DESPUBLICADO){
	       	   redirect('404_override');
	       	}
	  	 
    	}else{
	       	redirect('404_override');
       	}
       	
    }

    public function find_noticia_by_id($idnoticia=null){
    	if($idnoticia!=null){
    		$noticia=$this->noticia_model->get($idnoticia);
    		$grupo=$this->noticia_grupo_model->get($noticia->id_grupo);
	       	$pagina = $this->pagina_predisenada_model->get_values('metadescripcion, metapalabras_clave, id, hits, estado', array('alias'=>$grupo->alias));
	       	if($pagina->estado == PUBLICADO){
	           $this->pagina_predisenada_model->update(array('hits'=>$pagina->hits + 1),$pagina->id);       
	           $data['titulo'] = $grupo->descripcion;
	           $data['metadescripcion'] = $pagina->metadescripcion;
	           $data['metapalabras_clave'] = $pagina->metapalabras_clave;
	           $data['menus'] = $this->nested_set->getMenuBootstrap(); 
	    	   $data['noticia'] = $noticia;
	           $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
	           $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
	           $this->load->view('frontend/noticia_view',$data);
	       	}elseif($pagina->estado == DESPUBLICADO){
	       	   redirect('404_override');
	       	}
    	}else{
	       	redirect('404_override');
       	}
    }
}