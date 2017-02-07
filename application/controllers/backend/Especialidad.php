<?php
class Especialidad extends CI_Controller{

    public function __construct(){
        parent::__construct();
        //existe_sesion_urse(); 
        // modelos
        //$this->load->model('formador_model');
        $this->load->model('especialista_especialidad_model');
        $this->load->model('navegacion_model');
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
        $navegacion = $this->navegacion_model->get_values('id',array('vista'=>ESPECIALIDADES)); 
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
        $count = $this->especialista_especialidad_model->get_count($where, $order);

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
        $config['base_url'] = base_url('index.php').'/administrador/especialista/'; //always put trailing slash
        $config['total_rows'] = $count;
        $config['cur_page'] = $cur_page;
        // $config['stats_title'] = 'formadores';
        $config['url_type'] = 'q';

        $this->page->initialize($config);

        //$data['especialidades'] = $this->especialista_especialidad_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
        ########################################################################################  
        $data['titulo'] = $this->lang->line('caboco_especialidades');
        $data['especialidades'] = $this->especialista_especialidad_model->get_all('',array(),'','','orden asc','');
        $this->load->view('backend/especialidad',$data);
    }

    public function nuevo(){
        if($this->session->flashdata('mensaje')){
           $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){
           $data['error'] = $this->session->flashdata('error');
        }
        $data['titulo'] = $this->lang->line('score_formador_nuevo_titulo');
        // $data['especialidades'] = $this->especialista_especialidad_model->get_all('',array(),'','','orden asc','');        
        $data=$this->inicio_valores_formulario($data);
        $this->load->view('backend/especialidad_nuevo',$data);
    }
    
    public function existe($especialidad_id = FALSE){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALIDADES));
        if($especialidad_id == FALSE){
            $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        } 
        if($this->especialista_especialidad_model->exists('id', $especialidad_id)){
            $this->editar($especialidad_id);
        }else{
            $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace').' (#'.$especialidad_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }
    
    public function editar($especialidad_id = FALSE){
        $this->load->helper('caboco');
        if($especialidad_id == FALSE){
            $this->nuevo();
        }
        if($this->session->flashdata('mensaje')){
           $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){    
            $data['error'] = $this->session->flashdata('error');
        }
        $data['titulo'] = $this->lang->line('caboco_especialidad_editar_titulo');
        $data['especialidad']=$this->especialista_especialidad_model->get($especialidad_id);
        $this->load->view('backend/especialidad_editar',$data);
        /*
        print_r($data['especialista']);
        echo '<br/>';
        foreach ($data['especialista_especialidades'] as $e) {
            echo 'especialidad id: '.$e->id_especialidad.'<br/>';
        }
        */
    }

    public function eliminar($especialidad_id = FALSE){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALIDADES));
        if($especialidad_id == FALSE){
            $this->session->set_flashdata('error', $this->lang->line('caboco_especialidad_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        }
        if($this->especialista_especialidad_model->exists('id', $especialidad_id)){
            $this->especialista_especialidad_model->delete($especialidad_id);
            $this->session->set_flashdata('mensaje', $this->lang->line('caboco_especialidad_eliminado'));
            redirect(base_url($navegacion->navegacion));
        }else{
            $this->session->set_flashdata('error', $this->lang->line('caboco_especialidad_error_enlace').' (#'.$especialidad_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }        

    public function guardar(){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALIDADES));
        if(isset($_POST['guardar'])){                               
            $guardar = $this->input->post("guardar");
            if($guardar == EDICION){
                $especialidad_id = $this->input->post('especialidad_id'); 
            }
            //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
            $this->form_validation->set_rules('descripcion', 'Especialidad', 'trim|required');
            $this->form_validation->set_message('required', 'Falta el campo %s');
                            
            if($this->form_validation->run()==FALSE){
              $this->session->set_flashdata('error', validation_errors());
              if($guardar == NUEVO){
                $this->nuevo();
              }
              if($guardar == EDICION){
                $this->editar($especialidad_id);
              }
            }else{
                // obtenemos los datos
                $usuario_sesion = get_user_session();                   
                $descripcion = $this->input->post('descripcion');
                $especialidad = $this->input->post('especialidad');
                $estado = $this->input->post('estado');
                $guardar = $this->input->post("guardar");
                if($guardar == NUEVO){                                
                    $data = array();
                    $data = array (
                        'descripcion' => $descripcion,
                        'orden' => $especialidad,
                        'estado' => $estado,
                        'creado_por'=>$usuario_sesion->id
                    );                             
                    if($estado == PUBLICADO){                
                        $data['publicado'] = date('Y-m-d H:i:s');
                    }
                    if($estado == DESPUBLICADO){    
                        $data['despublicado'] = date('Y-m-d H:i:s');
                    }
                    $especialidad_id = $this->especialista_especialidad_model->insert($data);                 
                    $this->session->set_flashdata('mensaje', $this->lang->line('caboco_especialidad_guardado'));
                    redirect('administrador/especialidad/editar/'.$especialidad_id);
                }
                
                if($guardar == EDICION){
                    $data = array();
                    $data = array (
                        'descripcion' =>$descripcion,
                        'estado' =>$estado,
                        'modificado_por'=>$usuario_sesion->id
                    );                                    
                    if($estado == PUBLICADO){
                        $data['publicado'] = date('Y-m-d H:i:s');
                    }
                    if($estado == DESPUBLICADO){    
                        $data['despublicado'] = date('Y-m-d H:i:s');
                    }
                    if($this->especialista_especialidad_model->exists('id',$especialidad_id)){
                        $this->especialista_especialidad_model->update($data, $especialidad_id);
                        $this->session->set_flashdata('mensaje', $this->lang->line('caboco_especialidad_guardado'));
                        redirect('administrador/especialidad/editar/'.$especialidad_id);
                        //$this->editar($especialidad_id);
                    }else{
                        redirect('administrador/especialidad/nuevo');
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
                  
        if($this->especialista_especialidad_model->exists('id', $formador_id))
        {
            $formador = $this->especialista_especialidad_model->get($formador_id);
            if($formador->estado == DESPUBLICADO)
            {
                $data = array(
                    'estado'=> PUBLICADO
                );
                
                $this->especialista_especialidad_model->update($data, $formador_id);
                
                $data['id'] = $formador_id;
                echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
            }
            else
            {
                $data = array(
                    'estado'=> DESPUBLICADO
                );
                
                $this->especialista_especialidad_model->update($data, $formador_id);  

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
        
        if($this->especialista_especialidad_model->exists('id', $formador_id))
        {
            $formador = $this->especialista_especialidad_model->get($formador_id);
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

    public function inicio_valores_formulario($data){
       // Especialidades     
        $especialidades=$this->especialista_especialidad_model->get_all('',array(),'','','orden asc','');
        $especialidades_array = array();
        $especialidades_array[count($especialidades)+1]="Último";
        foreach ($especialidades as $e) {
            $e = (object) $e;
            $especialidades_array[$e->id]=$e->descripcion;    
        }
        $data['especialidades'] = $especialidades_array;
        return $data;
    }
}