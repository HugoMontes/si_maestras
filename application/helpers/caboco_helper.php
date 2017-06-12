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

