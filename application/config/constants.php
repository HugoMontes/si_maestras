<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/*
|--------------------------------------------------------------------------
| Constantes de formulario
|--------------------------------------------------------------------------
*/
// comunes
define('NUEVO',1);
define('EDICION',2);
define('AUTENTICAR',1);
define('PUBLICADO', 1);
define('DESPUBLICADO', 0);
define('HABILITADO', 1);
define('DESHABILITADO', 0);
// menu
define('MENU_URL',2);
define('MENU_PAGINA',1);
define('NUEVA_VENTANA', 0);
define('MISMA_VENTANA', 1);
define('MENU_RAIZ',0);
// orden
define('PRIMERO',-1);
define('ULTIMO',-2);
// navegacion vistas
define('USUARIOS','usuarios');
define('NOTICIAS','noticias');
define('NOTICIAS_CAPACITACION','noticias_capacitacion');
define('MENUS','menus');
define('PAGINAS','paginas');
define('PAGINAS_PREDISENADAS','paginas_predisenadas');
define('FORMADORES','formadores');
define('TESTIMONIOS','testimonios');
define('PUBLICACIONES','publicaciones');
define('CONTACTOS','contactos');
define('SLIDES','slides');
define('ESPECIALISTAS','especialistas');
define('ESPECIALIDADES','especialidades');
// generos
define('VARON','varon');
define('MUJER','mujer');
// sidebar
define('EXTENDIDO','1');
define('COLAPSADO','0');
// testimonio
define('TESTIMONIO_EMPRESA',1);
define('TESTIMONIO_PERSONAL',2);
// usuario
define('LONGITUD_PASSWORD',12);
// tipos de pagina
define('PAGINA_CREADA',1);
define('PAGINA_PREDISENADA',2);
// numero de items de paginacion
define('NUMERO_ITEMS_PAGINACION',20);
// numero de filas por pagina
define('FILAS',20);
// respuesta de contacto
define('RESPUESTA',1);
// estados de email
define('EMAIL_ENVIADO', 1);
define('EMAIL_NO_ENVIADO', 0);
// estados de respuesta
define('RESPUESTA_ENVIADA', 1);
define('RESPUESTA_NO_ENVIADA', 0);

###########################################################################
# intranet
###########################################################################
// inscripcion
define('INSCRIPCION_EMPRESAS','inscripcion_empresas');
define('INSCRIPCION_FORMADORES','inscripcion_formadores');
// convocatoria
define('CONVOCATORIA_EMPRESAS','convocatoria_empresas');
define('CONVOCATORIA_FORMADORES','convocatoria_formadores');
// navegacion intranet
define('BIBLIOTECAS','bibliotecas');
define('BIBLIOTECA_CATEGORIAS','biblioteca_categorias');
define('BIBLIOTECA_DOCUMENTOS','biblioteca_documentos');
// perfiles de usuario
define('SUPER',1);
define('CENTRO_FORMACION',2);
// numero de items intranet
define('FILAS_INTRANET',20);
// bloqueado
define('BLOQUEADO',1);
define('NO_BLOQUEADO',0);
// inscripciones
define('AFILIADO_SI',1);
define('AFILIADO_NO',0);
define('MODULO_1',1);
define('MODULO_2',2);
define('MODULO_3',3);
define('MODULO_4',4);
define('MODULO_5',5);
define('SIN_MEDIO_AVISO',0);
define('ANUNCIO_PERIODICO',1);
define('ANUNCIO_REVISTA',2);
define('SPOT_RADIAL',3);
define('EMAIL_SCORE',4);
define('FORMADOR_SCORE',5);
define('OTROS',6);
define('ACEPTO_TERMINOS',1);
// cuenta activada
define('ACTIVADO',1);
define('NO_ACTIVADO',0);
/*
|--------------------------------------------------------------------------
| Display Debug backtrace
|--------------------------------------------------------------------------
|
| If set to TRUE, a backtrace will be displayed along with php errors. If
| error_reporting is disabled, the backtrace will not display, regardless
| of this setting
|
*/
defined('SHOW_DEBUG_BACKTRACE') OR define('SHOW_DEBUG_BACKTRACE', TRUE);

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
defined('FILE_READ_MODE')  OR define('FILE_READ_MODE', 0644);
defined('FILE_WRITE_MODE') OR define('FILE_WRITE_MODE', 0666);
defined('DIR_READ_MODE')   OR define('DIR_READ_MODE', 0755);
defined('DIR_WRITE_MODE')  OR define('DIR_WRITE_MODE', 0755);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/
defined('FOPEN_READ')                           OR define('FOPEN_READ', 'rb');
defined('FOPEN_READ_WRITE')                     OR define('FOPEN_READ_WRITE', 'r+b');
defined('FOPEN_WRITE_CREATE_DESTRUCTIVE')       OR define('FOPEN_WRITE_CREATE_DESTRUCTIVE', 'wb'); // truncates existing file data, use with care
defined('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE')  OR define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE', 'w+b'); // truncates existing file data, use with care
defined('FOPEN_WRITE_CREATE')                   OR define('FOPEN_WRITE_CREATE', 'ab');
defined('FOPEN_READ_WRITE_CREATE')              OR define('FOPEN_READ_WRITE_CREATE', 'a+b');
defined('FOPEN_WRITE_CREATE_STRICT')            OR define('FOPEN_WRITE_CREATE_STRICT', 'xb');
defined('FOPEN_READ_WRITE_CREATE_STRICT')       OR define('FOPEN_READ_WRITE_CREATE_STRICT', 'x+b');

/*
|--------------------------------------------------------------------------
| Exit Status Codes
|--------------------------------------------------------------------------
|
| Used to indicate the conditions under which the script is exit()ing.
| While there is no universal standard for error codes, there are some
| broad conventions.  Three such conventions are mentioned below, for
| those who wish to make use of them.  The CodeIgniter defaults were
| chosen for the least overlap with these conventions, while still
| leaving room for others to be defined in future versions and user
| applications.
|
| The three main conventions used for determining exit status codes
| are as follows:
|
|    Standard C/C++ Library (stdlibc):
|       http://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
|       (This link also contains other GNU-specific conventions)
|    BSD sysexits.h:
|       http://www.gsp.com/cgi-bin/man.cgi?section=3&topic=sysexits
|    Bash scripting:
|       http://tldp.org/LDP/abs/html/exitcodes.html
|
*/
defined('EXIT_SUCCESS')        OR define('EXIT_SUCCESS', 0); // no errors
defined('EXIT_ERROR')          OR define('EXIT_ERROR', 1); // generic error
defined('EXIT_CONFIG')         OR define('EXIT_CONFIG', 3); // configuration error
defined('EXIT_UNKNOWN_FILE')   OR define('EXIT_UNKNOWN_FILE', 4); // file not found
defined('EXIT_UNKNOWN_CLASS')  OR define('EXIT_UNKNOWN_CLASS', 5); // unknown class
defined('EXIT_UNKNOWN_METHOD') OR define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT')     OR define('EXIT_USER_INPUT', 7); // invalid user input
defined('EXIT_DATABASE')       OR define('EXIT_DATABASE', 8); // database error
defined('EXIT__AUTO_MIN')      OR define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX')      OR define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code
