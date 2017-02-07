<?php
class Error extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }
    
    public function index()
	{
	}

    public function error_404()
    {
        $data['titulo'] = $this->lang->line('score_sitio_error_404');
        $this->load->view('frontend/error_404', $data);
    }
}