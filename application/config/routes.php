<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
##############################################################################
# intranet
##############################################################################
// inicio
$route['intranet/inicio'] = 'intranet/inicio';
// convocatoria empresa
$route['intranet/convocatoria_empresa'] = 'intranet/convocatoria_empresa';
$route['intranet/convocatoria_empresa/eliminar/(:any)'] = 'intranet/convocatoria_empresa/eliminar/$1';
$route['intranet/convocatoria_empresa/publicar_mensaje'] = 'intranet/convocatoria_empresa/publicar_mensaje';
$route['intranet/convocatoria_empresa/publicar'] = 'intranet/convocatoria_empresa/publicar';
$route['intranet/convocatoria_empresa/editar/(:num)'] = 'intranet/convocatoria_empresa/existe/$1';
$route['intranet/convocatoria_empresa/guardar'] = 'intranet/convocatoria_empresa/guardar';
$route['intranet/convocatoria_empresa/nuevo'] = 'intranet/convocatoria_empresa/nuevo';
// biblioteca documento
$route['intranet/biblioteca_documento'] = 'intranet/biblioteca_documento';
$route['intranet/biblioteca_documento/eliminar/(:any)'] = 'intranet/biblioteca_documento/eliminar/$1';
$route['intranet/biblioteca_documento/publicar_mensaje'] = 'intranet/biblioteca_documento/publicar_mensaje';
$route['intranet/biblioteca_documento/publicar'] = 'intranet/biblioteca_documento/publicar';
$route['intranet/biblioteca_documento/editar/(:num)'] = 'intranet/biblioteca_documento/existe/$1';
$route['intranet/biblioteca_documento/guardar'] = 'intranet/biblioteca_documento/guardar';
$route['intranet/biblioteca_documento/nuevo'] = 'intranet/biblioteca_documento/nuevo';
$route['intranet/biblioteca_documento/remover_documento'] = 'intranet/biblioteca_documento/remover_documento';

// biblioteca categoria
$route['intranet/biblioteca_categoria'] = 'intranet/biblioteca_categoria';
$route['intranet/biblioteca_categoria/eliminar/(:any)'] = 'intranet/biblioteca_categoria/eliminar/$1';
$route['intranet/biblioteca_categoria/publicar_mensaje'] = 'intranet/biblioteca_categoria/publicar_mensaje';
$route['intranet/biblioteca_categoria/publicar'] = 'intranet/biblioteca_categoria/publicar';
$route['intranet/biblioteca_categoria/editar/(:num)'] = 'intranet/biblioteca_categoria/existe/$1';
$route['intranet/biblioteca_categoria/guardar'] = 'intranet/biblioteca_categoria/guardar';
$route['intranet/biblioteca_categoria/nuevo'] = 'intranet/biblioteca_categoria/nuevo';
$route['intranet/biblioteca_categoria/listar_opciones_categorias'] = 'intranet/biblioteca_categoria/listar_opciones_categorias';
// biblioteca
$route['intranet/biblioteca'] = 'intranet/biblioteca';
$route['intranet/biblioteca/eliminar/(:any)'] = 'intranet/biblioteca/eliminar/$1';
$route['intranet/biblioteca/publicar_mensaje'] = 'intranet/biblioteca/publicar_mensaje';
$route['intranet/biblioteca/publicar'] = 'intranet/biblioteca/publicar';
$route['intranet/biblioteca/editar/(:num)'] = 'intranet/biblioteca/existe/$1';
$route['intranet/biblioteca/guardar'] = 'intranet/biblioteca/guardar';
$route['intranet/biblioteca/nuevo'] = 'intranet/biblioteca/nuevo';
// sesion
$route['intranet'] = 'intranet/sesion';
$route['intranet/sesion/cerrar'] = 'intranet/sesion/cerrar';
$route['intranet/sesion/autenticar'] = 'intranet/sesion/autenticar';
$route['intranet/sesion'] = 'intranet/sesion';
// escritorio
$route['intranet/escritorio'] = 'intranet/escritorio';


