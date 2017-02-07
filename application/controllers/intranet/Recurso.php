<?php
class Recurso extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        
        //existe_sesion_urse();
        
        // modelos
        //$this->load->model('intranet/xxx_model');
    }
    
    public function index()
	{	   
       $data['titulo'] = $this->lang->line('score_intranet_recurso');
       $this->load->view('intranet/recurso',$data);
	}
}