<?php
class Especialista_centro extends CI_Controller{

    public function __construct(){
        parent::__construct();
        //existe_sesion_urse(); 
        // modelos
        //$this->load->model('formador_model');
        $this->load->model('especialista_trabajador_model');
        $this->load->model('especialista_depto_model');
        $this->load->model('especialista_ciudad_model');
        $this->load->model('especialista_especialidad_model');
        $this->load->model('especialista_trabajador_especialidad_model');
        $this->load->model('navegacion_model');
    }

    public function index(){
        $usuario_sesion = get_user_session();
        if($this->session->flashdata('mensaje')){
            $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){ 
            $data['error'] = $this->session->flashdata('error');
        }
        ###################################################
        # url
        ###################################################
        $url = str_replace(base_url(),"",current_url());
        $navegacion = $this->navegacion_model->get_values('id',array('vista'=>ESPECIALISTAS)); 
        $this->navegacion_model->update(array('navegacion'=>$url),$navegacion->id); 
        
        
        ###################################################
        # Busqueda
        ###################################################
        $search_key = (isset($_GET['search_key']) ? $_GET['search_key'] : null);
        $search_in = (isset($_GET['search_in']) ? $_GET['search_in'] : null);
        $safe_columns = array('nombres','apellidos');
        if (!is_null($search_key) && !is_null($search_in) && in_array($search_in, $safe_columns)) {
            $where = " `" . $search_in . "` LIKE '%" . $this->db->escape_like_str($search_key) . "%'";
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
        /*
        ###################################################
        # Consulta principal
        ###################################################
        if (!isset($where)) {
            $where = '';
        }else{
            $where = '';
        }
        //$count = $this->especialista_trabajador_model->get_count($where, $order);
        $count = $this->especialista_trabajador_model->get_count_by_id_centro($where, $order, $usuario_sesion->centro_formacion);

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
        */
        //$data['trabajadores'] = $this->especialista_trabajador_model->get_pagination($cur_page, $config['rows_per_page'], $where, $order);
        //$data['trabajadores'] = $this->especialista_trabajador_model->get_pagination_by_id_centro($cur_page, $config['rows_per_page'], $where, $order, $usuario_sesion->centro_formacion);
        $data['trabajadores'] = $this->especialista_trabajador_model->get_all_trabajadores_by_id_centro($usuario_sesion->centro_formacion);
        ########################################################################################  
        $data['titulo'] = $this->lang->line('caboco_especialistas');
        
        $this->load->view('backend/especialista_centro',$data);
    }

    public function nuevo(){
        if($this->session->flashdata('mensaje')){
           $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){
           $data['error'] = $this->session->flashdata('error');
        }
        $data['titulo'] = $this->lang->line('score_formador_nuevo_titulo');
        $data=$this->inicio_valores_formulario($data);
        //print_r($data['centros_formacion'][0]['especialidades']);
        $this->load->view('backend/especialista_centro_nuevo',$data);
    }
    
    public function existe($especialista_id = FALSE){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALISTAS));
        if($especialista_id == FALSE){
            $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        } 
        if($this->especialista_trabajador_model->exists('id', $especialista_id)){
            $this->editar($especialista_id);
        }else{
            $this->session->set_flashdata('error', $this->lang->line('score_formador_error_enlace').' (#'.$especialista_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }
    
    public function editar($especialista_id = FALSE){
        $this->load->helper('caboco');
        if($especialista_id == FALSE){
            $this->nuevo();
        }
        if($this->session->flashdata('mensaje')){
           $data['mensaje'] = $this->session->flashdata('mensaje');
        }elseif ($this->session->flashdata('error')){    
            $data['error'] = $this->session->flashdata('error');
        }
        $data['titulo'] = $this->lang->line('caboco_especialista_editar_titulo');
        $data['especialista']=$this->especialista_trabajador_model->get($especialista_id);
        $data['especialista_especialidades']=$this->especialista_trabajador_especialidad_model->get_especialidades($especialista_id);
        $data=$this->inicio_valores_formulario($data);
        $this->load->view('backend/especialista_centro_editar',$data);
    }


    public function eliminar($especialista_id = FALSE){
        $usuario_sesion = get_user_session();
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALISTAS));
        if($especialista_id == FALSE){
            $this->session->set_flashdata('error', $this->lang->line('caboco_especialista_error_enlace'));
            redirect(base_url($navegacion->navegacion));
        }
        if($this->especialista_trabajador_model->exists('id', $especialista_id)){
            // $this->especialista_trabajador_model->delete($especialista_id);
            if($this->especialista_trabajador_model->delete_relations($especialista_id, $usuario_sesion->centro_formacion)){
                $this->session->set_flashdata('mensaje', $this->lang->line('caboco_especialista_eliminado'));    
            }else{
                $this->session->set_flashdata('mensaje', 'Error al eliminar, intentelo mas tarde o comuniquese con el administrador del sitio');                    
            }
            redirect(base_url($navegacion->navegacion));
        }else{
            $this->session->set_flashdata('error', $this->lang->line('caboco_especialista_error_enlace').' (#'.$especialista_id.')');
            redirect(base_url($navegacion->navegacion));
        }
    }        

    public function guardar(){
        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALISTAS));
        if(isset($_POST['guardar'])){                               
            $guardar = $this->input->post("guardar");
            if($guardar == EDICION){
                $especialista_id = $this->input->post('especialista_id'); 
            }
            //required=campo obligatorio||xss_clean=evitamos inyecciones de codigo
            $this->form_validation->set_rules('ci', 'Cedula de identidad', 'trim|required');
            $this->form_validation->set_rules('nombres', 'Nombres', 'trim|required');
            $this->form_validation->set_rules('apellidos', 'Apellidos', 'trim|required');
            $this->form_validation->set_rules('ciudad', 'Ciudad', 'trim|required');
            $this->form_validation->set_rules('direccion', 'Direccion', 'trim|required');
            $this->form_validation->set_rules('estado', 'Estado', 'integer|required');
            $this->form_validation->set_rules('correo', 'Correo', 'valid_email');
            $this->form_validation->set_message('required', 'Falta el campo %s');
                            
            if($this->form_validation->run()==FALSE){
              $this->session->set_flashdata('error', validation_errors());
              if($guardar == NUEVO){
                $this->nuevo();
              }
              if($guardar == EDICION){
                $this->editar($especialista_id);
              }
            }else{
                // obtenemos los datos del usuario administrador
                $usuario_sesion = get_user_session();                   
                $ci = $this->input->post('ci');
                $depto = $this->input->post('depto');
                $nombres = $this->input->post('nombres');
                $apellidos = $this->input->post('apellidos');
                $ciudad = $this->input->post('ciudad');
                $dia=$this->input->post('dia');
                $mes=$this->input->post('mes');
                $anio=$this->input->post('anio');
                $fechanac = $anio.'-'.$mes.'-'.$dia;
                $genero = 'mujer';
                $especialidades = $this->input->post('especialidades');
                $fecha_certificacion = $this->input->post('fecha-certificacion');
                $direccion = $this->input->post('direccion');
                $telefono1 = $this->input->post('telefono1');
                $telefono2 = $this->input->post('telefono2');
                $correo = $this->input->post('correo');
                $estado = $this->input->post('estado');
                $guardar = $this->input->post("guardar");
                /*
                echo "<br/>MAESTRA<br/>";
                echo "Nombre: ".$nombres;
                echo "<br/>ESPECIALIDADES<br/>";
                print_r($especialidades);
                echo "<br/>FECHA CERTIFICACION<br/>";
                print_r($fecha_certificacion);
                */         
               
                if($guardar == NUEVO){
                    $data = array();
                    $data = array (
                        'ci' => $ci,
                        'id_departamento' => $depto,
                        'nombres' => $nombres,
                        'apellidos' => $apellidos,
                        'id_ciudad' => $ciudad,
                        'fecha_nacimiento' => $fechanac,
                        'genero' => $genero,
                        'direccion' => $direccion,
                        'telefono_contacto' => $telefono1,
                        'telefono_referencia' => $telefono2,
                        'correo' => $correo,
                        'estado' => $estado,
                        'creado_por'=>$usuario_sesion->id
                    );                             
                    if($estado == PUBLICADO){                
                        $data['publicado'] = date('Y-m-d H:i:s');
                    }
                    if($estado == DESPUBLICADO){    
                        $data['despublicado'] = date('Y-m-d H:i:s');
                    }
                    $especialista_id = $this->especialista_trabajador_model->insert($data);
                    for($i=0;$i<count($especialidades);$i++) {
                        $data = array (
                            'id_trabajador' => $especialista_id,
                            'id_especialidad' => $especialidades[$i],
                            'fecha_certificacion' => $fecha_certificacion[$i]==''?date('Y-m-d H:i:s'):$fecha_certificacion[$i],
                        );
                        $this->especialista_trabajador_especialidad_model->insert($data);
                    }

                    $this->session->set_flashdata('mensaje', $this->lang->line('caboco_especialista_guardado'));
                    redirect('administrador/especialista/centro/editar/'.$especialista_id);
                }                
                if($guardar == EDICION){
                    $data = array();
                    $data = array (
                        'ci' =>$ci,
                        'id_departamento' =>$depto,
                        'nombres' =>$nombres,
                        'apellidos' => $apellidos,
                        'id_ciudad' =>$ciudad,
                        'fecha_nacimiento' =>$fechanac,
                        'genero' =>$genero,
                        'direccion' =>$direccion,
                        'telefono_contacto' => $telefono1,
                        'telefono_referencia' => $telefono2,
                        'correo' =>$correo,
                        'estado' =>$estado,
                    );                                    
                    if($estado == PUBLICADO){
                        $data['publicado'] = date('Y-m-d H:i:s');
                    }
                    if($estado == DESPUBLICADO){    
                        $data['despublicado'] = date('Y-m-d H:i:s');
                    }
                    if($this->especialista_trabajador_model->exists('id',$especialista_id)){
                        $this->especialista_trabajador_model->update($data, $especialista_id);
                        $this->especialista_trabajador_especialidad_model->delete_id_especialista($especialista_id);
                        for($i=0;$i<count($especialidades);$i++) {
                            $data=array();
                            $data = array (
                                'id_trabajador' => $especialista_id,
                                'id_especialidad' => $especialidades[$i],
                                'fecha_certificacion' => $fecha_certificacion[$i]==''?date('Y-m-d H:i:s'):$fecha_certificacion[$i],
                            );
                            /*
                            echo "========";
                            echo $especialista_id."-".$especialidades[$i]."-".$fecha_certificacion[$i]."<br>";
                            */
                            $this->especialista_trabajador_especialidad_model->insert($data);
                        }
                        $this->session->set_flashdata('mensaje', $this->lang->line('caboco_especialista_guardado'));
                        redirect('administrador/especialista/centro/editar/'.$especialista_id);
                    }else{
                        redirect('administrador/especialista/centro/nuevo');
                    }    
                }                 
            }
        }else{
            redirect(base_url($navegacion->navegacion));
        }
    }
    
    /*
    public function publicar()
    {
        $formador_id = $this->input->post('id');
                  
        if($this->especialista_trabajador_model->exists('id', $formador_id))
        {
            $formador = $this->especialista_trabajador_model->get($formador_id);
            if($formador->estado == DESPUBLICADO)
            {
                $data = array(
                    'estado'=> PUBLICADO
                );
                
                $this->especialista_trabajador_model->update($data, $formador_id);
                
                $data['id'] = $formador_id;
                echo $this->load->view('backend/ajax/publicar_up',$data,TRUE);  
            }
            else
            {
                $data = array(
                    'estado'=> DESPUBLICADO
                );
                
                $this->especialista_trabajador_model->update($data, $formador_id);  

                $data['id'] = $formador_id;
                echo $this->load->view('backend/ajax/publicar_down',$data,TRUE);                
            }
        }           
    }
    */
    public function publicar_mensaje()
    {
        $formador_id = $this->input->post('id');
        
        if(empty($formador_id))
        {          
            $data['error'] = $this->lang->line('score_formador_error_enlace');
            echo $this->load->view('backend/ajax/mensaje',$data,TRUE);  
        } 
        
        if($this->especialista_trabajador_model->exists('id', $formador_id))
        {
            $formador = $this->especialista_trabajador_model->get($formador_id);
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
        // Seleccion departamentos     
        $deptos=$this->especialista_depto_model->get_all('',array(),'','','','');
        $departamentos = array();
        $departamentos[0]='Expedido en...';
        foreach ($deptos as $depto) {
            $departamentos[$depto->id]=$depto->descripcion;    
        }
        // Seleccion ciudades     
        $ciudades=$this->especialista_ciudad_model->get_all('',array(),'','','','');
        $ciudades_array = array();
        foreach ($ciudades as $c) {
            $ciudades_array[$c->id]=$c->descripcion;    
        }

        // Seleccion especialidades 
        //$data['especialidades']=$this->especialista_especialidad_model->get_all('',array(),'','','','');      
        
        // Seleccion centro de formacion
        $usuario_sesion = get_user_session();
        $this->load->model('centro_model');
        $centro=$this->centro_model->get($usuario_sesion->centro_formacion);
        $data['centro_formacion']=$centro;
        
        // Recuperar especialidades del centro de formacion
        $especialidades=$this->especialista_especialidad_model->get_all_join_area($usuario_sesion->centro_formacion);
        $data['centro_especialidades']=$especialidades;
        
        // Seleccion dia, mes, año
        $dia[0]="Dia";
        for($i=1;$i<=31;$i++){
            $dia[$i]=$i;
        }
        $mes=array(
            0=>"Mes",
            1=>"Enero",
            2=>"Febrero",
            3=>"Marzo",
            4=>"Abril",
            5=>"Mayo",
            6=>"Junio",
            7=>"Julio",
            8=>"Agosto",
            9=>"Septiembre",
            10=>"Octubre",
            11=>"Noviembre",
            12=>"Diciembre",
        );
        $anio[0]="Año";
        for($i=Date("Y");$i>=1900;$i--){
            $anio[$i]=$i;
        }
        $data['departamentos'] = $departamentos;
        $data['ciudades'] = $ciudades_array;
        $data['dia'] = $dia;
        $data['mes'] = $mes;
        $data['anio'] = $anio;
        return $data;
    }

    private function validateDate($date, $format = 'Y-m-d H:i:s'){
        $d = DateTime::createFromFormat($format, $date);
        return $d && $d->format($format) == $date;
    }

    public function download_archivo(){
        $usuario_sesion = get_user_session();
        // recuperar listado de especialidades segun el centro de formacion
        if($usuario_sesion->centro_formacion==0){
            $especialidades=$this->especialista_especialidad_model->get_all('', array('estado'=>1), '', '', 'descripcion', '');
        }else{
            $especialidades=$this->especialista_especialidad_model->get_all('', array('estado'=>1,'id_centro'=>$usuario_sesion->centro_formacion), '', '', '', '');
        }

        // Recuperando codificacion
        $codificacion='';
        foreach ($especialidades as $esp) {
            $esp=(object)$esp;
            $codificacion.=$esp->codigo.'('.$esp->descripcion.'); ';
        }

        // Generando documento excel
        $this->load->library('excel');
        $objPHPExcel = new PHPExcel();
        $objPHPExcel->setActiveSheetIndex(0);
        $objPHPExcel->getActiveSheet()->SetCellValue('A1', 'DEPTO: Se debe ingresar uno de los siguientes valores numericos: 1(La Paz), 2(Cochabamba), 3(Beni), 4(Chuquisaca), 5(Oruro), 6(Pando), 7(Potosi), 8(Santa Cruz), 9(Tarija)');
        $objPHPExcel->getActiveSheet()->SetCellValue('A2', 'CIUDAD DONDE VIVE: Se debe ingresar uno de los siguientes valores numericos: 1(La Paz), 2(El Alto)');
        $objPHPExcel->getActiveSheet()->SetCellValue('A3', 'FECHAS NAC: El formato de las fechas es dd/mm/aaaa. Ejemplo: 25/08/1990');
        $objPHPExcel->getActiveSheet()->SetCellValue('A4', 'CERTIFICACIONES:  Las certificaciones estan dividas en mas de una columna segun un codigo, en estas celdas se debe ingresar la fecha de certificacion en formato: dd/mm/aa. Ejemplo: 25/08/1990');
        $objPHPExcel->getActiveSheet()->SetCellValue('A5', 'CODIFICACIÓN: '.$codificacion);
        $objPHPExcel->getActiveSheet()->SetCellValue('A6', 'ADVERTENCIA: Las columnas CI, DEPTO, NOMBRES, APELLIDOS, CIUDAD DONDE VIVE, FECHA NAC., DIRECCION, TELF.CONTACTO y TELF. REFERENCIA son obligarotios');
        
        //$objPHPExcel->getActiveSheet()->SetCellValue('B1', $indicador);
        $objPHPExcel->getActiveSheet()->SetCellValue('A7', 'CI');
        $objPHPExcel->getActiveSheet()->SetCellValue('B7', 'DEPTO');
        $objPHPExcel->getActiveSheet()->SetCellValue('C7', 'NOMBRES');
        $objPHPExcel->getActiveSheet()->SetCellValue('D7', 'APELLIDOS');
        $objPHPExcel->getActiveSheet()->SetCellValue('E7', 'CIUDAD DONDE VIVE');
        $objPHPExcel->getActiveSheet()->SetCellValue('F7', 'FECHA NAC.');
        $objPHPExcel->getActiveSheet()->SetCellValue('G7', 'DIRECCION');
        $objPHPExcel->getActiveSheet()->SetCellValue('H7', 'TELF. CONTACTO');
        $objPHPExcel->getActiveSheet()->SetCellValue('I7', 'TELF. REFERENCIA');
        $objPHPExcel->getActiveSheet()->SetCellValue('J7', 'EMAIL');

        // ajustar ancho de las celdas
        $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('C')->setWidth(30);
        $objPHPExcel->getActiveSheet()->getColumnDimension('D')->setWidth(30);
        $objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('F')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('G')->setWidth(30);
        $objPHPExcel->getActiveSheet()->getColumnDimension('H')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('I')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('J')->setWidth(30);

        // cargamos encabezado de la tabla
        $count_col=10;
        foreach ($especialidades as $esp) {
            $esp=(object)$esp;
            $objPHPExcel->getActiveSheet()->setCellValueByColumnAndRow($count_col, 7, strtoupper($esp->codigo));  
            //$objPHPExcel->getActiveSheet()->getColumnDimension(PHPExcel_Cell::stringFromColumnIndex($count_col))->setAutoSize(true);
            $objPHPExcel->getActiveSheet()->getColumnDimension(PHPExcel_Cell::stringFromColumnIndex($count_col))->setWidth(13);
            $count_col++;
        }
        
        // asignamos formato del encabezado de la tabla
        $objPHPExcel->getActiveSheet()->getStyle('A7:'.PHPExcel_Cell::stringFromColumnIndex($count_col-1).'7')->applyFromArray(array(
          'font'  => array(
            'color' => array('rgb' => 'ffffff'),
          ),
          'fill' => array(
            'type' => PHPExcel_Style_Fill::FILL_SOLID,
            'color' => array('rgb' => '366092')
          ),
        ));

        // Retornando documento excel
        $nombre_archivo='maestras_constructoras';
        $objWriter = new PHPExcel_Writer_Excel2007($objPHPExcel);
        header("Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
        header("Content-Disposition: attachment; filename=$nombre_archivo.xlsx");
        ob_clean();
        $objWriter->save('php://output');
    }

    public function upload_archivo(){
        // echo "importar";
        $config['upload_path'] = './assets/uploads/';
        $config['allowed_types'] = 'xlsx|xls';
        $config['max_size'] = '5000';
        $config['file_name'] = 'upload_' . time();

        $this->load->library('upload', $config);

        if(!$this->upload->do_upload('txtcsv')){
          $this->session->set_flashdata('error', $this->upload->display_errors());  
        }else{
            $usuario_sesion = get_user_session();
            // Abriendo archivo que se ha subido al servidor
            $file_info = $this->upload->data();
            $filepath = "./assets/uploads/" . $file_info['file_name'];
            $this->load->library('excel');
            // Identificando el tipo de archivo
            $inputFileType = PHPExcel_IOFactory::identify($filepath);
            $objReader = PHPExcel_IOFactory::createReader($inputFileType);
            $objPHPExcel  = $objReader->load($filepath);
            // Contando columnas
            $objPHPExcel->setActiveSheetIndex(0);
            $count_col=0;
            $count_fil=7;
            $head=array();
            $cell=$objPHPExcel->getActiveSheet()->getCellByColumnAndRow($count_col, $count_fil)->getValue();
            while($cell!='' && $cell!=null){
                $head[$count_col]=$cell;
                $count_col++;
                $cell=$objPHPExcel->getActiveSheet()->getCellByColumnAndRow($count_col, $count_fil)->getValue();
            }
            // Obteniendo datos del archivo
            $objPHPExcel->setActiveSheetIndex(0);
            $count_fil++;
            $aux=$count_fil;
            $data=array();
            $cell=$objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $count_fil)->getValue();
            while($cell!='' && $cell!=null){
                for($j=0;$j<$count_col;$j++){
                    if($j==5 || $j>9){
                        if($objPHPExcel->getActiveSheet()->getCellByColumnAndRow($j, $count_fil)->getValue()!=''){
                            date_default_timezone_set('America/La_Paz');
                            $data[$count_fil-$aux][$j]=date('Y-m-d', PHPExcel_Shared_Date::ExcelToPHP($objPHPExcel->getActiveSheet()->getCellByColumnAndRow($j, $count_fil)->getValue()));    
                        }else{
                            $data[$count_fil-$aux][$j]='';
                        }                      
                    }else{
                        $data[$count_fil-$aux][$j]=$objPHPExcel->getActiveSheet()->getCellByColumnAndRow($j, $count_fil)->getValue();
                    }
                }
                $count_fil++;
                $cell=$objPHPExcel->getActiveSheet()->getCellByColumnAndRow(0, $count_fil)->getValue();             
            }
            //$this->mostrar_datos($head, $data);

            // VALIDANDO DATOS DE EXCEL
            
            if($this->valida_tabla($data)){
                // GUARDAR DATOS
                $this->guardar_datos($head, $data);
                $this->session->set_flashdata('mensaje', 'Todos los registros del documento excel fueron guardados exitosamente');
            }
            
            
        }
        redirect('administrador/especialista/centro');
    }


    public function ajax_especialista($ci=null){
        $usuario_sesion = get_user_session();
        $especialista=$this->especialista_trabajador_model->get_by_ci($ci);
        $num_especialidades=0;
        if($especialista!=null){
            $num_especialidades=$this->especialista_trabajador_model->is_register_trabajador_centro($especialista->id, $usuario_sesion->centro_formacion);
        }
        $data=array(
            'especialista'=>$especialista,
            'num_esp' => $num_especialidades,
        );
        header('Content-type: application/json; charset=utf-8');
        echo json_encode($data);
        exit();
    } 

    private function valida_tabla($data){
        $nro_cols=count(current($data));
        $nro_fils=count($data);
        for($i=0;$i<$nro_fils;$i++){
            for($j=0;$j<$nro_cols;$j++){
                if($j<8 and $data[$i][$j]==''){
                    $this->session->set_flashdata('error', 'En la fila '.($i+8).' del documento excel, verifique que todos los valores obligatorios fueron ingresados');
                    return false;
                }
                if($j==1 and !is_numeric($data[$i][$j])){
                    $this->session->set_flashdata('error', 'En la fila '.($i+8).' del documento excel, verifique que en la columna DEPTO el valor sea numérico');
                    return false;
                }
                if($j==1 and ($data[$i][$j]<1 || $data[$i][$j]>9)){
                    $this->session->set_flashdata('error', 'En la fila '.($i+8).' del documento excel, verifique que en la columna DEPTO el valor se encuentre en el rango de 1 a 9');
                    return false;
                }
                if($j==4 and !is_numeric($data[$i][$j])){
                    $this->session->set_flashdata('error', 'En la fila '.($i+8).' del documento excel, verifique que en la columna CIUDAD el valor sea numérico');
                    return false;
                }
                if($j==4 and ($data[$i][$j]<1 || $data[$i][$j]>2)){
                    $this->session->set_flashdata('error', 'En la fila '.($i+8).' del documento excel, verifique que en la columna CIUDAD el valor se encuentre en el rango de 1 a 2');
                    return false;
                }
            }
        }
        return true;
    }

    private function mostrar_datos($head, $data){
        print_r($head);
        echo '<br>';
        $nro_cols=count(current($data));
        $nro_fils=count($data);
        for($i=0;$i<$nro_fils;$i++){
            for($j=0;$j<$nro_cols;$j++){
                echo $data[$i][$j].',';
            }
            echo '<br>';
        }
    }

    private function guardar_datos($head, $tabla){
        $usuario_sesion = get_user_session();
        $nro_cols=count(current($tabla));
        $nro_fils=count($tabla);
        for($i=0;$i<$nro_fils;$i++){
            $especialista = $this->especialista_trabajador_model->get_by_ci($tabla[$i][0]);
            if(!isset($especialista)){
                $data = array (
                    'ci' => $tabla[$i][0],
                    'id_departamento' => $tabla[$i][1],
                    'nombres' => $tabla[$i][2],
                    'apellidos' => $tabla[$i][3],
                    'id_ciudad' => $tabla[$i][4],
                    'fecha_nacimiento' => $tabla[$i][5],
                    'genero' => 'mujer',
                    'direccion' => $tabla[$i][6],
                    'telefono_contacto' => $tabla[$i][7],
                    'telefono_referencia' => $tabla[$i][8],
                    'correo' => $tabla[$i][9],
                    'estado' => 1,
                    'creado_por'=>$usuario_sesion->id,
                    'publicado'=>date('Y-m-d H:i:s')
                );                             
                $especialista_id = $this->especialista_trabajador_model->insert($data);
            }else{
                $especialista_id = $especialista->id;
            }
            for($j=10;$j<$nro_cols;$j++){
                if($tabla[$i][$j]!=''){
                    $data = array (
                        'id_trabajador' => $especialista_id,
                        'id_especialidad' => $this->especialista_especialidad_model->find(array('codigo' => $head[$j]))->id,
                        'fecha_certificacion' => $tabla[$i][$j],
                    );
                    $this->especialista_trabajador_especialidad_model->insert($data);
                }
            }
        }
    }

}