##############################################################################
# backend
##############################################################################
// slide
$route['administrador/slide'] = 'backend/slide';
$route['administrador/slide/upload'] = 'backend/slide/upload';
$route['administrador/slide/eliminar/(:any)'] = 'backend/slide/eliminar/$1';
$route['administrador/slide/publicar_mensaje'] = 'backend/slide/publicar_mensaje';
$route['administrador/slide/publicar'] = 'backend/slide/publicar';
$route['administrador/slide/editar/(:num)'] = 'backend/slide/existe/$1';
$route['administrador/slide/guardar'] = 'backend/slide/guardar';
$route['administrador/slide/nuevo'] = 'backend/slide/nuevo';
// publicacion
$route['administrador/publicacion'] = 'backend/publicacion';
$route['administrador/publicacion/upload'] = 'backend/publicacion/upload';
$route['administrador/publicacion/eliminar/(:any)'] = 'backend/publicacion/eliminar/$1';
$route['administrador/publicacion/publicar_mensaje'] = 'backend/publicacion/publicar_mensaje';
$route['administrador/publicacion/publicar'] = 'backend/publicacion/publicar';
$route['administrador/publicacion/editar/(:num)'] = 'backend/publicacion/existe/$1';
$route['administrador/publicacion/guardar'] = 'backend/publicacion/guardar';
$route['administrador/publicacion/nuevo'] = 'backend/publicacion/nuevo';
// contacto
$route['administrador/contacto'] = 'backend/contacto';
$route['administrador/contacto/eliminar/(:any)'] = 'backend/contacto/eliminar/$1';
$route['administrador/contacto/editar/(:num)'] = 'backend/contacto/existe/$1';
$route['administrador/contacto/guardar'] = 'backend/contacto/guardar';
$route['administrador/contacto/responder/(:num)'] = 'backend/contacto/responder/$1';
$route['administrador/contacto/enviar_respuesta'] = 'backend/contacto/enviar_respuesta';
// email
$route['administrador/email/editar'] = 'backend/email/editar';
$route['administrador/email/guardar'] = 'backend/email/guardar';
// css
$route['administrador/css/editar'] = 'backend/css/editar';
$route['administrador/css/guardar'] = 'backend/css/guardar';
// modulo
$route['administrador/modulo/editar/(:num)'] = 'backend/modulo/existe/$1';
$route['administrador/modulo/guardar'] = 'backend/modulo/guardar';
$route['administrador/modulo/editar/logo'] = 'backend/modulo/guardar_logotipo';
// presentacion
$route['administrador/presentacion/editar/(:num)'] = 'backend/presentacion/existe/$1';
$route['administrador/presentacion/guardar'] = 'backend/presentacion/guardar';
// sidebar
$route['administrador/sidebar'] = 'backend/sidebar';
// busqueda rapida
$route['administrador/busqueda_rapida'] = 'backend/busqueda_rapida';
// escritorio
$route['administrador/escritorio'] = 'backend/escritorio';
// sesion
$route['administrador'] = 'backend/sesion';
$route['administrador/sesion/cerrar'] = 'backend/sesion/cerrar';
$route['administrador/sesion/autenticar'] = 'backend/sesion/autenticar';
$route['administrador/sesion'] = 'backend/sesion';
// usuario
$route['administrador/usuario'] = 'backend/usuario';
$route['administrador/usuario/eliminar/(:any)'] = 'backend/usuario/eliminar/$1';
$route['administrador/usuario/habilitar_mensaje'] = 'backend/usuario/habilitar_mensaje';
$route['administrador/usuario/habilitar'] = 'backend/usuario/habilitar';
$route['administrador/usuario/editar/(:num)'] = 'backend/usuario/existe/$1';
$route['administrador/usuario/nuevo'] = 'backend/usuario/nuevo';
$route['administrador/usuario/guardar'] = 'backend/usuario/guardar';
// testimonio
$route['administrador/testimonio'] = 'backend/testimonio';
$route['administrador/testimonio/eliminar/(:any)'] = 'backend/testimonio/eliminar/$1';
$route['administrador/testimonio/publicar_mensaje'] = 'backend/testimonio/publicar_mensaje';
$route['administrador/testimonio/publicar'] = 'backend/testimonio/publicar';
$route['administrador/testimonio/nuevo'] = 'backend/testimonio/nuevo';
$route['administrador/testimonio/guardar'] = 'backend/testimonio/guardar';
// testimonio empresa
$route['administrador/testimonio_empresa/editar/(:num)'] = 'backend/testimonio_empresa/existe/$1';
$route['administrador/testimonio_empresa/guardar'] = 'backend/testimonio_empresa/guardar';
$route['administrador/testimonio_empresa/nuevo'] = 'backend/testimonio_empresa/nuevo';
// testimonio personal
$route['administrador/testimonio_personal/editar/(:num)'] = 'backend/testimonio_personal/existe/$1';
$route['administrador/testimonio_personal/guardar'] = 'backend/testimonio_personal/guardar';
$route['administrador/testimonio_personal/nuevo'] = 'backend/testimonio_personal/nuevo';
// menu
$route['administrador/menu'] = 'backend/menu';
$route['administrador/menu/eliminar/(:any)'] = 'backend/menu/eliminar/$1';
$route['administrador/menu/publicar_mensaje'] = 'backend/menu/publicar_mensaje';
$route['administrador/menu/publicar/(:num)'] = 'backend/menu/publicar/$1';
$route['administrador/menu/nuevo'] = 'backend/menu/nuevo';
$route['administrador/menu/guardar'] = 'backend/menu/guardar';
// menu url
$route['administrador/menu_url/editar/(:num)'] = 'backend/menu_url/existe/$1';
$route['administrador/menu_url/guardar'] = 'backend/menu_url/guardar';
$route['administrador/menu_url/nuevo'] = 'backend/menu_url/nuevo';
// menu pagina
$route['administrador/menu_pagina/editar/(:num)'] = 'backend/menu_pagina/existe/$1';
$route['administrador/menu_pagina/guardar'] = 'backend/menu_pagina/guardar';
$route['administrador/menu_pagina/nuevo'] = 'backend/menu_pagina/nuevo';
// formador
$route['administrador/formador'] = 'backend/formador';
$route['administrador/formador/upload'] = 'backend/formador/upload';
$route['administrador/formador/eliminar/(:any)'] = 'backend/formador/eliminar/$1';
$route['administrador/formador/publicar_mensaje'] = 'backend/formador/publicar_mensaje';
$route['administrador/formador/publicar'] = 'backend/formador/publicar';
$route['administrador/formador/editar/(:num)'] = 'backend/formador/existe/$1';
$route['administrador/formador/guardar'] = 'backend/formador/guardar';
$route['administrador/formador/nuevo'] = 'backend/formador/nuevo';
// centro
$route['administrador/centro'] = 'backend/centro_formacion';
$route['administrador/centro/nuevo'] = 'backend/centro_formacion/nuevo';
$route['administrador/centro/eliminar/(:any)'] = 'backend/centro_formacion/eliminar/$1';
$route['administrador/centro/guardar'] = 'backend/centro_formacion/guardar';
$route['administrador/centro/editar/(:num)'] = 'backend/centro_formacion/existe/$1';
$route['administrador/centro/valida/eliminar/especialidad'] = 'backend/centro_formacion/valida_eliminar_especialidad';
$route['administrador/centro/delete/especialidad'] = 'backend/centro_formacion/delete_especialidad';
// especialistas
$route['administrador/especialista'] = 'backend/especialista';
$route['administrador/especialista/nuevo'] = 'backend/especialista/nuevo';
$route['administrador/especialista/eliminar/(:any)'] = 'backend/especialista/eliminar/$1';
$route['administrador/especialista/guardar'] = 'backend/especialista/guardar';
$route['administrador/especialista/editar/(:num)'] = 'backend/especialista/existe/$1';
$route['administrador/especialista/importar/csv'] = 'backend/especialista/importar_csv';
// especialidades
$route['administrador/especialidad'] = 'backend/especialidad';
$route['administrador/especialidad/nuevo'] = 'backend/especialidad/nuevo';
$route['administrador/especialidad/eliminar/(:any)'] = 'backend/especialidad/eliminar/$1';
$route['administrador/especialidad/guardar'] = 'backend/especialidad/guardar';
$route['administrador/especialidad/editar/(:num)'] = 'backend/especialidad/existe/$1';
// noticia
$route['administrador/noticia/(:num)'] = 'backend/noticia/listar/$1';
$route['administrador/noticia/upload'] = 'backend/noticia/upload';
$route['administrador/noticia/eliminar/(:any)'] = 'backend/noticia/eliminar/$1';
$route['administrador/noticia/publicar_mensaje'] = 'backend/noticia/publicar_mensaje';
$route['administrador/noticia/publicar'] = 'backend/noticia/publicar';
$route['administrador/noticia/editar/(:num)/(:num)'] = 'backend/noticia/existe/$1/$2';
$route['administrador/noticia/guardar'] = 'backend/noticia/guardar';
$route['administrador/noticia/nuevo/(:num)'] = 'backend/noticia/nuevo/$1';
$route['administrador/noticia/preview/(:num)'] = 'frontend/noticia/find_noticia_by_id/$1';

