<?php

    class Pagina_predisenada extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
 
            //existe_sesion_urse();
                        
            // modelos
            $this->load->model('pagina_predisenada_model');
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
            $navegacion = $this->navegacion_model->get_values('id',array('vista'=>PAGINAS_PREDISENADAS)); 
            $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
            ###################################################
            #	Busqueda
            ###################################################
            $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
            $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
            $safe_columns = array('titulo');
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
                $order = " `id` DESC ";
            }
            
            ###################################################
            #	Consulta principal
            ###################################################
            if (!isset($where)) {
                $where = '';
            }
            $count = $this->pagina_predisenada_model->get_count($where, $order);
            
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
            $config['base_url'] = base_url('index.php') . '/administrador/pagina_predisenada/'; //always put trailing slash
            $config['total_rows'] = $count;
            $config['cur_page'] = $cur_page;
            $config['stats_title'] = 'páginas';
            $config['url_type'] = 'q';
            
            $this->page->initialize($config);
            
            $data['paginas'] = $this->pagina_predisenada_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
           ########################################################################################  
           
    	   $data['titulo'] = $this->lang->line('score_paginas_predisenadas');
    	   //$data['paginas'] = $this->pagina_predisenada_model->get_all();
           $this->load->view('backend/paginas_predisenadas',$data);
    	}

                    
        public function publicar()
        {
            $pagina_id = $this->input->post('id');
                      
            if($this->pagina_predisenada_model->exists('id', $pagina_id))
            {
                $pagina = $this->pagina_predisenada_model->get($pagina_id);
                if($pagina->estado == DESPUBLICADO)
                {
                    $data = array(
                        'estado'=> PUBLICADO
                    );
                    
                    $this->pagina_predisenada_model->update($data, $pagina_id);
                    
                    $data['id'] = $pagina_id;
                    echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
                }
                else
                {
                    $data = array(
                        'estado'=> DESPUBLICADO
                    );
                    
                    $this->pagina_predisenada_model->update($data, $pagina_id);  

                    $data['id'] = $pagina_id;
                    echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
                }
            }           
        }
        
        public function publicar_mensaje()
        {
            $pagina_id = $this->input->post('id');
            
            if(empty($pagina_id))
            {          
                $data['error'] = $this->lang->line('score_pagina_predisenada_error_enlace');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            } 
            
            if($this->pagina_predisenada_model->exists('id', $pagina_id))
            {
                $pagina = $this->pagina_predisenada_model->get($pagina_id);
                if($pagina->estado == DESPUBLICADO)
                {                    
                    $data['mensaje'] = $this->lang->line('score_pagina_predisenada_despublicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
                }
                else
                {
                    $data['mensaje'] = $this->lang->line('score_pagina_predisenada_publicada');
                    echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
                }
            }
            else
            {
                $data['error'] = $this->lang->line('score_pagina_predisenada_error_enlace').' (#'.$pagina_id.')';
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
            } 
        }
    }