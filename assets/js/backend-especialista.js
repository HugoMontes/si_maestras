$( function() {
  $( ".fecha-certificacion" ).datepicker({ dateFormat: 'yy-mm-dd' });
} );

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