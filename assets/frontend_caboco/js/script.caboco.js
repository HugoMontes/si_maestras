$(document).on('ready', function() {
    $('.auspiciantes').slick({
      dots: true,
      slidesToShow: 3,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 4000,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });
});

var i=0;
var imagenes=$('.imagenes-fondo li');
$(document).ready(function(){
    cambiaImagenFondo();
});
function cambiaImagenFondo(){
    if(i<imagenes.length-1){
        $('.solicitud-maestras-main').css('background','url('+imagenes.eq(i).text()+')');
        i++;
    }else{
        i=0;
    }
    setTimeout(cambiaImagenFondo,15000);
}

function animationHover(element, animation){
    element=$(element);
    element.hover(
        function(){
            element.addClass('animated '+ animation);
        },
        function(){
            window.setTimeout( function(){
                element.removeClass('animated '+ animation);
            }, 2000);  
        }
    );
}

function validateEmail(email) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}

function validaCampo(campo, rules){
    var mensaje='', sw=0;
    var valor=campo.val();
    if(typeof campo.parent().parent().find("p")!='undefined'){
        campo.parent().parent().find("p").remove();
    }
    if(rules.required){
      if(valor==''){
        mensaje+='<p class="error">Este campo es requerido</p>';
        sw=1;
      }
    }
    if(rules.number){
        if(isNaN(valor)){
            mensaje+='<p class="error">Ingrese un valor numérico entero valido</p>';
            sw=1;
        }else{
            if(valor<=0){
                mensaje+='<p class="error">Ingrese un valor numérico mayor a cero</p>';
                sw=1;
            }
        }
    }
    if(rules.email){
      if(valor!=''){
        if (!validateEmail(valor)) {
          mensaje+='<p class="error">Ingrese un correo electronico valido</p>';
          sw=1;
        }
      }
    }
    campo.parent().parent().append(mensaje);
    if(sw==1){
      return false; 
    }
    return true;
}

function validaFormularioSolicitud(){
    var campo_nro=$("#form-content-caboco .form-solicitud:last .txtNumero");
    var campo_fecha_ini=$("#form-content-caboco .form-solicitud:last .txtFechaInicio");
    var campo_fecha_fin=$("#form-content-caboco .form-solicitud:last .txtFechaFin");

    var sw1=validaCampo(campo_nro,{"required":true,"number":true});
    var sw2=validaCampo(campo_fecha_ini,{"required":true});
    var sw3=validaCampo(campo_fecha_fin,{"required":true});
    return (sw1 && sw2 && sw3);
}


function validaFormularioEmpleado(){
    var campo_nombre=$("#solicitudForm #txtNombre");
    var campo_correo=$("#solicitudForm #txtCorreo");
    var campo_direccion=$("#solicitudForm #txtDireccion");

    var sw1=validaCampo(campo_nombre,{"required":true});
    var sw2=validaCampo(campo_correo,{"required":true,"email":true});
    var sw3=validaCampo(campo_direccion,{"required":true});
    var sw4=validaRecaptcha();
    return (sw1 && sw2 && sw3 && sw4);
}

function validaRecaptcha(){
    var recaptcha=grecaptcha.getResponse();
    if(recaptcha==""){
        alert('Comprobar que no eres un robot');
        return false;
    }
    return true;
}

function validaFormularioSolicitudMain(){
    var campo_ciudad=$(".form-solicitud #txtCiudad");
    var campo_especialidad=$(".form-solicitud #txtEspecialidad");
    var campo_nro=$(".form-solicitud:last .txtNumero");
    var campo_fecha_ini=$(".form-solicitud:last .txtFechaInicio");
    var campo_fecha_fin=$(".form-solicitud:last .txtFechaFin");
    
    var sw1=validaCampo(campo_nro,{"required":true,"number":true});
    var sw2=validaCampo(campo_fecha_ini,{"required":true});
    var sw3=validaCampo(campo_fecha_fin,{"required":true});
    var sw4=validaCampo(campo_ciudad,{"required":true});
    var sw5=validaCampo(campo_especialidad,{"required":true});
    //var sw6=comparaFechas(campo_fecha_ini, campo_fecha_fin);
    return (sw1 && sw2 && sw3 && sw4 && sw5);
}

