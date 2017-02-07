<?php
    class Biblioteca_categoria extends CI_Controller{
        public function __construct()
        {
            parent::__construct();
 
            existe_sesion_urse();
                        
            // modelos
            $this->load->model('intranet/biblioteca_model');            
            $this->load->model('intranet/biblioteca_categoria_model');
            $this->load->model('intranet/biblioteca_documento_model');
            $this->load->model('navegacion_model');
            
            // helpers
            $this->load->helper('directory');
            
            // bibliotecas
            $this->load->library('nested_set');
            
            // configuracion de categoria de biblioteca
            $this->nested_set->setControlParams('biblioteca_categoria','lft','rgt','id','padre_id','nombre');
            
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
           $navegacion = $this->navegacion_model->get_values('id',array('vista'=>BIBLIOTECA_CATEGORIAS)); 
           $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id);
           ###################################################
           # Busqueda
           ###################################################
           $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
           $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
           $safe_columns = array('biblioteca_id');
            
           $opcion_biblioteca_id = 0;
           if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {     
               if($search_in == 'biblioteca_id')
                   $opcion_biblioteca_id = $search_key;     
           } 
           
           $data['opcion_biblioteca_id'] = $opcion_biblioteca_id;                         	   
    	   
           // titulo del view
           $data['titulo'] = $this->lang->line('score_biblioteca_categorias');
           
           // bibliotecas
           $bibliotecas = $this->biblioteca_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id ASC','');
           $bibliotecas_ = array();
           $bibliotecas_[0] = '- Seleccionar biblioteca -';  
           foreach ($bibliotecas as $biblioteca)
           {
             $bibliotecas_[$biblioteca['id']] = $biblioteca['nombre'];      
           }
           $data['bibliotecas'] = $bibliotecas_;  
           
           // obtenemos todos los nodos de categoria ordenados
           if (!empty($opcion_biblioteca_id) AND $this->biblioteca_model->exists('id',$opcion_biblioteca_id))
           {
               $biblioteca_categorias_ = $this->nested_set->getTreeForSelect('nombre');
               // key = id de categoria, $value = nombre IDENTADO de la categoria
               $biblioteca_categorias = array();
               foreach ($biblioteca_categorias_ as $key => $value)
               {
                    $row = $this->biblioteca_categoria_model->get($key);
                    if($row->biblioteca_id == $opcion_biblioteca_id AND $row->bloqueado == NO_BLOQUEADO)
                    {
                        $row = (array)$row;
                        $row['nombre_identado']=$value;
                        $row = (object)$row;
                        $biblioteca_categorias[] = $row;                                                    
                    } 
               }                         
           }
           else
           {
               $biblioteca_categorias_ = $this->nested_set->getTreeForSelect('nombre');
               
               // key = id de categoria, $value = nombre IDENTADO de la categoria
               $biblioteca_categorias = array();
               foreach ($biblioteca_categorias_ as $key => $value)
               {
                    $row = $this->biblioteca_categoria_model->get($key);
                    if($row->bloqueado == NO_BLOQUEADO)
                    {
                        $row = (array)$row;
                        $row['nombre_identado']=$value;
                        $row = (object)$row;
                        $biblioteca_categorias[] = $row;                                                    
                    }  
               }            
           }           
               	   
           $data['biblioteca_categorias'] = $biblioteca_categorias;
           $this->load->view('intranet/biblioteca_categorias',$data);
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
            
            // bibliotecas
            $bibliotecas = $this->biblioteca_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id ASC','');
            $bibliotecas_ = array();
            $bibliotecas_[0] = '- Seleccionar biblioteca -';  
            foreach ($bibliotecas as $biblioteca)
            {
              $bibliotecas_[$biblioteca['id']] = $biblioteca['nombre'];      
            }
            $data['bibliotecas'] = $bibliotecas_; 
            
            // iconos de categoria
            $data['iconos'] = directory_map('./assets/img/documentos/categorias', 1);
                         
            $data['titulo'] = $this->lang->line('score_biblioteca_categoria_nuevo_titulo');
            $this->load->view('intranet/biblioteca_categoria_nuevo',$data);
        }
        
        public function existe($biblioteca_categoria_id = FALSE)
        {
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_CATEGORIAS));
            
            if($biblioteca_categoria_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            } 
            if($this->biblioteca_categoria_model->exists('id', $biblioteca_categoria_id))
            {
                $this->editar($biblioteca_categoria_id);
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_enlace').' (#'.$biblioteca_categoria_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }
        
        public function editar($biblioteca_categoria_id = FALSE)
        {
            if($biblioteca_categoria_id == FALSE)
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

            // titulo del view
            $data['titulo'] = $this->lang->line('score_biblioteca_categoria_editar_titulo');
            
            // bibliotecas
            $bibliotecas = $this->biblioteca_model->get_all('id, nombre',array('bloqueado'=>NO_BLOQUEADO),'','','id ASC','');
            $bibliotecas_ = array();
            $bibliotecas_[0] = '- Seleccionar biblioteca -';  
            foreach ($bibliotecas as $biblioteca)
            {
              $bibliotecas_[$biblioteca['id']] = $biblioteca['nombre'];      
            }
            $data['bibliotecas'] = $bibliotecas_; 
            
            // categoria de biblioteca    
            $biblioteca_categoria = $this->biblioteca_categoria_model->get($biblioteca_categoria_id);
            $data['biblioteca_categoria']=$biblioteca_categoria;
            
            // categorias filtradas por biblioteca             
            $data['biblioteca_categorias'] = get_biblioteca_categorias_select($biblioteca_categoria->biblioteca_id);
                              
            // orden de categoria de biblioteca
            $biblioteca_categoria_padre = $this->biblioteca_categoria_model->get($biblioteca_categoria->padre_id);
            $biblioteca_categoria_padre = (array)$biblioteca_categoria_padre;
            $data_[0] = $biblioteca_categoria_padre;
            $hermanos_ = $this->nested_set->getSubTreeForSelect($data_,'nombre',TRUE);

            // filtramos a los hermanos publicados y no bloqueados y que pertenezcan a la misma biblioteca
            foreach ($hermanos_ as $key => $value)
            {
                $row = $this->biblioteca_categoria_model->get($key);
                if($row->bloqueado == NO_BLOQUEADO AND $row->biblioteca_id == $biblioteca_categoria->biblioteca_id)
                {
                    $hermanos[$key] = $value;                                                    
                }  
            }            
                        
            // si existen mas de 2 hijos para la categoria padre agregamos las opciones primero y ultimo
            if(count($hermanos) >= 2)
            {
                $hermanos = array(PRIMERO => 'Primero') + $hermanos + array(ULTIMO => 'Último');
            }
            $data['hermanos'] = $hermanos;
            //$data['biblioteca_categorias'] = $this->nested_set->getTreeForSelect('nombre');
            
            // iconos de categoria
            $data['iconos'] = directory_map('./assets/img/documentos/categorias', 1);
                   
            $this->load->view('intranet/biblioteca_categoria_editar',$data);
        }
     
        public function guardar()
    	{
    	    $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_CATEGORIAS));
    		if(isset($_POST['guardar']))
    		{    		    
                $guardar = $this->input->post("guardar");
                if($guardar == EDICION)
                {
                    $biblioteca_categoria_id = $this->input->post('biblioteca_categoria_id');
                    $this->form_validation->set_rules('orden', 'Orden', 'integer|required'); 
                }
                  
                $padre_id = $this->input->post('padre_id');  
                    
    			$this->form_validation->set_rules('nombre', 'Nombre', 'trim|required');  
                $this->form_validation->set_rules('descripcion', 'Descripción', 'trim');                 
                $this->form_validation->set_rules('padre_id', 'Categoría raiz', 'integer|required');  
                $this->form_validation->set_rules('biblioteca_id', 'Biblioteca', 'integer|required|id_biblioteca_exists');                    
                $this->form_validation->set_rules('estado', 'Estado', 'integer|required|verificar_estado_biblioteca_categoria['.$padre_id.']');     

    			$this->form_validation->set_message('required', 'Falta el campo %s');
                            
    			if($this->form_validation->run() == FALSE)
    			{
    			 
                  $this->session->set_flashdata('error', validation_errors());
                  
    			  if($guardar == NUEVO)
                    $this->nuevo();
                  if($guardar == EDICION)
                    $this->editar($biblioteca_categoria_id);
    			}
                else
                {                    
                    // obtenemos los datos del usuario administrador
                    $usuario_sesion = get_user_session();
                                        
                    $nombre = $this->input->post('nombre');
                    $descripcion = $this->input->post('descripcion');
                    $icono = $this->input->post('icono');
                    $padre_id = $this->input->post('padre_id');
                    $biblioteca_id = $this->input->post('biblioteca_id');
                    $estado = $this->input->post('estado');
                    $guardar = $this->input->post("guardar");
                                                                                                
                    if($guardar == NUEVO)
                    {                                            
                        $data = array ('nombre' =>$nombre,
                                        'descripcion' =>$descripcion,
                                        'icono'=>$icono,
                                        'padre_id' =>$padre_id,
                                        'biblioteca_id' =>$biblioteca_id,
                                        'estado' =>$estado,
                                        'creado_por'=>$usuario_sesion->id);
                                        
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                            
                        $data['creado'] = $data['modificado'] = date('Y-m-d H:i:s');
                            
                        // verificamos si la nueva categoria es el primer hijo de la categoria padre
                        $biblioteca_categoria_padre = $this->biblioteca_categoria_model->get($padre_id);
                        $biblioteca_categoria_padre = (array)$biblioteca_categoria_padre;
                        
                        $numero_hijos = $this->nested_set->getNumberOfChildren($biblioteca_categoria_padre);  
                        
                        if($numero_hijos > 0)
                        {
                            $biblioteca_categoria_hijo = $this->nested_set->appendNewChild($biblioteca_categoria_padre,$data);
                        }  
                        else
                        {
                            $biblioteca_categoria_hijo = $this->nested_set->insertNewChild($biblioteca_categoria_padre,$data);
                        }
                        
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_categoria_guardado'));
                        
                        redirect('intranet/biblioteca_categoria/editar/'.$biblioteca_categoria_hijo['id']);
                                                
                    }

                    if($guardar == EDICION)
                    {
                        $orden = $this->input->post('orden');                   

                        $data = array ('nombre' =>$nombre,
                                        'descripcion' =>$descripcion,
                                        'icono'=>$icono,
                                        'padre_id' =>$padre_id,
                                        'biblioteca_id' =>$biblioteca_id,
                                        'estado' =>$estado,
                                        'modificado_por'=>$usuario_sesion->id);
                                          
                        if($estado == PUBLICADO)                
                            $data['publicado'] = date('Y-m-d H:i:s');
                        if($estado == DESPUBLICADO)    
                            $data['despublicado'] = date('Y-m-d H:i:s');
                        
                        if($this->biblioteca_categoria_model->exists('id',$biblioteca_categoria_id))
                        {       
                            $error = 0;
                            // verificamos si la categoria cambio de padre
                            $biblioteca_categoria = $this->biblioteca_categoria_model->get($biblioteca_categoria_id);
                            $biblioteca_categoria_padre = $this->biblioteca_categoria_model->get($padre_id);
                            
                            if($padre_id != $biblioteca_categoria->padre_id) // cambio de padre
                            {
                                // verificamos que la categoria no sea padre de si mismo
                                if($padre_id != $biblioteca_categoria_id)
                                {
                                    // movemos la categoria
                                    $this->nested_set->setNodeAsLastChild((array)$biblioteca_categoria, (array)$biblioteca_categoria_padre);
                                }
                                else
                                {
                                    $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_padre'));
                                    $this->editar($biblioteca_categoria_id);
                                    $error = 1;
                                }
                            }
                            else // no cambio de padre
                            {
                                // verificamos si cambio el orden
                                if($orden != $biblioteca_categoria_id) // cambio de orden
                                {  
                                   // verificamos si debe ser primero o ultimo
                                   if($orden == PRIMERO OR $orden == ULTIMO)
                                   {
                                        if($orden == PRIMERO)
                                        {
                                            $this->nested_set->setNodeAsFirstChild((array)$biblioteca_categoria, (array)$biblioteca_categoria_padre);
                                        }
                                        if($orden == ULTIMO)
                                        {
                                            $this->nested_set->setNodeAsLastChild((array)$biblioteca_categoria, (array)$biblioteca_categoria_padre);
                                        }                                        
                                   }
                                   else // se colocara el nodo despues del hermano
                                   {
                                      $biblioteca_categoria_hermano = $this->biblioteca_categoria_model->get($orden);
                                      $this->nested_set->setNodeAsNextSibling((array)$biblioteca_categoria,(array)$biblioteca_categoria_hermano);
                                   }                              
                                }                            
                            }
                            
                            if($error == 0)
                            {
                                $this->biblioteca_categoria_model->update($data, $biblioteca_categoria_id);  
                                
                                $biblioteca_categoria = $this->biblioteca_categoria_model->get($biblioteca_categoria_id);
                                // actualizamos el estado de los nodos hijo si los hubiera
                                $data = array('estado'=> $estado,
                                              'biblioteca_id'=> $biblioteca_id);
                                $tree_handle = $this->nested_set->getTreePreorder((array)$biblioteca_categoria);
                                $childrens = $tree_handle['result_array'];
                                //var_dump($childrens);
                                foreach($childrens as $children):
                                    $this->biblioteca_categoria_model->update($data, $children['id']);
                                    // actualizamos la biblioteca a la que pertenecen los documentos de las categorías
                                    $biblioteca_documentos = $this->biblioteca_documento_model->get_all('id',array('categoria_id'=>$children['id']),'','','','');
                                    foreach($biblioteca_documentos as $biblioteca_documento):
                                        $biblioteca_documento = (object)$biblioteca_documento;
                                        $this->biblioteca_documento_model->update(array('biblioteca_id'=>$biblioteca_id),$biblioteca_documento->id);
                                    endforeach;
                                endforeach;  
                                
                                                              
                                    
                                $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_categoria_guardado'));
                                //$this->editar($biblioteca_categoria_id);
                                redirect('intranet/biblioteca_categoria/editar/'.$biblioteca_categoria_id);
                            }                      
                        }
                        else
                        {
                            redirect('intranet/biblioteca_categoria/nuevo');
                        }    
                    }
    			}
    		}
            else
            {
                redirect(base_url($navegacion->navegacion));
            }
    	}

        public function eliminar($biblioteca_categoria_id = FALSE)
        {
            // obtenemos los datos del usuario administrador
            $usuario_sesion = get_user_session();
                        
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_CATEGORIAS));
            if($biblioteca_categoria_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->biblioteca_categoria_model->exists('id', $biblioteca_categoria_id))
            { 
                
                // verificamos si existen documentos en esta categoria
                $num_documentos = get_numero_documentos_biblioteca($biblioteca_categoria_id);
                if($num_documentos == 0)
                {
                    $biblioteca_categoria = $this->biblioteca_categoria_model->get($biblioteca_categoria_id);
                    $this->nested_set->blockNode((array)$biblioteca_categoria, $usuario_sesion->id);
                                    
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_categoria_eliminado'));                    
                }elseif($num_documentos >0)
                {
                    $mensaje = "No está permitida la acción 'Eliminar' para la categoría ".get_nombre_categoria($biblioteca_categoria_id).". ".$num_documentos." documentos están asignados a esta categoría.";
                    $this->session->set_flashdata('error', $mensaje);    
                }
                                
                redirect(base_url($navegacion->navegacion));
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_enlace').' (#'.$biblioteca_categoria_id.')');
                redirect(base_url($navegacion->navegacion));
            }
        }        
    
        public function publicar($biblioteca_categoria_id = FALSE)
        {
            $usuario_sesion = get_user_session();
            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_CATEGORIAS));
            
            if($biblioteca_categoria_id == FALSE)
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_enlace'));
                redirect(base_url($navegacion->navegacion));
            }
            
            if($this->biblioteca_categoria_model->exists('id', $biblioteca_categoria_id))
            {
                $biblioteca_categoria = $this->biblioteca_categoria_model->get($biblioteca_categoria_id);
                if($biblioteca_categoria->estado == DESPUBLICADO)
                {
                    $data = array(
                        'estado'=> PUBLICADO,
                        'publicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id
                    );
                    
                    // verificamos que el padre no este despublicado
                    // no puedo publicar un nodo si mi padre esta despublicado
                    $biblioteca_categoria_padre = $this->nested_set->getAncestor((array)$biblioteca_categoria);
                    $biblioteca_categoria_padre = (object)$biblioteca_categoria_padre;
                    if($biblioteca_categoria_padre->estado == PUBLICADO)
                    {
                        $tree_handle = $this->nested_set->getTreePreorder((array)$biblioteca_categoria);
                        $childrens = $tree_handle['result_array'];
                        
                        foreach($childrens as $children):
                        
                            $this->biblioteca_categoria_model->update($data, $children['id']);
                        
                        endforeach;
                        
                        $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_categoria_publicado'));
                        redirect(base_url($navegacion->navegacion));                           
                    }
                    else
                    {
                        $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_padre_despublicado'));
                        redirect(base_url($navegacion->navegacion));                        
                    }
            
                }
                else
                {
                    $data = array(
                        'estado'=> DESPUBLICADO,
                        'despublicado'=>date('Y-m-d H:i:s'),
                        'modificado_por'=>$usuario_sesion->id                        
                    );
                    
                    $tree_handle = $this->nested_set->getTreePreorder((array)$biblioteca_categoria);
                    $childrens = $tree_handle['result_array'];
                    
                    foreach($childrens as $children):
                    
                        $this->biblioteca_categoria_model->update($data, $children['id']);
                    
                    endforeach;
                    
                    $this->session->set_flashdata('mensaje', $this->lang->line('score_biblioteca_categoria_despublicado'));
                    redirect(base_url($navegacion->navegacion));                 
                }                
                
            }
            else
            {
                $this->session->set_flashdata('error', $this->lang->line('score_biblioteca_categoria_error_enlace').' (#'.$biblioteca_categoria_id.')');
                redirect(base_url($navegacion->navegacion));
            }         
        }
        
        public function listar_opciones_categorias()
        {
            
            $biblioteca_id = $this->input->post('filtro_id');
            
            if($biblioteca_id != FALSE AND $this->biblioteca_model->exists('id', $biblioteca_id))
            {
                //echo '<option value="1">Hello</option>';
               $biblioteca_categorias_ = $this->nested_set->getTreeForSelect('nombre');
               // key = id de categoria, $value = nombre IDENTADO de la categoria
               $biblioteca_categorias = array();
               foreach ($biblioteca_categorias_ as $key => $value)
               {
                    $row = $this->biblioteca_categoria_model->get($key);
                    if($row->biblioteca_id == $biblioteca_id AND $row->bloqueado == NO_BLOQUEADO)
                    {
                        $row = (array)$row;
                        $row['nombre_identado']=$value;
                        $row = (object)$row;
                        //$biblioteca_categorias[] = $row;
                        echo '<option value="'.$row->id.'">'.$row->nombre_identado.'</option>';                                                    
                    } 
               }                      
            }        
        }          
    }