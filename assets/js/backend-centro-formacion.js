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
		    dataType: "json",
		    success: function(data) {
		    	var out='<tr>';
		    	out+='<td>'+data.especialidad.descripcion+'</td>';
		    	out+='<td>'+data.especialidad.codigo+'</td>';
		    	out+='<td>'+data.centro+'</td>';
		    	out+='<td style="width: 50px;">';
		    	out+='<button type="button" class="btn btn-danger btn-remove-dialog" title="Eliminar certificación"><i class="fa fa-trash" aria-hidden="true"></i></button>';
		    	out+='</td>';
		    	out+='</tr>';
		    	$('#tbl-especialidades tbody').append(out);
		      	$('#especialidad').val("");
		      	$("#area").val("0");
		      	$('.alert-add-rubro').html('La certificacion <strong>"'+data.especialidad.descripcion.toUpperCase()+'"</strong> fue adicionada correctamente.');
		      	$('.alert-add-rubro').show();
		   	},
		});
	}
});

var id_especialidad_elim;
var row_especialidad;
$(document).on('click','.btn-remove-dialog',function(){
	row_especialidad=$(this).parent().parent();
	id_especialidad_elim=$(this).parent().find('.id-rubro').val();
	var rubro=$(this).parent().parent().find('.row-descripcion').text();
	if(id_especialidad_elim){
		var url_ajax=$('#url_ajax_valida_eliminar_rubro').val();
		$.ajax({
			url: url_ajax,
			data: { id_especialidad : id_especialidad_elim },
			type : 'POST',
			dataType : 'json',
			success : function(data) {
				if(data.nro_maestras>0){
					$('#msg_txt_mensaje').html('No puede eliminar, el rubro <strong>"'+rubro.toUpperCase()+'"</strong>, esta asociado a una o más mestras constructoras.');
					$('#msg-error-eliminar-rubro').removeAttr('style');
				}else if(data.nro_solicitudes>0){
					$('#msg_txt_mensaje').html('No puede eliminar, el rubro <strong>"'+rubro.toUpperCase()+'"</strong>, esta asociado a una o más solicitudes.');
					$('#msg-error-eliminar-rubro').removeAttr('style');
				}else{
					$('#mdl-elim-txt-rubro').text(rubro.toUpperCase());
					$('#modal-confirm-eliminar').modal('show');
				}	
			},
		});
	}
});

$(document).on('click','#btn-remove-confirm',function(){
	if(id_especialidad_elim){
		var url_ajax=$('#url_ajax_delete_especialidad').val();
		$.ajax({
			url: url_ajax,
			data: { id_especialidad : id_especialidad_elim },
			type : 'POST',
			dataType : 'json',
			success : function(data) {
				console.log('Rubro eliminado exitosamente....');
			},
		});
	}
	row_especialidad.remove();
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