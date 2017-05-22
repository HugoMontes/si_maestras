<?php
class Centro_formacion extends CI_Controller{

    public function __construct(){
        parent::__construct();
        //existe_sesion_urse(); 
        // modelos
        $this->load->model('especialista_area_model');
        $this->load->model('centro_model');
        $this->load->model('navegacion_model');
        $this->load->model('especialista_especialidad_model');
    }

    public function index(){
        if($this->session->flashdata('mensaje')){
            $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){ 
            $data['error'] = $this->session->flashdata('error');
        }
        
        ###################################################
        # url
        ###################################################
        $url = str_replace(base_url(),"",current_url());
        $navegacion = $this->navegacion_model->get_values('id',array('vista'=>CENTROS_FORMACION)); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
        
        ###################################################
        # Busqueda
        ###################################################
        $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
        $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
        $safe_columns = array('descripcion');
        if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
            $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%' ";
            $config['add_pars']['search_key'] = $search_key;
            $config['add_pars']['search_in'] = $search_in;
            $data['buscar'] = $search_key;
        }else{
            $data['buscar']='';
        }

        ###################################################
        # Ordenamiento
        ###################################################
        $col = (isset($_GET['col']) ? $_GET['col'] : null);
        $dir = (isset($_GET['dir']) ? $_GET['dir'] : null);
        if (!is_null($col) && !is_null($dir)){
            $order = " $col $dir ";
            $config['add_pars']['col'] = $col;
            $config['add_pars']['dir'] = $dir;
        }else{
            $order = " `creado` DESC ";
        }

        ###################################################
        # Consulta principal
        ###################################################
        if (!isset($where)) {
            $where = '';
        }
        $count = $this->centro_model->get_count($where, $order);

        ###################################################
        # Pagination
        ###################################################
        $this->load->library('page');
        $cur_page = (isset($_GET['page']) ? $_GET['page'] : null);

        if (!is_numeric($cur_page) && $cur_page != 'all'){
            $cur_page = 1;
        }

        $config['rows_per_page'] = FILAS;
        $config['page_limit'] = NUMERO_ITEMS_PAGINACION;
        $config['base_url'] = base_url('index.php').'/administrador/centro/'; //always put trailing slash
        $config['total_rows'] = $count;
        $config['cur_page'] = $cur_page;
        // $config['stats_title'] = 'formadores';
        $config['url_type'] = 'q';

        $this->page->initialize($config);