$route['administrador/noticia/configuracion/(:num)']='backend/noticia/configuracion/$1';
$route['administrador/noticia/configuracion/guardar']='backend/noticia/configuracion_guardar';
// informacion
$route['administrador/informacion/(:num)'] = 'backend/noticia/listar/$1';
$route['administrador/informacion/editar/(:num)/(:num)'] = 'backend/noticia/existe/$1/$2';
$route['administrador/informacion/nuevo/(:num)'] = 'backend/noticia/nuevo/$1';
// pagina prediseñada
$route['administrador/pagina_predisenada'] = 'backend/pagina_predisenada';
$route['administrador/pagina_predisenada/publicar_mensaje'] = 'backend/pagina_predisenada/publicar_mensaje';
$route['administrador/pagina_predisenada/publicar'] = 'backend/pagina_predisenada/publicar';
// pagina
$route['administrador/pagina'] = 'backend/pagina';
$route['administrador/pagina/eliminar/(:any)'] = 'backend/pagina/eliminar/$1';
$route['administrador/pagina/publicar_mensaje'] = 'backend/pagina/publicar_mensaje';
$route['administrador/pagina/publicar'] = 'backend/pagina/publicar';
$route['administrador/pagina/editar/(:num)'] = 'backend/pagina/existe/$1';
$route['administrador/pagina/guardar'] = 'backend/pagina/guardar';
$route['administrador/pagina/nuevo'] = 'backend/pagina/nuevo';
$route['administrador/menu/nuevo'] = 'backend/menu/nuevo';
// editor
$route['administrador/formador/editar/ckeditor/plugins/imageuploader/'] = '';
##############################################################################
# frontend
##############################################################################
//$route['inicio'] = 'frontend/inicio';
// solicitar especialistas
$route['formulario_solicitud_especialistas'] = 'frontend/especialista_solicitud';
$route['finalizar_solicitud_especialistas'] = 'frontend/especialista_solicitud/guardar_solicitud';
$route['solicitar_especialistas'] = 'frontend/especialista_solicitud/save_solicitud';
$route['listar_especialistas/(:num)'] = 'frontend/especialista_solicitud/listar_especialistas/$1';
// inscripciones formadores
$route['formador_inscripcion_previo/autenticar'] = 'frontend/formador_inscripcion_previo/autenticar';
$route['inscripciones-formadores-score-bolivia'] = 'frontend/formador_inscripcion';
//$route['inscripciones-previo-formadores-score-bolivia'] = 'frontend/formador_inscripcion_previo';
$route['formador_inscripcion_previo/guardar'] = 'frontend/formador_inscripcion_previo/guardar';
$route['formador_inscripcion_previo/activar_cuenta/(:any)'] = 'frontend/formador_inscripcion_previo/activar_cuenta/$1';
// inscripciones empresas
$route['inscripciones-empresas-score-bolivia'] = 'frontend/empresa_inscripcion';
$route['empresa_inscripcion/guardar'] = 'frontend/empresa_inscripcion/guardar';
// noticias
$route['noticias/(:num)'] = 'frontend/noticia/all_noticias_by_id_grupo/$1'; //cuando sea la primera página
$route['noticias/(:num)/(:num)'] = 'frontend/noticia/all_noticias_by_id_grupo/$1'; //cuando no sea la primera página
$route['noticias_detalle/(:num)'] = 'frontend/noticia/find_noticia_by_id/$1';
// informacion
$route['informacion/(:num)'] = 'frontend/informacion/all_noticias_by_id_grupo/$1'; //cuando sea la primera página
$route['informacion/(:num)/(:num)'] = 'frontend/informacion/all_noticias_by_id_grupo/$1'; //cuando no sea la primera página
$route['informacion_detalle/(:num)'] = 'frontend/informacion/find_noticia_by_id/$1';
// rutas simples
$route{'biblioteca/(:any)'} = 'frontend/biblioteca/mostrar/$1';
$route['contacto/guardar'] = 'frontend/contacto/guardar';
$route['contacto-maestras-constructoras'] = 'frontend/contacto';
$route['formadores-score-bolivia'] = 'frontend/formadores';
$route['testimonios-score-bolivia'] = 'frontend/testimonios';
$route['publicaciones-score-bolivia'] = 'frontend/publicaciones';
$route{'pagina/(:any)'} = 'frontend/pagina/mostrar/$1';
##############################################################################
# comunes
##############################################################################
// default
$route['default_controller'] = 'inicio';
$route['404_override'] = 'frontend/error/error_404';
$route['translate_uri_dashes'] = FALSE;
