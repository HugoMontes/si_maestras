<?php 
function selecciona_especialidad($id_especialidad, $array_especialidades){
	foreach ($array_especialidades as $especialidad) {
		if($id_especialidad==$especialidad->id_especialidad){
			return "checked";
		}
	}
	return "";
}

function activa_especialidad($id_especialidad, $array_especialidades){
	foreach ($array_especialidades as $especialidad) {
		if($id_especialidad==$especialidad->id_especialidad){
			return true;
		}
	}
	return false;
}


function marcar_especialidad($id_especialidad, $array_especialidades){
	foreach ($array_especialidades as $especialidad) {
		if($id_especialidad==$especialidad->id_especialidad){
			return "seleccion-especialidad";
		}
	}
	return "";
}


function get_area($area_id){
	if(empty($area_id)){
		return ''; 
	}else{
		$CI =& get_instance();
		$CI->load->model('especialista_area_model');
		if($CI->especialista_area_model->exists('id',$area_id)){
			$area = $CI->especialista_area_model->get_values('descripcion', array('id'=>$area_id));
			return strtoupper($area->descripcion); 
		}else{
			return ''; 
		}           
	}      
}

function get_encuestado($id){
	if(empty($id)){
		return null; 
	}else{
		$CI =& get_instance();
		$CI->load->model('especialista_empleador_model');
		if($CI->especialista_empleador_model->exists('id',$id)){
			$encuestado = $CI->especialista_empleador_model->get($id);
			return $encuestado; 
		}else{
			return null; 
		}           
	}      
}

function get_respuesta_p1($id_encuestado, $id_pregunta){
	$CI =& get_instance();
	$CI->load->model('cuestionario_respuesta_model');
	$respuesta = $CI->cuestionario_respuesta_model->get_all('',array('id_usuario'=>$id_encuestado, 'id_pregunta'=>$id_pregunta),'','','id','');
	if($respuesta[0]->id_opciones==1){
		return 'Si';
	}
	return 'No';
	// return strtoupper($encuestado->nombre);
}

function get_respuesta_p2($id_encuestado, $id_pregunta){
	$CI =& get_instance();
	$CI->load->model('cuestionario_respuesta_model');
	$respuesta = $CI->cuestionario_respuesta_model->get_all('',array('id_usuario'=>$id_encuestado, 'id_pregunta'=>$id_pregunta),'','','id','');
	if(count($respuesta)>0){
		return $respuesta[0]->res_b;
	}
	return '';
}

function get_respuesta_p3($id_encuestado, $id_pregunta){
	$CI =& get_instance();
	$CI->load->model('cuestionario_respuesta_model');
	$respuesta = $CI->cuestionario_respuesta_model->get_all('',array('id_usuario'=>$id_encuestado, 'id_pregunta'=>$id_pregunta),'','','id','');
	$CI->load->model('centro_model');
	$data='';
	if(count($respuesta)>0){
		foreach ($respuesta as $res) {
			$res=(Object)$res;
			$data.=$CI->centro_model->get($res->res_b)->descripcion.'; ';
		}
	}
	return $data;
}

function get_respuesta_p4($id_encuestado, $id_pregunta){
	$CI =& get_instance();
	$CI->load->model('cuestionario_respuesta_model');
	$respuesta = $CI->cuestionario_respuesta_model->get_all('',array('id_usuario'=>$id_encuestado, 'id_pregunta'=>$id_pregunta),'','','id','');
	if(count($respuesta)>0){
		$CI->load->model('cuestionario_opciones_model');
		return $CI->cuestionario_opciones_model->get($respuesta[0]->id_opciones)->enunciado;
	}	
}

function get_respuesta_p5($id_encuestado, $id_pregunta){
	$CI =& get_instance();
	$CI->load->model('cuestionario_respuesta_model');
	$respuesta = $CI->cuestionario_respuesta_model->get_all('',array('id_usuario'=>$id_encuestado, 'id_pregunta'=>$id_pregunta),'','','id','');
	$CI->load->model('cuestionario_opciones_model');
	$data='';
	if(count($respuesta)>0){
		foreach ($respuesta as $res) {
			$res=(Object)$res;
			$data.=$CI->cuestionario_opciones_model->get($res->id_opciones)->enunciado.'; ';
			//$data.=
		}
		return $data;
	}
}