        //$data['centros'] = $this->centro_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
        ########################################################################################  
        $data['titulo'] = $this->lang->line('maestras_centros');
        $data['centros'] = $this->centro_model->get_all('',array(),'','','descripcion asc','');
        $this->load->view('backend/centro_formacion',$data);
        
    }

    public function nuevo(){
        if($this->session->flashdata('mensaje')){
           $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){
           $data['error'] = $this->session->flashdata('error');
        }
        $data['titulo'] = $this->lang->line('score_formador_nuevo_titulo');
        $data=$this->inicio_valores_formulario($data);
        $this->load->view('backend/centro_formacion_nuevo',$data);
    }
    
    public function existe($centro_id = FALSE){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CENTROS_FORMACION));
        if($centro_id == FALSE){
            $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        } 
        if($this->centro_model->exists('id', $centro_id)){
            $this->editar($centro_id);
        }else{
            $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace').' (#'.$centro_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }
    
    public function editar($centro_id = FALSE){
        $this->load->helper('caboco');
        if($centro_id == FALSE){
            $this->nuevo();
        }
        if($this->session->flashdata('mensaje')){
           $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){    
            $data['error'] = $this->session->flashdata('error');
        }
        $data['titulo'] = $this->lang->line('maestras_centros_editar_titulo');
        $data['centro']=$this->centro_model->get($centro_id);
        $data['especialidades']=$this->especialista_especialidad_model->get_all('',array('id_centro'=>$centro_id),'','','','');
        $data=$this->inicio_valores_formulario($data);
        $this->load->view('backend/centro_formacion_editar',$data);
    }

    public function eliminar($centro_id = FALSE){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CENTROS_FORMACION));
        if($centro_id == FALSE){
            $this->session->set_flashdata('error', $this->lang->line('caboco_especialidad_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        }
        if($this->centro_model->exists('id', $centro_id)){
            if($this->centro_model->contains_especialidades($centro_id)>0){
                $centro=$this->centro_model->get($centro_id);
                $this->session->set_flashdata('error', 'Se ha detectado que el centro de formacion tiene rubros que pueden estar siendo utilizados por otros modulos del sistema. Ingrese a <strong><a href="'.base_url().'index.php/administrador/centro/editar/'.$centro_id.'">"'.strtoupper($centro->descripcion).'"</a></strong> y proceda ha eliminar todos los rubros asociados al mismo, posteriormente vuelva ha intentar eliminar.');
                redirect(base_url($navegacion->navegacion));
            }else{
                $this->centro_model->delete($centro_id);
                $this->session->set_flashdata('mensaje', $this->lang->line('maestras_centros_eliminado'));
                redirect(base_url($navegacion->navegacion));
            }
        }else{
            $this->session->set_flashdata('error', $this->lang->line('caboco_especialidad_error_enlace').' (#'.$centro_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }        

    public function guardar(){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CENTROS_FORMACION));
        if(isset($_POST['guardar'])){                               
            $guardar = $this->input->post("guardar");
            if($guardar == EDICION){
                $centro_id = $this->input->post('centro_id'); 
            }
            //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
            $this->form_validation->set_rules('descripcion', 'Centro de formación', 'trim|required');
            $this->form_validation->set_message('required', 'Falta el campo %s');
                            
            if($this->form_validation->run()==FALSE){
              $this->session->set_flashdata('error', validation_errors());
              if($guardar == NUEVO){
                $this->nuevo();
              }
              if($guardar == EDICION){
                $this->editar($centro_id);
              }
            }else{
                // obtenemos los datos
                $usuario_sesion = get_user_session();                   
                $descripcion = $this->input->post('descripcion');
                $nombre_carpeta=str_replace(" ", "_", $descripcion);
                $especialidades = $this->input->post('especialidades');
                $areas = $this->input->post('areas');
                $estado = $this->input->post('estado');
                $guardar = $this->input->post("guardar");

                if($guardar == NUEVO){                            
                    $data = array();
                    $data = array (
                        'descripcion' => $descripcion,
                        'estado' => $estado,
                        'directorio_imagenes' => $nombre_carpeta,
                        'creado_por'=>$usuario_sesion->id,
                    );                             
                    if($estado == PUBLICADO){                
                        $data['publicado'] = date('Y-m-d H:i:s');
                    }
                    if($estado == DESPUBLICADO){    
                        $data['despublicado'] = date('Y-m-d H:i:s');
                    }
                    $centro_id = $this->centro_model->insert($data);
                    for($i=0;$i<count($especialidades);$i++) {
                        if($especialidades[$i]!=""){
                            $data = array (
                                'id_centro' => $centro_id,
                                'id_area' => $areas[$i],
                                'descripcion' => $especialidades[$i],
                                'creado_por' => $usuario_sesion->id,
                                'estado' => 1,
                            );
                            $this->centro_model->insert_especialidad($data);
                        }
                    }
                    $this->crear_directorio($nombre_carpeta);     
                    $this->session->set_flashdata('mensaje', $this->lang->line('caboco_especialidad_guardado'));
                    redirect('administrador/centro/editar/'.$centro_id);
                }
                
                if($guardar == EDICION){
                    $id_especialidades = $this->input->post('id_especialidades');
                    $data = array();
                    $data = array (
                        'descripcion' =>$descripcion,
                        'estado' =>$estado,
                    );                                    
                    if($estado == PUBLICADO){
                        $data['publicado'] = date('Y-m-d H:i:s');
                    }
                    if($estado == DESPUBLICADO){    
                        $data['despublicado'] = date('Y-m-d H:i:s');
                    }
                    
                    if($this->centro_model->exists('id',$centro_id)){
                        // ACTUALIZAR CENTRO
                        $this->centro_model->update($data, $centro_id);                        
                        // ACTUALIZAR ESPECIALIDADES/RUBROS LOS QUE TIENEN ID
                        for($i=0;$i<count($id_especialidades);$i++) {
                            $data = array (
                                'id_area' => $areas[$i],
                                'descripcion' => $especialidades[$i],
                            );
                            $this->centro_model->update_especialidad($data,$id_especialidades[$i]);
                        }
                        // GUARDAR NUEVAS ESPECIALIDADES RUBROS
                        for($j=$i;$j<count($especialidades);$j++) {
                            if($especialidades[$j]!=""){
                                $data = array (
                                    'id_centro' => $centro_id,
                                    'id_area' => $areas[$i],
                                    'descripcion' => $especialidades[$j],
                                    'creado_por' => $usuario_sesion->id,
                                    'estado' => 1,
                                );
                                $this->centro_model->insert_especialidad($data);
                            }
                        }
                        $this->session->set_flashdata('mensaje', $this->lang->line('maestras_centros_guardado'));
                        redirect('administrador/centro/editar/'.$centro_id);
                        
                    }else{
                        redirect('administrador/centro/nuevo');
                    } 
                }
            }
        }else{
            redirect(base_url($navegacion->navegacion));
        }
    }
    
    public function publicar()
    {
        $formador_id = $this->input->post('id');
                  
        if($this->centro_model->exists('id', $formador_id))
        {
            $formador = $this->centro_model->get($formador_id);
            if($formador->estado == DESPUBLICADO)
            {
                $data = array(
                    'estado'=> PUBLICADO
                );
                
                $this->centro_model->update($data, $formador_id);
                
                $data['id'] = $formador_id;
                echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
            }
            else
            {
                $data = array(
                    'estado'=> DESPUBLICADO
                );
                
                $this->centro_model->update($data, $formador_id);  

                $data['id'] = $formador_id;
                echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
            }
        }           
    }
    
    public function publicar_mensaje()
    {
        $formador_id = $this->input->post('id');
        
        if(empty($formador_id))
        {          
            $data['error'] = $this->lang->line('score_formador_error_enlace');
            echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
        } 
        
        if($this->centro_model->exists('id', $formador_id))
        {
            $formador = $this->centro_model->get($formador_id);
            if($formador->estado == 0)
            {                    
                $data['mensaje'] = $this->lang->line('score_formador_despublicado');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
            }
            else
            {
                $data['mensaje'] = $this->lang->line('score_formador_publicado');
                echo $this->load->view('backend/ajax/mensaje',$data,TRUE); 
            }
        }
        else
        {
            $data['error'] = $this->lang->line('score_formador_error_enlace').' (#'.$formador_id.')';
            echo $this->load->view('backend/ajax/mensaje',$data,TRUE);
        } 
    }

    public function crear_directorio($nombre_carpeta){
        chmod('./assets/filemanager/userfiles/', 0777);
        $dir_carpeta = './assets/filemanager/userfiles/'.$nombre_carpeta;
        if (!file_exists($dir_carpeta)) {
            mkdir($dir_carpeta, 0755, TRUE);
        }
    }

    public function valida_eliminar_especialidad(){
        $id_especialidad = $this->input->post('id_especialidad');
        $nro_maestras=$this->centro_model->get_count_maestras($id_especialidad);
        $nro_solicitudes=$this->centro_model->get_count_solicitudes($id_especialidad);
        $data=array(
            'nro_maestras'=>$nro_maestras,
            'nro_solicitudes'=>$nro_solicitudes,
        );
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($data,JSON_NUMERIC_CHECK);
        exit(); 
    }

    public function delete_especialidad(){
        $id_especialidad = $this->input->post('id_especialidad');
        $nro_maestras=$this->centro_model->delete_especialidad($id_especialidad);
        $data=array();
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($data,JSON_NUMERIC_CHECK);
        exit();   
    }

    private function inicio_valores_formulario($data){
        // $data['areas']=$this->especialista_area_model->get_all('',array('estado'=>1),'','','','');
        // Seleccion areas
        $areas=$this->especialista_area_model->get_all('',array('estado'=>1),'','','descripcion','');
        $areas_array = array();
        $areas_array[0]='Seleccionar una area';
        foreach ($areas as $area) {
            $areas_array[$area->id]=$area->descripcion;
        }
        $data['areas'] = $areas_array;
        return $data;
    }
}