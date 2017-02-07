<?php
class Pagina extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('pagina_model');
        $this->load->model('modulo_model');
        $this->load->library('nested_set');
        $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
    }
    
    public function index()
	{
	}

    public function mostrar($pagina_alias = FALSE)
    {
        if($pagina_alias == FALSE)
        {
            redirect('404_override');
        } 
        if($this->pagina_model->exists('alias', $pagina_alias))
        {
            $pagina_ = $this->pagina_model->get_values('id, hits, estado,', array('alias'=>$pagina_alias));
            if($pagina_->estado == PUBLICADO){
                $this->pagina_model->update(array('hits'=>$pagina_->hits + 1),$pagina_->id);  
                $pagina = $this->pagina_model->get($pagina_->id);
                $data['titulo'] = $pagina->titulo;
                $data['pagina'] = $pagina;
                $data['menus'] = $this->nested_set->getMenuBootstrap();
                $data['mod_pie'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_pie','estado'=>PUBLICADO));
                $data['mod_logo'] = $this->modulo_model->get_values('contenido',array('modulo'=>'mod_logotipo','estado'=>PUBLICADO));  
                $this->load->view('frontend/pagina',$data);                
            }elseif($pagina_->estado == DESPUBLICADO){
                redirect('404_override');
            }
        }
        else
        {
            redirect('404_override');
        }
    }
    
    /*
    public function mostrar($pagina_id = FALSE)
    {
        if($pagina_id == FALSE)
        {
            redirect('404_override');
        } 
        if($this->pagina_model->exists('id', $pagina_id))
        {
            $pagina = $this->pagina_model->get($pagina_id);
            $data['titulo'] = $pagina->titulo;
            $data['pagina'] = $pagina;
            $data['menus'] = $this->nested_set->getMenuBootstrap();
            $this->load->view('frontend/pagina',$data);
        }
        else
        {
            redirect('404_override');
        }
    }
    */
}