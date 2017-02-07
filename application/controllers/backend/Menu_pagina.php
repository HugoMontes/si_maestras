<?php

    class Menu_pagina extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
 
            //existe_sesion_urse();
                        
            // modelos
            $this->load->model('menu_model');
            $this->load->model('pagina_predisenada_model');
            $this->load->model('pagina_model');
            $this->load->model('navegacion_model');
            
            // bibliotecas
            $this->load->library('nested_set');
            
            // configuracion de menu
            $this->nested_set->setControlParams('menu','lft','rgt','id','padre_id','titulo');
            
            // maqueta de campos extras para la biblioteca nested_set
            /*$extrafields = array('enlace'=>'',
                                 'tipo'=>0,
                                 'abrir_en'=>0,
                                 'estado'=>1,
                                 'creado'=>date('Y-m-d H:i:s'),
                                 'creado_por'=>0,
                                 'modificado'=>date('Y-m-d H:i:s'),
                                 'modificado_por'=>0,
                                 'publicado'=>date('Y-m-d H:i:s'),
                                 'despublicado'=>date('Y-m-d H:i:s'));*/
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
           $navegacion = $this->navegacion_model->get_values('id',array('vista'=>MENUS)); 
           $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id);
                      	   
    	   $data['titulo'] = $this->lang->line('score_menus');
           
           // obtenemos todos los nodos de menu ordenados
           $menus_ = $this->nested_set->getTreeForSelect('titulo');
           
           // key = id de menu, $value = titulo IDENTADO de menu
           $menus = array();
           foreach ($menus_ as $key => $value)
           {
                $row = $this->menu_model->get($key);
                $row = (array)$row;
                $row['titulo_identado']=$value;
                $row = (object)$row;
                $menus[] = $row;  
           }
           
    	   $data['menus'] = $menus;
           $this->load->view('backend/menus',$data);
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
              
            $data['menus'] = $this->nested_set->getTreeForSelect('titulo');
            $data['paginas'] = $this->pagina_model->get_all('',array(),'','','creado DESC','');
            $data['paginas_predisenadas'] = $this->pagina_predisenada_model->get_all('',array(),'','','creado DESC','');
            $data['titulo'] = $this->lang->line('score_menu_nuevo_titulo');
            $this->load->view('backend/menu_pagina_nuevo',$data);
        }
        
        public function existe($menu_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>MENUS));
            if($menu_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_menu_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->menu_model->exists('id', $menu_id))
            {
                $this->editar($menu_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_menu_error_enlace').' (#'.$menu_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($menu_id = FALSE)
        {
            if($menu_id == FALSE)
            {
                $this->nuevo();
            }
            
            if($this->session->flashdata('mensaje'))
            {
               $data['mensaje'] = $this->session->flashdata('mensaje');
            } 
            elseif ($this->session->flashdata('error'))
            {    
                $data['error'] = $this->session->flashdata('error');
            }

            $data['titulo'] = $this->lang->line('score_menu_editar_titulo');
                        
            $menu = $this->menu_model->get($menu_id);
            $data['menu'] = $menu;
            
            if(!empty($menu->instancia))
            {
                if($menu->tipo == MENU_PAGINA)
                {
                    $array = explode('/',$menu->instancia);
                    
                    $pagina_tipo = $array[0]; // tipo de pagina
                    $pagina_id = $array[1];  // identificador de pagina
                    
                    if($pagina_tipo == PAGINA_CREADA){
                        $data['pagina_'] = $this->pagina_model->get($pagina_id); 
                        $data['pagina_tipo'] = PAGINA_CREADA;  
                    }elseif($pagina_tipo == PAGINA_PREDISENADA){
                        $data['pagina_'] = $this->pagina_predisenada_model->get($pagina_id);
                        $data['pagina_tipo'] = PAGINA_PREDISENADA;
                    }
                                       
                }
                if($menu->tipo == MENU_URL)
                {
                    $data['pagina_'] = (object) array('titulo' => 'Seleccionar una página' ,
                                                      'id' =>'' );
                    $data['pagina_tipo'] = PAGINA_CREADA;   
                }
            }
            else
            {
                $data['pagina_'] = (object) array('titulo' => 'Seleccionar una página' ,
                                                  'id' =>'' );
                $data['pagina_tipo'] = PAGINA_CREADA;                
            }

            $menu_padre = $this->menu_model->get($menu->padre_id);
            
            $menu_padre = (array)$menu_padre;
            
            $data_[0] = $menu_padre;
            
            $hermanos = $this->nested_set->getSubTreeForSelect($data_,'titulo',TRUE);
            
            // si existen mas de 2 hijos para el menu padre agregamos las opciones primero y ultimo
            if(count($hermanos) >= 2)
            {
                $hermanos = array(PRIMERO => 'Primero') + $hermanos + array(ULTIMO => 'Último');
            }
            
            $data['hermanos'] = $hermanos;
            $data['menus'] = $this->nested_set->getTreeForSelect('titulo');
            $data['paginas'] = $this->pagina_model->get_all('',array(),'','','creado DESC','');
            $data['paginas_predisenadas'] = $this->pagina_predisenada_model->get_all('',array(),'','','creado DESC','');
                   
            $this->load->view('backend/menu_pagina_editar',$data);
        }
    
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>MENUS));
    		if(isset($_POST['guardar']))
    		{    		    
    		    $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $menu_id = $this->input->post('menu_id');
                    $this->form_validation->set_rules('orden', 'Orden', 'integer|required'); 
                }
                    
                $padre_id = $this->input->post('padre_id');
                
                //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
    			$this->form_validation->set_rules('titulo', 'Título', 'trim|required');
                $this->form_validation->set_rules('abrir_en', 'Abrir en', 'integer|required');   
                $this->form_validation->set_rules('padre_id', 'Elemento principal', 'integer|required');                    
                $this->form_validation->set_rules('pagina_id', 'Página', 'is_natural_no_zero|required');
                $this->form_validation->set_rules('pagina_tipo', 'Tipo de página', 'is_natural_no_zero|required');
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required|verificar_estado_menu['.$padre_id.']');     

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                            
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($menu_id);
    			}
                else
                {
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $titulo = $this->input->post('titulo');
                    $abrir_en = $this->input->post('abrir_en');
                    $padre_id = $this->input->post('padre_id');
                    $pagina_id = $this->input->post('pagina_id');
                    $pagina_tipo = $this->input->post('pagina_tipo');
                    $instancia = $pagina_tipo.'/'.$pagina_id;
                    $estado = $this->input->post('estado');
                    $tipo = MENU_PAGINA;
                    $guardar = $this->input->post("guardar");
                    
                    $enlace =  '';
                    if($pagina_tipo == PAGINA_CREADA){
                        $pagina = $this->pagina_model->get($pagina_id);
                        $enlace = 'index.php/pagina/'.$pagina->alias;
                    }elseif($pagina_tipo == PAGINA_PREDISENADA){
                        $pagina = $this->pagina_predisenada_model->get($pagina_id);
                        $enlace = 'index.php/'.$pagina->alias;
                    }
                                                                                                
                    if($guardar == NUEVO)
                    {                                            
                        $data = array ('titulo' =>$titulo,
                                        'abrir_en' =>$abrir_en,
                                        'padre_id' =>$padre_id,
                                        'enlace' => $enlace,
                                        'estado' =>$estado,
                                        'tipo' =>$tipo,
                                        'instancia' => $instancia,
                                        'creado_por'=>$usuario_sesion->id);
                                        
                                        
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                            
                        $data['creado'] = $data['modificado'] = date('Y-m-d H:i:s');    
                            
                        // verificamos si el nuevo menu es el primer hijo del menu padre
                        $menu_padre = $this->menu_model->get($padre_id);
                        $menu_padre = (array)$menu_padre;
                        
                        $numero_hijos = $this->nested_set->getNumberOfChildren($menu_padre);  
                        
                        if($numero_hijos > 0)
                        {
                            $menu_hijo = $this->nested_set->appendNewChild($menu_padre,$data);
                        }  
                        else
                        {
                            $menu_hijo = $this->nested_set->insertNewChild($menu_padre,$data);
                        }
                        
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_menu_guardado'));
                        
                        redirect('administrador/menu_pagina/editar/'.$menu_hijo['id']);
                        
                        //$this->editar($menu_hijo['id']);
                        
                    }

                    if($guardar == EDICION)
                    {
                        $orden = $this->input->post('orden');                  
                            
                        $data = array ('titulo' =>$titulo,
                                        'abrir_en' =>$abrir_en,
                                        'padre_id' =>$padre_id,
                                        'enlace' => $enlace,
                                        'estado' =>$estado,
                                        'tipo' =>$tipo,
                                        'instancia' => $instancia,
                                        'modificado_por'=>$usuario_sesion->id);
                                          
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                        
                        if($this->menu_model->exists('id',$menu_id))
                        {       
                            $error = 0;
                            // verificamos si el menu cambio de padre
                            $menu = $this->menu_model->get($menu_id);
                            $menu_padre = $this->menu_model->get($padre_id);
                            
                            if($padre_id != $menu->padre_id) // cambio de padre
                            {
                                // verificamos que el menu no sea padre de si mismo
                                if($padre_id != $menu_id)
                                {
                                    // movemos el menu
                                    $this->nested_set->setNodeAsLastChild((array)$menu, (array)$menu_padre);
                                }
                                else
                                {
                                    $this->session->set_flashdata('error', $this->lang->line('score_menu_error_padre'));
                                    $this->editar($menu_id);
                                    $error = 1;
                                }
                            }
                            else // no cambio de padre
                            {
                                // verificamos si cambio el orden
                                if($orden != $menu_id) // cambio de orden
                                {  
                                   // verificamos si debe ser primero o ultimo
                                   if($orden == PRIMERO OR $orden == ULTIMO)
                                   {
                                        if($orden == PRIMERO)
                                        {
                                            $this->nested_set->setNodeAsFirstChild((array)$menu, (array)$menu_padre);
                                        }
                                        if($orden == ULTIMO)
                                        {
                                            $this->nested_set->setNodeAsLastChild((array)$menu, (array)$menu_padre);
                                        }                                        
                                   }
                                   else // se colocara el nodo despues del hermano
                                   {
                                      $menu_hermano = $this->menu_model->get($orden);
                                      $this->nested_set->setNodeAsNextSibling((array)$menu,(array)$menu_hermano);
                                   }                              
                                }                            
                            }
                            
                            if($error == 0)
                            {
                                $this->menu_model->update($data, $menu_id);  
                                
                                // actualizamos el estado de los nodos hijo si los hubiera
                                $data = array('estado'=> $estado);
                                $tree_handle = $this->nested_set->getTreePreorder((array)$menu);
                                $childrens = $tree_handle['result_array'];
                                foreach($childrens as $children):
                                    $this->menu_model->update($data, $children['id']);
                                endforeach;
                                    
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_menu_guardado'));
                                //$this->editar($menu_id);
                                redirect('administrador/menu_pagina/editar/'.$menu_id);
                            }                      
                        }
                        else
                        {
                            redirect('administrador/menu_pagina/nuevo');
                        }    
                    }
    			}
    		}
            else
            {
                redirect(base_url($navegacion->navegacion));
            }
    	}
    }