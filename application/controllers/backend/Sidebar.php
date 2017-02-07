<?php
class Sidebar extends CI_Controller{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('sidebar_model');
    }
    
    public function index()
    {
        //$sidebar = $this->sidebar_model->get_all('id, estado',array(),'','1','id DESC','');
        $sidebar = $this->sidebar_model->get(1);
        if($sidebar->estado == COLAPSADO)
        {
            $data = array(
                'estado'=> EXTENDIDO
            );
            $this->sidebar_model->update($data, $sidebar->id);
        }
        else
        {
            $data = array(
                'estado'=> COLAPSADO
            );
            $this->sidebar_model->update($data, $sidebar->id);               
        }                
        
    }        
}