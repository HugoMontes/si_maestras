function objetoajax()
{
    //Create a boolean variable to check for a valid Internet Explorer instance.
    var xmlhttp = false;
    //Check if we are using IE.
    try {
        //If the Javascript version is greater than 5.
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
        //alert ("You are using Microsoft Internet Explorer.");
    } catch (e) {
        //If not, then use the older active x object.
        try {
            //If we are using Internet Explorer.
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            //alert ("You are using Microsoft Internet Explorer");
        } catch (E) {
            //Else we must be using a non-IE browser.
            xmlhttp = false;
        }
    }

    //If we are using a non-IE browser, create a javascript instance of the object.
    if (!xmlhttp && typeof XMLHttpRequest != 'undefined') {
        xmlhttp = new XMLHttpRequest();
        //alert ("You are not using Microsoft Internet Explorer");
    }
    return xmlhttp;
}

function publicar(id)
{    
    $('[data-toggle="tooltip"]').tooltip('hide');
    var contenido = document.getElementById('contenido_ajax_'+id);
    var accion = document.getElementById('accion_publicar').value;
    var ajax= objetoajax();
    ajax.open("POST", accion, true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
            contenido.innerHTML = ajax.responseText;
            $('[data-toggle="tooltip"]').tooltip();
            publicar_mensaje(id);
        }
    }
    var variables = 'id='+id;
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send(variables);
}

function publicar_mensaje(id)
{    
    var contenido = document.getElementById('contenido_ajax');
    var accion = document.getElementById('accion_publicar_mensaje').value;
    var ajax= objetoajax();
    ajax.open("POST", accion, true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
            contenido.innerHTML = ajax.responseText;
        }
    }
    var variables = 'id='+id;
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send(variables);
}

function habilitar(id)
{    
    $('[data-toggle="tooltip"]').tooltip('hide');
    var contenido = document.getElementById('contenido_ajax_'+id);
    var accion = document.getElementById('accion_habilitar').value;
    var ajax= objetoajax();
    ajax.open("POST", accion, true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
            contenido.innerHTML = ajax.responseText;
            $('[data-toggle="tooltip"]').tooltip();
            habilitar_mensaje(id);
        }
    }
    var variables = 'id='+id;
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send(variables);
}

function habilitar_mensaje(id)
{    
    var contenido = document.getElementById('contenido_ajax');
    var accion = document.getElementById('accion_habilitar_mensaje').value;
    var ajax= objetoajax();
    ajax.open("POST", accion, true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
            contenido.innerHTML = ajax.responseText;
        }
    }
    var variables = 'id='+id;
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send(variables);
}

function eliminar(id, nombre)
{
    document.getElementById('nombre_eliminar').innerHTML = nombre;
    $('#enlace_eliminar').attr("href", document.getElementById('accion_eliminar').value + '/' +id);
    $('#modal-eliminar').modal('show'); 
}

function sidebar(url_accion)
{    
    var ajax= objetoajax();
    ajax.open("POST", url_accion, true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
        }
    }
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send();
}
function testimonio_empresa_nuevo(url)
{
    //e.preventDefault();
    $('#form-testimonio').attr('action', url).submit();
}

function testimonio_personal_nuevo(url)
{
    //e.preventDefault();
    $('#form-testimonio').attr('action', url).submit();
}

function testimonio_empresa_editar(url)
{
    //e.preventDefault();
    var testimonio_id = document.getElementById('testimonio_id').value;
    $('#form-testimonio').attr('action', url + '/' + testimonio_id).submit();
}

function testimonio_personal_editar(url)
{
    //e.preventDefault();
    var testimonio_id = document.getElementById('testimonio_id').value;
    $('#form-testimonio').attr('action', url + '/' + testimonio_id).submit();
} 

function buscar_apellidos(url)
{
    var buscar = document.getElementById('apellidos').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-apellidos').attr('href', url + '/?search_in=apellidos&search_key=' + buscar);      
}

function buscar_especialidades(url)
{
    var buscar = document.getElementById('especialidad').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-especialidad').attr('href', url + '/?search_in=descripcion&search_key=' + buscar);      
} 

function buscar_titulo(url)
{
    var buscar = document.getElementById('titulo').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-titulo').attr('href', url + '/?search_in=titulo&search_key=' + buscar);      
}

function buscar_nombre(url)
{
    var buscar = document.getElementById('nombre').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-nombre').attr('href', url + '/?search_in=nombre&search_key=' + buscar);      
}

function buscar_centros(url)
{
    var buscar = document.getElementById('centro').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-centro').attr('href', url + '/?search_in=descripcion&search_key=' + buscar);
}

function buscar_contenido(url)
{
    var buscar = document.getElementById('contenido').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-contenido').attr('href', url + '/?search_in=contenido&search_key=' + buscar);      
}

function buscar_perfil(url)
{
    var perfil = document.getElementById('perfil').value;
    if(perfil > 0)
    {
      window.open(url + '/?search_in=perfil&search_key=' + perfil,"_self")    
    }
    else
    {
      window.open(url,"_self")   
    }
}  

function menu_pagina_editar(url)
{
    //e.preventDefault();
    var menu_id = document.getElementById('menu_id').value;
    $('#form-menu').attr('action', url + '/' + menu_id).submit();
}

function menu_url_editar(url)
{
    //e.preventDefault();
    var menu_id = document.getElementById('menu_id').value;
    $('#form-menu').attr('action', url + '/' + menu_id).submit();
}

function set_pagina(pagina_id, pagina_nombre, pagina_tipo)
{
    document.getElementById('pagina_id').value = pagina_id;
    document.getElementById('pagina_tipo').value = pagina_tipo;
    document.getElementById('pagina_nombre').value = pagina_nombre;
    $('#modal-paginas').modal('hide')
} 

function menu_pagina_nuevo(url)
{
    //e.preventDefault();
    $('#form-menu').attr('action', url).submit();
}

function menu_url_nuevo(url)
{
    //e.preventDefault();
    $('#form-menu').attr('action', url).submit();
}  

$('select[name=estado]').on('change', function() {
  $('select[name=estado]').selectpicker('setStyle', 'btn-default');
}); 

function generar_password(tamanio)
{
    document.getElementById('password').value = generatePassword(tamanio);        
}    

function generatePassword (length) {
    var password = '', character; 
    while (length > password.length) {
    	if (password.indexOf(character = String.fromCharCode(Math.floor(Math.random() * 94) + 33), Math.floor(password.length / 94) * 94) < 0) {
    		password += character;
    	}
    }
    return password;
} 

function remover_fotografia()
{ 

  $( "#vista_previa" ).slideUp( "slow",   function () {
    $("label[for='fotografia']").text("Fotografía");
    $("#vista_previa" ).addClass('hide');
    $("#fotografia").val('');
  } );
}


function remover_imagen_fondo()
{ 
  $( "#vista_previa" ).slideUp( "slow",   function () {
    $("label[for='imagen_fondo']").text("Imagen de fondo");
    $("#vista_previa" ).addClass('hide');
    $("#imagen_fondo").val('');
  } );
}

$("#archivo_contenido").keydown(function(e) {
    if(e.keyCode === 9) { // tab was pressed
        // get caret position/selection
        var start = this.selectionStart;
            end = this.selectionEnd;

        var $this = $(this);

        // set textarea value to: text before caret + tab + text after caret
        $this.val($this.val().substring(0, start)
                    + "\t"
                    + $this.val().substring(end));

        // put caret at right position again
        this.selectionStart = this.selectionEnd = start + 1;

        // prevent the focus lose
        return false;
    }
});