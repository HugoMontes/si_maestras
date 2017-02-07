<?php
class Escritorio extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        
        existe_sesion_urse();
        
        // modelos
        //$this->load->model('');

    }
    
    public function index()
	{	   
       $data['titulo'] = $this->lang->line('score_escritorio_titulo');
       $this->load->view('intranet/escritorio',$data);
	}
}