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


/*function listar_opciones(filtro_id)
{
    var contenido = document.getElementById('contenido_ajax');
    var accion = document.getElementById('accion_listar_opciones').value;
	var filtro = document.getElementById(filtro_id).value;
    var ajax= objetoajax();
    ajax.open("POST", accion, true);
    ajax.onreadystatechange = function() {
        if (ajax.readyState == 4 && ajax.status == 200) {
            contenido.innerHTML = ajax.responseText;
        }
    }
    var variables = 'filtro_id='+filtro_id;
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send(variables);
}
*/

function listar_opciones(filtro_id, resultado_filtro_id, default_opcion, default_value)
{
	var filtro_seleccionado = document.getElementById(filtro_id).value;
    var accion = document.getElementById('accion_listar_opciones').value;
	$('#'+resultado_filtro_id)
    .find('option')
    .remove()
    .end()
    .append('<option value="'+ default_value +'" selected>'+default_opcion+'</option>')
    //.val('');
	var ajax= objetoajax();
	ajax.open("POST" ,accion, true);
	ajax.onreadystatechange = function() {
		if (ajax.readyState == 4 && ajax.status == 200) {
			var opciones = ajax.responseText;
			$('#'+resultado_filtro_id).append(opciones);
            $('#'+resultado_filtro_id).selectpicker('refresh');
		}
	}
	var variables="filtro_id="+filtro_seleccionado;
    
	//  setRequestHeader : necesario cuando se envia variables
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");	
	ajax.send(variables);
}

function saludo()
{
    alert('hola');
}

function eliminar(id, nombre)
{
    document.getElementById('nombre_eliminar').innerHTML = nombre;
    $('#enlace_eliminar').attr("href", document.getElementById('accion_eliminar').value + '/' +id);
    $('#modal-eliminar').modal('show'); 
}


function buscar_nombre(url)
{
    var buscar = document.getElementById('nombre').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-nombre').attr('href', url + '/?search_in=nombre&search_key=' + buscar);      
}

function buscar_nombre_empresa(url)
{
    var buscar = document.getElementById('nombre_empresa').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-nombre-empresa').attr('href', url + '/?search_in=nombre_empresa&search_key=' + buscar);      
}

function buscar_titulo(url)
{
    var buscar = document.getElementById('titulo').value; //?search_in=email&search_key=@gmail.com
    $('#buscar-titulo').attr('href', url + '/?search_in=titulo&search_key=' + buscar);      
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

function buscar_biblioteca(url)
{
    var biblioteca_id = document.getElementById('biblioteca_id').value;
    if(biblioteca_id > 0)
    {
      window.open(url + '/?search_in=biblioteca_id&search_key=' + biblioteca_id,"_self")    
    }
    else
    {
      window.open(url,"_self")   
    }
} 

function buscar_categoria(url)
{
    var categoria_id = document.getElementById('categoria_id').value;
    if(categoria_id > 0)
    {
      window.open(url + '/?search_in=categoria_id&search_key=' + categoria_id,"_self")    
    }
    else
    {
      window.open(url,"_self")   
    }
} 

function buscar_convocatoria(url)
{
    var convocatoria_id = document.getElementById('convocatoria_id').value;
    if(convocatoria_id > 0)
    {
      window.open(url + '/?search_in=convocatoria_id&search_key=' + convocatoria_id,"_self")    
    }
    else
    {
      window.open(url,"_self")   
    }
} 

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

$('select[name=estado]').on('change', function() {
  $('select[name=estado]').selectpicker('setStyle', 'btn-default');
}); 


function remover_documento()
{ 
    $( "#vista_previa" ).slideUp( "slow",   function () {
        $("label[for='documento']").text("Seleccionar un archivo");
        $("#vista_previa" ).addClass('hide');
        $("#documento").val('');
    });

    
    /*var accion = document.getElementById('accion_remover_documento').value;
    var id = document.getElementById('biblioteca_documento_id').value;
    var ajax= objetoajax();
    ajax.open("POST", accion, true);
    ajax.onreadystatechange = function() {
    if (ajax.readyState == 4 && ajax.status == 200) {
    }
    }
    var variables = 'id='+id;
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send(variables);*/    
}