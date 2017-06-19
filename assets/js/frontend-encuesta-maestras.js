var cont=1;

$('.btn-siguiente').click(function(){
  var sw=true;
  $('.alert-danger').hide();
  if(cont==1){
    if (!$('input[name=p1]:checked').val()){
      $('.alert-danger').show();
      $('.alert-danger').html('Para continuar seleccione una opción.');
      sw=false;
    }
  }

  if(sw){
    $('#pnl-'+cont).hide();
    if($('input[name=p1]:checked').val()=='2' && cont==1){
      cont=5;
    }
    if($('input[name=p1]:checked').val()=='1' && cont==5){
      cont++;
    }
    cont++;
    $('#pnl-'+cont).show();
  }

});

$('.btn-anterior').click(function(){
  $('#pnl-'+cont).hide();
  if(cont==6){
    cont=2;
  }
  if($('input[name=p1]:checked').val()=='1' && cont==7){
    cont=6;
  }
  cont--;
  $('#pnl-'+cont).show();
});