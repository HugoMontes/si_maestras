function cambiar_menu()
{
    $('#menu_cabecera').addClass('menu-static');
    //$('#menu_cabecera').removeClass('menu_static');
    $('#contenido').removeClass('contenido');
}
$(document).ready(function(){
    $('.venobox').venobox();
});