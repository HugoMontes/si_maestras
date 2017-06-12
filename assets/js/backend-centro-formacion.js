/*******************************************************
*	EVENTOS DE CONTROLES
********************************************************/
$(document).on('click','#btn-add-rubro',function(){
  	// $('#foco-rubro table tbody tr').clone().appendTo('#tbl-especialidades tbody');
  	// alert("guardando...."+url);
  	var url = $('#url-ajax-save-rubro').val();
  	var id_centro = $('#txt-id-centro').val();
  	var especialidad = $('#especialidad').val();
  	var id_area = $('#area').val();
  	if(validaDatosRubro(especialidad, id_area)){
	  	$.ajax({
		    url: url,
		    data: {'especialidad' : especialidad, 'id_centro' : id_centro, 'id_area' : id_area },
		    type: "POST",
		    dataType: "html",
		    success: function(data) {
		      	console.log(data);
		   	},
		});
	}
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

$(document).on('click','#btn-guardar',function(event){
	event.preventDefault();
	var sw=true;
	if($('#descripcion').val()=='' || $('#descripcion').val()==null){
		$('#descripcion').parent().parent().parent().addClass('has-error');
		$('#descripcion').parent().find('.help-block').show();
		sw=false;
	}
	$('#tbl-especialidades tbody tr').each(function(){
		if($(this).find(".especialidad").val()=='' || $(this).find(".especialidad").val()==null){
			$(this).children().eq(0).addClass('has-error');
			$(this).children().eq(0).find('span').show();
			sw=false;
		}
		if($(this).find(".area").val()=='0'){
			$(this).children().eq(1).addClass('has-error');
			$(this).children().eq(1).find('span').show();
			sw=false;
		}
	});
	if(sw){
		$("#form-centro").submit();
	}
});
/*******************************************************
*	FUNCIONES
********************************************************/
function validaDatosRubro(especialidad, id_area){
	var sw=true;
	if(especialidad==''){
		alert('Ingrese un valor en especialidad');
		sw=false;
	}
	if(id_area==0){
		alert('Seleccione un valor para rubro');
		sw=false;
	}
	return sw;
}