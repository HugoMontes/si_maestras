<?php
class Testimonio extends CI_Controller{
    public function __construct()
    {
        parent::__construct();

        //existe_sesion_urse();
                
        // modelos
        $this->load->model('testimonio_model');  
        $this->load->model('navegacion_model');  
    }
    
    public function index()
	{
       if($this->session->flashdata('mensaje'))
       {
           $data['mensaje'] = $this->session->flashdata('mensaje');
       } 
       elseif ($this->session->flashdata('error'))
       { 
           $data['error'] = $this->session->flashdata('error');
       }
        
        ###################################################
        # url
        ###################################################
        $url = str_replace(base_url(),"",current_url());
        $navegacion = $this->navegacion_model->get_values('id',array('vista'=>TESTIMONIOS)); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
        ###################################################
        #	Busqueda
        ###################################################
        $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
        $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
        $safe_columns = array('titulo','estado');
        if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
            $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
        
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
            $where = '';
        }
        $count = $this->testimonio_model->get_count($where, $order);
        
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
        $config['base_url'] = base_url('index.php') . '/administrador/testimonio/'; //always put trailing slash
        $config['total_rows'] = $count;
        $config['cur_page'] = $cur_page;
        $config['stats_title'] = 'testimonios';
        $config['url_type'] = 'q';
        
        $this->page->initialize($config);
        
        $data['testimonios'] = $this->testimonio_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
       ########################################################################################  

       $data['titulo'] = $this->lang->line('score_testimonios');
       $this->load->view('backend/testimonios',$data);
	}

    public function nuevo()
    {
         if($this->session->flashdata('mensaje'))
         {
            $data['mensaje'] = $this->session->flashdata('mensaje');
         } 
         elseif ($this->session->flashdata('error'))
         {
            
            $data['error'] = $this->session->flashdata('error');
         }
        
        $data['titulo'] = $this->lang->line('score_testimonio_nuevo_titulo');
        $this->load->view('backend/testimonio',$data);
    }
    

    public function eliminar($testimonio_id = FALSE)
    {
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>TESTIMONIOS));
        
        if($testimonio_id == FALSE)
        {
            $this->session->set_flashdata('error', $this->lang->line('score_testimonio_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        }
        
        if($this->testimonio_model->exists('id', $testimonio_id))
        {
            $this->testimonio_model->delete($testimonio_id);
            $this->session->set_flashdata('mensaje', $this->lang->line('score_testimonio_eliminado'));
            redirect(base_url($navegacion->navegacion));
        }
        else
        {
            $this->session->set_flashdata('error', $this->lang->line('score_testimonio_error_enlace').' (#'.$testimonio_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }        

    public function publicar()
    {
        $testimonio_id = $this->input->post('id');
        
        if($this->testimonio_model->exists('id', $testimonio_id))
        {
            $testimonio = $this->testimonio_model->get($testimonio_id);
            if($testimonio->estado == 0)
            {
                $data = array(
                    'estado'=> 1
                );
                
                $this->testimonio_model->update($data, $testimonio_id);
                
                $data['id'] = $testimonio_id;
                echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
            }
            else
            {
                $data = array(
                    'estado'=> 0
                );
                
                $this->testimonio_model->update($data, $testimonio_id);
                
                $data['id'] = $testimonio_id;
                echo $this->load->view('backend/ajax/publicar_down',$data,TRUE); 
            }              
        }    
    }

    public function publicar_mensaje()
    {
        $testimonio_id = $this->input->post('id');
        
        if(empty($testimonio_id))
        {          
            $data['error'] = $this->lang->line('score_testimonio_error_enlace');
            echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
        } 
        
        if($this->testimonio_model->exists('id', $testimonio_id))
        {
            $testimonio = $this->testimonio_model->get($testimonio_id);
            if($testimonio->estado == 0)
            {                    
                $data['mensaje'] = $this->lang->line('score_testimonio_despublicado');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            }
            else
            {
                $data['mensaje'] = $this->lang->line('score_testimonio_publicado');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
            }
        }
        else
        {
            $data['error'] = $this->lang->line('score_testimonio_error_enlace').' (#'.$testimonio_id.')';
            echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
        } 
    }
            
    public function guardar()
	{
	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>TESTIMONIOS));
		
        if(isset($_POST['guardar']))
		{                          
			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
            $this->form_validation->set_rules('tipo', 'Tipo de testimonio', 'trim|required');
            $this->form_validation->set_rules('contenido', 'Contenido', 'trim|required');                     
            $this->form_validation->set_rules('estado', 'Estado', 'integer|required');  

			$this->form_validation->set_message('required', 'Falta el campo %s');
                            
			if($this->form_validation->run() == FALSE)
			{
              $this->session->set_flashdata('error', validation_errors());
              $this->nuevo();
			}           
		}
        else
        {
            redirect(base_url($navegacion->navegacion));  
        }        
	}   
}