function comparaFechas(campo_fecha_ini, campo_fecha_fin){
    var fecha_ini = new Date(campo_fecha_ini);
    var fecha_fin = new Date(campo_fecha_fin);
    if(fecha_ini<fecha_fin){
        return true;
    }
    alert("La fecha final no puede ser posterior a la fecha de inicio.");
    return false;
}

// START FORMULARIO SOLICITUD DE ESPECIALISTAS MAIN
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //propiedades fieldset que vamos a animar
var animating; //

$("#btn-continuar").click(function(){
    if(validaFormularioSolicitudMain()){
        current_fs = $(this).parent().parent().parent();
        next_fs = current_fs.next();     
        //activar el siguiente paso en progreso usando el índice de next_fs
        //$("#progreso li").eq($("fieldset").index(next_fs)).addClass("active");
        //mostrar el siguiente fieldset
        next_fs.show(); 
        current_fs.hide();        
    }
});
// END FORMULARIO SOLICITUD DE ESPECIALISTAS MAIN



// START FORMULARIO SOLICITUD DE ESPECIALISTAS
$(document).ready(function(){
	/*$(".form-empleador").hide();*/
    $("#owl-demo").owlCarousel({
        autoPlay : 3000,
        stopOnHover : true,
        navigation : false,
        paginationSpeed : 1000,
        goToFirstSpeed : 2000,
        singleItem : true,
        autoHeight : true,
        transitionStyle:"fade"
      });

    $('.noticia-border .ver-mas').each(function() {
        animationHover(this, 'pulse');
    });
    // animationHover('.noticia-border','pulse');
});


// START BOTON CONSULTA PAGINA INICIO
$(document).on('click',".btn-consulta", function(event){
    event.preventDefault();
    var valCiudad=$('#txtCiudad option:selected').val();
    var valEspecialidad=$('#txtEspecialidad option:selected').val();
    if(valCiudad!=0 && valEspecialidad!=0){
        $('#form-solicitud').submit();
    }else{
        alert('Porfavor seleccione una ciudad y una especialidad.');
    }
});

$(document).on('change',".formulario-inicial #txtCiudad", function(event){
    var value=$('.formulario-inicial #txtEspecialidad').val();
    if(value!=0){
        $('.btn-consulta').removeAttr('disabled');
    }
});

$(document).on('change',".formulario-inicial #txtEspecialidad", function(event){
    var value=$('.formulario-inicial #txtCiudad').val();
    if(value!=0){
        $('.btn-consulta').removeAttr('disabled');
    }
});
// END BOTON CONSULTA PAGINA INICIO

$(document).on('focus',".txtCalendar", function(){
    $(this).datepicker({
        dateFormat: "yy-mm-dd"
    });
});

$("#txtEspecialidad").change(function(){
    $('#btn-solicitar').removeAttr('disabled');
});

$(document).on("keyup","#solicitudForm input",function(){
    if(typeof $(this).parent().parent().find("p")!='undefined'){
        $(this).parent().parent().find("p").remove();
    }    
});

$("#btn-solicitar").click(function(){
    if(validaFormularioSolicitud()){
        $("#form-template").find(".form-solicitud").clone().appendTo("#form-content-caboco");
        var idEspecialidad=$("#txtEspecialidad option:selected").val();
        $("#form-content-caboco .form-solicitud:last").find(".txtIdEspecialidad").val(idEspecialidad);
        var especialista=$("#txtEspecialidad option:selected").text();
        $("#form-content-caboco .form-solicitud:last").find(".title-caboco").text("Solicitud de "+especialista);
        $("#txtEspecialidad").children('option').eq(0).attr("selected", "selected");
        $(this).attr('disabled','true');
    }
});

$("#btn-finalizar").click(function(){
    if(validaFormularioSolicitud()){
        $(".mensajes-validacion").hide();
        $(".form-empleador").show();
        $(".form-controles").hide();
    }
});

$("#btn-enviar").click(function(event){
    event.preventDefault();
    if(validaFormularioEmpleado()){
        $('#solicitudForm').submit();
    }
});


$(document).on('click',".input-group", function(){
    $(this).find('input').focus();    
});
// END FORMULARIO SOLICITUD DE ESPECIALISTAS
