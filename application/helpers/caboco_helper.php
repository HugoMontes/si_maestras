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

