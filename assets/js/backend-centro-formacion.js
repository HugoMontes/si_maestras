/*******************************************************
*	EVENTOS DE CONTROLES
********************************************************/
$(document).on('click','#btn-add-rubro',function(){
  var html='<tr>';
  html+='<td>';
  html+='<input type="text" class="form-control especialidad" name="especialidades[]" placeholder="Ingrese nombre del rubro">';
  html+='</td>';
  html+='<td style="width: 50px;">';
  html+='<button type="button" class="btn btn-danger btn-remove-dialog" title="Eliminar rubro"><i class="fa fa-trash" aria-hidden="true"></i></button>';
  html+='</td>';
  html+='</tr>';
  $('#tbl-especialidades').append(html);
});

var row_rubro;
$(document).on('click','.btn-remove-dialog',function(){
	row_rubro=$(this).parent().parent();
	var especialidad=row_rubro.find('.especialidad');
	if(especialidad.val()!="" && !especialidad.attr('id')){
		$('#modal_confirm_eliminar_nombre').html(especialidad.val());
		$('#modal-confirm-eliminar').modal('show');	  		
	}else if(especialidad.attr('id')){
		var id_especialidad=especialidad.attr('id');
		var url_ajax=$('#url_ajax_valida_eliminar_rubro').val();
		$.ajax({
			url: url_ajax,
			data: { id_especialidad : id_especialidad },
			type : 'POST',
			dataType : 'json',
			success : function(data) {
				if(data.nro_maestras>0){
					$('#msg_txt_mensaje').html('No puede eliminar, el rubro <strong>"'+especialidad.val().toUpperCase()+'"</strong>, esta asociado a una o más mestras constructoras.');
					$('#msg-error-eliminar-rubro').removeAttr('style');
				}else if(data.nro_solicitudes>0){
					$('#msg_txt_mensaje').html('No puede eliminar, el rubro <strong>"'+especialidad.val().toUpperCase()+'"</strong>, esta asociado a una o más solicitudes.');
					$('#msg-error-eliminar-rubro').removeAttr('style');
				}else{
					$('#modal_confirm_eliminar_nombre').html(especialidad.val());
					$('#modal-confirm-eliminar').modal('show');	
				}	
			},
		});
	}else{
		row_rubro.remove();
	}
});

$(document).on('click','#btn-remove-confirm',function(){
	if(row_rubro.find('.especialidad').attr('id')){
		var id_especialidad=row_rubro.find('.especialidad').attr('id');
		var url_ajax=$('#url_ajax_delete_especialidad').val();
		$.ajax({
			url: url_ajax,
			data: { id_especialidad : id_especialidad },
			type : 'POST',
			dataType : 'json',
			success : function(data) {
				console.log('Rubro eliminado exitosamente....');
			},
		});
	}
	row_rubro.remove();
});

/*******************************************************
*	FUNCIONES
********************************************************/