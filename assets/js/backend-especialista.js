var url_editar;
$( function() {
  $( ".fecha-certificacion" ).datepicker({ dateFormat: 'yy-mm-dd' });
  url_editar=$('#btn-editar').attr('href');
});

$('#depto').change(function(){
  var ci=$('#ci').val();
  var url=$('#urlAjaxCi').val();
  $.ajax({
    url:   url+'/'+ci,
    type:  'get',
    dataType: "json",
      success:  function (response) {
      $('#datos-complementarios').show();
      $('#btn-guardar').show();
      $('#btn-editar').hide();
      $('#especialista_id').val('');
      $('#guardar').val(1);
      if(response.especialista!=null){
        if(response.num_esp==0){
          $('#msg-existe-maestra').show();
          $('#nombres').val(response.especialista.nombres);
          $('#apellidos').val(response.especialista.apellidos);
          $('#ciudad').val(response.especialista.id_ciudad);
          var fechaNac=response.especialista.fecha_nacimiento.split("-");
          $('#dia').val(parseInt(fechaNac[2]));
          $('#mes').val(parseInt(fechaNac[1]));
          $('#anio').val(parseInt(fechaNac[0]));
          $('#direccion').val(response.especialista.direccion);
          $('#telefono1').val(response.especialista.telefono_contacto);
          $('#telefono2').val(response.especialista.telefono_referencia);
          $('#correo').val(response.especialista.correo);
          $('#especialista_id').val(response.especialista.id);
          $('#guardar').val(2);
        }else{
          $('#datos-complementarios').hide();
          $('#btn-guardar').hide();
          $('#btn-editar').attr('href',url_editar+'/'+response.especialista.id);
          $('#btn-editar').show();
          $('#msg-existe-maestra').show();
          $('#msg-existe-maestra .alert').html('La maestra constructora fue registrada anteriormente, para agregar una nueva certificación hacer clic sobre el boton editar.');
        }
      }else{
        $('#msg-existe-maestra').hide();
        $('#nombres').val('');
        $('#apellidos').val('');
        //$('#ciudad input[value="'+response.especialista.id_ciudad+'"]');
        $('#direccion').val('');
        $('#telefono1').val('');
        $('#telefono2').val('');
        $('#correo').val('');
      }
    }
  });
});

$(document).on('click','.especialidades',function(){
  if($(this).is(':checked')){
    $(this).parent().parent().find('.fecha-certificacion').removeAttr('disabled');
    // $(this).parent().parent().find('.fecha-certificacion').focus();
    $(this).parent().parent().find('.fecha-certificacion').val(formatDate(Date.now()));
  }else{
    $(this).parent().parent().find('.fecha-certificacion').attr('disabled','true');
    $(this).parent().parent().find('.fecha-certificacion').val('');
  }
});

function formatDate(date) {
  var d = new Date(date),
  month = '' + (d.getMonth() + 1),
  day = '' + d.getDate(),
  year = d.getFullYear();
  if (month.length < 2) month = '0' + month;
  if (day.length < 2) day = '0' + day;
  return [year, month, day].join('-');
}

$('#btn-guardar').click(function(event){
  event.preventDefault();
  var numItems=$('input:checkbox:checked').length;
  var sw=true;
  if(numItems==0){
    sw=false;
    alert("Seleccione por lo menos una certificación.");
  }
  if($('#depto').val()=='0'){
    sw=false;
    alert("Seleccione lugar de expedicion de la cédula."); 
  }
  if(sw==true){
    $( "#frm-maestra").submit();
  }
});