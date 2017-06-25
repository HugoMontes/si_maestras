  <!-- Left side column. contains the logo and sidebar -->
  <?php $usuario_sesion = get_user_session(); ?>
  <?php
    $url = str_replace(base_url(),"",current_url());
    // menu escritorio
    $class_menu_escritorio_0 = '';
    // menu pagina de inicio
    $class_menu_inicio_0 = '';
    $class_menu_inicio_1 = '';
    $class_menu_inicio_2 = '';
    $class_menu_inicio_3 = '';
    $class_menu_inicio_4 = '';
    $class_menu_inicio_5 = '';
    // menu contacto
    $class_menu_contacto_0 = '';         
    // menu pagina
    $class_menu_pagina_0 = '';
    $class_menu_pagina_1 = '';
    $class_menu_pagina_2 = '';
    // menu pagina predisenada
    $class_menu_pagina_predisenada_0 = '';
    // menu menu
    $class_menu_menu_0 = '';
    $class_menu_menu_1 = '';
    $class_menu_menu_2 = '';
    // menu noticia
    $class_menu_noticia_0 = '';
    $class_menu_noticia_1 = '';
    $class_menu_noticia_2 = '';
    // menu informacion
    $class_menu_informacion_0 = '';
    $class_menu_informacion_1 = '';
    $class_menu_informacion_2 = '';
    $class_menu_informacion_3 = '';
    // menu formador
    $class_menu_formador_0 = '';
    $class_menu_formador_1 = '';
    $class_menu_formador_2 = '';
    // menu centros
    $class_menu_centro_0 = '';
    $class_menu_centro_1 = '';
    $class_menu_centro_2 = '';
    // menu especialistas
    $class_menu_especialista_0 = '';
    $class_menu_especialista_1 = '';
    $class_menu_especialista_2 = '';
    // menu testimonio
    $class_menu_testimonio_0 = '';
    $class_menu_testimonio_1 = '';
    $class_menu_testimonio_2 = '';
    // menu publicacion
    $class_menu_publicacion_0 = '';
    $class_menu_publicacion_1 = '';
    $class_menu_publicacion_2 = '';
    // menu encuesta
    $class_menu_encuesta_0 = '';
    // menu usuario
    $class_menu_usuario_0 = '';
    $class_menu_usuario_1 = '';
    $class_menu_usuario_2 = '';
    $class_menu_usuario_3 = '';
    // menu apariencia
    $class_menu_apariencia_0 = '';
    $class_menu_apariencia_1 = '';
    $class_menu_apariencia_2 = '';
    $class_menu_apariencia_3 = '';
    // menu ajuste
    $class_menu_ajuste_0 = '';
    $class_menu_ajuste_1 = '';
    
    if(strpos($url, 'escritorio') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_escritorio_0 = 'active';      
    }elseif(strpos($url, 'slide') !== false OR 
       strpos($url, 'modulo/editar/5') !== false OR
       strpos($url, 'modulo/editar/2') !== false OR
       strpos($url, 'modulo/editar/3') !== false OR
       strpos($url, 'modulo/editar/4') !== false){
        $class_menu_inicio_0 = 'active';
        if(strpos($url, 'slide') !== false){
            $class_menu_inicio_1 = 'active';
        }elseif(strpos($url, 'modulo/editar/5') !== false){
            $class_menu_inicio_5 = 'active';
        }elseif(strpos($url, 'modulo/editar/2') !== false){
            $class_menu_inicio_2 = 'active';
        }elseif(strpos($url, 'modulo/editar/4') !== false){
            $class_menu_inicio_4 = 'active';
        }elseif(strpos($url, 'modulo/editar/3') !== false){
            $class_menu_inicio_3 = 'active';
        }           
    }elseif(strpos($url, 'contacto') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_contacto_0 = 'active';     
    }elseif(strpos($url, 'pagina') !== false AND strpos($url, 'menu_pagina') === false AND strpos($url, 'pagina_predisenada') === false){
        $class_menu_pagina_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_pagina_2 = 'active';
        }
        else{
            $class_menu_pagina_1 = 'active';
        }      
    }elseif(strpos($url, 'pagina_predisenada') !== false){
        $class_menu_pagina_predisenada_0 = 'active';    
    }elseif(strpos($url, 'menu') !== false){
        $class_menu_menu_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_menu_2 = 'active';
        }
        else{
            $class_menu_menu_1 = 'active';
        }        
    }elseif(strpos($url, 'noticia') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_noticia_0 = 'active';
        if(strpos($url, 'noticia/1') !== false OR strpos($url, 'noticia/nuevo/1') !== false){
            $class_menu_noticia_1 = 'active';
        }
        elseif(strpos($url, 'noticia/2') !== false OR strpos($url, 'noticia/nuevo/2') !== false){
            $class_menu_noticia_2 = 'active';
        }        
    }elseif(strpos($url, 'informacion') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_informacion_0 = 'active';
        if(strpos($url, 'informacion/3') !== false OR strpos($url, 'informacion/nuevo/3') !== false){
            $class_menu_informacion_1 = 'active';
        }
        elseif(strpos($url, 'informacion/4') !== false OR strpos($url, 'informacion/nuevo/4') !== false){
            $class_menu_informacion_2 = 'active';
        }
        elseif(strpos($url, 'informacion/5') !== false OR strpos($url, 'informacion/nuevo/5') !== false){
            $class_menu_informacion_3 = 'active';
        }         
    }elseif(strpos($url, 'formador') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_formador_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_formador_2 = 'active';
        }
        else{
            $class_menu_formador_1 = 'active';
        }        
    }elseif(strpos($url, 'centro') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_centro_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_centro_2 = 'active';
        }
        else{
            $class_menu_centro_1 = 'active';
        }        
    }elseif(strpos($url, 'especialista') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_especialista_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_especialista_2 = 'active';
        }
        else{
            $class_menu_especialista_1 = 'active';
        }        
    }elseif(strpos($url, 'testimonio') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_testimonio_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_testimonio_2 = 'active';
        }
        else{
            $class_menu_testimonio_1 = 'active';
        }        
    }elseif(strpos($url, 'publicacion') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_publicacion_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_publicacion_2 = 'active';
        }
        else{
            $class_menu_publicacion_1 = 'active';
        }        
    }elseif(strpos($url, 'encuesta') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_encuesta_0 = 'active';     
    }elseif(strpos($url, 'usuario') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_usuario_0 = 'active';
        if(strpos($url, 'editar/'.$usuario_sesion->id) !== false){
            $class_menu_usuario_3 = 'active';
        }
        else{
            if(strpos($url, 'nuevo') !== false){
                $class_menu_usuario_2 = 'active';
            }
            else{
                $class_menu_usuario_1 = 'active';
            }    
        }       
    }elseif(strpos($url, 'modulo/editar/1') !== false OR strpos($url, 'css') !== false OR strpos($url, 'modulo/editar/logo') !== false){
        $class_menu_apariencia_0 = 'active';
        if(strpos($url, 'modulo/editar/1') !== false){
            $class_menu_apariencia_1 = 'active';
        }elseif(strpos($url, 'css') !== false){
            $class_menu_apariencia_2 = 'active';
        }elseif(strpos($url, 'modulo/editar/logo') !== false){
            $class_menu_apariencia_3 = 'active';
        }   
    }elseif(strpos($url, 'email') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_ajuste_0 = 'active';
        if(strpos($url, 'email') !== false){
            $class_menu_ajuste_1 = 'active';
        }   
    }
  ?>
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <?php
          if(!empty($usuario_sesion->fotografia))          
            $fotografia_sidebar = $usuario_sesion->fotografia;
          else
            $fotografia_sidebar = base_url('assets/img/usuario/default.jpg');
          ?>
          <img src="<?php echo $fotografia_sidebar?>" class="img-circle" alt="<?php echo $usuario_sesion->nombres.' '.$usuario_sesion->apellidos;?>"/>
          <!--<div class="thumb-user-sidebar img-circle" style="background-image: url(<?php echo $fotografia_sidebar;?>);"></div>-->
        </div>
        <div class="pull-left info">
          <p><?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <div style="color: white; margin: 0px 12px;">
        <p><?php echo $usuario_sesion->txt_centro_formacion; ?></p>
      </div>
      <!-- search form -->
      <form action="<?php echo base_url('index.php/administrador/busqueda_rapida') ?>" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="search_key" class="form-control" placeholder="Búsqueda rápida">
              <span class="input-group-btn">
                <button type="submit" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">ADMINISTRACIÓN DEL SITIO</li>

        <li class="<?php echo $class_menu_escritorio_0;?>">
          <a href="<?php echo base_url('index.php/administrador/escritorio'); ?>">
            <i class="fa fa-dashboard"></i> <span>Escritorio</span>
            <span class="pull-right-container">
            </span>
          </a>
        </li>
        
        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_inicio_0;?>">
          <a href="#">
            <i class="fa fa-home"></i>
            <span>Página de inicio</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_inicio_1;?>"><a href="<?php echo base_url('index.php/administrador/slide'); ?>"><i class="fa fa-circle-o"></i> Slides</a></li>
            <!--
            <li class="<?php echo $class_menu_inicio_3;?>"><a href="<?php echo base_url('index.php/administrador/modulo/editar/2'); ?>"><i class="fa fa-circle-o"></i> Convocatoria</a></li>
            -->
            <li class="<?php echo $class_menu_inicio_4;?>"><a href="<?php echo base_url('index.php/administrador/modulo/editar/4'); ?>"><i class="fa fa-circle-o"></i> Anuncio principal</a></li>
            <li class="<?php echo $class_menu_inicio_5;?>"><a href="<?php echo base_url('index.php/administrador/modulo/editar/5'); ?>"><i class="fa fa-circle-o"></i> Escuelas de formación</a></li>
            <li class="<?php echo $class_menu_inicio_2;?>"><a href="<?php echo base_url('index.php/administrador/modulo/editar/2'); ?>"><i class="fa fa-circle-o"></i> Auspiciadores</a></li>
            <li class="<?php echo $class_menu_inicio_3;?>"><a href="<?php echo base_url('index.php/administrador/modulo/editar/3'); ?>"><i class="fa fa-circle-o"></i> Empresas</a></li>         
          </ul>
        </li>
        <?php } ?>
        
        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="<?php echo $class_menu_contacto_0;?>">
          <a href="<?php echo base_url('index.php/administrador/contacto'); ?>">
            <i class="fa fa-envelope"></i> <span>Contactos</span>
            <span class="pull-right-container">
              <?php $contactos = get_contactos();
              if($contactos > 0)
              {
              ?>
              <small class="label pull-right bg-red"><?php echo $contactos; ?></small>              
              <?php  
              }
              ?>
            </span>
          </a>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_pagina_0;?>">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Páginas</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_pagina_1;?>"><a href="<?php echo base_url('index.php/administrador/pagina'); ?>"><i class="fa fa-circle-o"></i>Todas las Páginas</a></li>
            <li class="<?php echo $class_menu_pagina_2;?>"><a href="<?php echo base_url('index.php/administrador/pagina/nuevo'); ?>"><i class="fa fa-circle-o"></i> Añadir nueva</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="<?php echo $class_menu_pagina_predisenada_0;?>">
          <a href="<?php echo base_url('index.php/administrador/pagina_predisenada'); ?>">
            <i class="fa fa-files-o"></i> <span>Páginas prediseñadas</span>
          </a>
        </li>
        <?php } ?>
        
        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_menu_0;?>">
          <a href="#">
            <i class="fa fa-list-ul"></i>
            <span>Menús</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_menu_1;?>"><a href="<?php echo base_url('index.php/administrador/menu'); ?>"><i class="fa fa-circle-o"></i> Todos los menús</a></li>
            <li class="<?php echo $class_menu_menu_2;?>"><a href="<?php echo base_url('index.php/administrador/menu/nuevo'); ?>"><i class="fa fa-circle-o"></i> Añadir nuevo</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_noticia_0;?>">
          <a href="#">
            <i class="fa fa-newspaper-o"></i>
            <span>Noticias</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_noticia_1;?>"><a href="<?php echo base_url('index.php/administrador/noticia/1') ?>"><i class="fa fa-circle-o"></i> Generales</a></li>
            <li class="<?php echo $class_menu_noticia_2;?>"><a href="<?php echo base_url('index.php/administrador/noticia/2') ?>"><i class="fa fa-circle-o"></i> Capacitacion</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == CENTRO_FORMACION){ ?>
        <li class="treeview <?php echo $class_menu_noticia_0;?>">
          <a href="#">
            <i class="fa fa-newspaper-o"></i>
            <span>Noticias</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_noticia_1;?>"><a href="<?php echo base_url('index.php/administrador/noticia/centro/1') ?>"><i class="fa fa-circle-o"></i> Generales</a></li>
            <li class="<?php echo $class_menu_noticia_2;?>"><a href="<?php echo base_url('index.php/administrador/noticia/centro/2') ?>"><i class="fa fa-circle-o"></i> Capacitacion</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_informacion_0;?>">
          <a href="#">
            <i class="fa fa-info-circle"></i>
            <span>Información de interes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_informacion_1;?>"><a href="<?php echo base_url('index.php/administrador/informacion/3') ?>"><i class="fa fa-circle-o"></i> Equidad de genero</a></li>
            <li class="<?php echo $class_menu_informacion_2;?>"><a href="<?php echo base_url('index.php/administrador/informacion/4') ?>"><i class="fa fa-circle-o"></i> Derechos laborales</a></li>
            <li class="<?php echo $class_menu_informacion_3;?>"><a href="<?php echo base_url('index.php/administrador/informacion/5') ?>"><i class="fa fa-circle-o"></i> Salud y seguridad</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == CENTRO_FORMACION){ ?>
        <li class="treeview <?php echo $class_menu_informacion_0;?>">
          <a href="#">
            <i class="fa fa-info-circle"></i>
            <span>Información de interes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_informacion_1;?>"><a href="<?php echo base_url('index.php/administrador/noticia/centro/3') ?>"><i class="fa fa-circle-o"></i> Equidad de genero</a></li>
            <li class="<?php echo $class_menu_informacion_2;?>"><a href="<?php echo base_url('index.php/administrador/noticia/centro/4') ?>"><i class="fa fa-circle-o"></i> Derechos laborales</a></li>
            <li class="<?php echo $class_menu_informacion_3;?>"><a href="<?php echo base_url('index.php/administrador/noticia/centro/5') ?>"><i class="fa fa-circle-o"></i> Salud y seguridad</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_apariencia_0;?>">
          <a href="#">
            <i class="fa fa-paint-brush"></i> <span>Apariencia</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_apariencia_3;?>"><a href="<?php echo base_url('index.php/administrador/modulo/editar/logo'); ?>"><i class="fa fa-circle-o"></i> Logotipo</a></li>
            <li class="<?php echo $class_menu_apariencia_1;?>"><a href="<?php echo base_url('index.php/administrador/modulo/editar/1'); ?>"><i class="fa fa-circle-o"></i> Pie de página</a></li>
            <li class="<?php echo $class_menu_apariencia_2;?>"><a href="<?php echo base_url('index.php/administrador/css/editar');?>"><i class="fa fa-circle-o"></i> CSS personalizado</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_ajuste_0;?>">
          <a href="#">
            <i class="fa fa-gear"></i> <span>Ajustes</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_ajuste_1;?>"><a href="<?php echo base_url('index.php/administrador/email/editar'); ?>"><i class="fa fa-circle-o"></i> Email de notificación</a></li>            
          </ul>
        </li>      
        <?php } ?>
      </ul>

      <ul class="sidebar-menu">
        <li class="header">MÓDULO MAESTRAS CONSTRUCTORAS</li>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_centro_0;?>">
          <a href="#">
            <i class="fa fa-university"></i> <span>Centros de formación</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_centro_1;?>"><a href="<?php echo base_url('index.php/administrador/centro'); ?>"><i class="fa fa-circle-o"></i> Todos los centros de form...</a></li>
            <li class="<?php echo $class_menu_centro_2;?>"><a href="<?php echo base_url('index.php/administrador/centro/nuevo'); ?>"><i class="fa fa-circle-o"></i> Añadir nuevo</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_especialista_0;?>">
          <a href="#">
            <i class="fa fa-users"></i> <span>Maestras constructoras</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_especialista_1;?>"><a href="<?php echo base_url('index.php/administrador/especialista'); ?>"><i class="fa fa-circle-o"></i> Todas las maestras cons...</a></li>
            <li class="<?php echo $class_menu_especialista_2;?>"><a href="<?php echo base_url('index.php/administrador/especialista/nuevo'); ?>"><i class="fa fa-circle-o"></i> Añadir nuevo</a></li>
          </ul>
        </li>
        <?php } ?>

        <?php if($usuario_sesion->perfil_id == CENTRO_FORMACION){ ?>
        <li class="treeview <?php echo $class_menu_especialista_0;?>">
          <a href="#">
            <i class="fa fa-users"></i> <span>Maestras constructoras</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_especialista_1;?>"><a href="<?php echo base_url('index.php/administrador/especialista/centro'); ?>"><i class="fa fa-circle-o"></i> Todas las maestras cons...</a></li>
            <li class="<?php echo $class_menu_especialista_2;?>"><a href="<?php echo base_url('index.php/administrador/especialista/centro/nuevo'); ?>"><i class="fa fa-circle-o"></i> Añadir nuevo</a></li>
          </ul>
        </li>
        <?php } ?>
        


        <li class="treeview <?php echo $class_menu_encuesta_0;?>">
          <a href="<?php echo base_url('index.php/administrador/encuesta');?>">
            <i class="glyphicon glyphicon-check"></i> <span>Resultados encuesta</span>
          </a>
        </li>

        <!--
        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_publicacion_0;?>">
          <a href="#">
            <i class="fa fa-file"></i> <span>Publicaciones</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_publicacion_1;?>"><a href="<?php echo base_url('index.php/administrador/publicacion');?>"><i class="fa fa-circle-o"></i> Todas las publicaciones</a></li>
            <li class="<?php echo $class_menu_publicacion_2;?>"><a href="<?php echo base_url('index.php/administrador/publicacion/nuevo');?>"><i class="fa fa-circle-o"></i> Añadir nueva</a></li>
          </ul>
        </li>
        <?php } ?>
        -->

        <?php if($usuario_sesion->perfil_id == SUPER){ ?>
        <li class="treeview <?php echo $class_menu_usuario_0;?>">
          <a href="#">
            <i class="fa fa-user"></i> <span>Usuarios</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_usuario_1;?>"><a href="<?php echo base_url('index.php/administrador/usuario');?>"><i class="fa fa-circle-o"></i> Todos los usuarios</a></li>
            <li class="<?php echo $class_menu_usuario_2;?>"><a href="<?php echo base_url('index.php/administrador/usuario/nuevo');?>"><i class="fa fa-circle-o"></i> Añadir nuevo</a></li>
            <li class="<?php echo $class_menu_usuario_3;?>"><a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$usuario_sesion->id);?>"><i class="fa fa-circle-o"></i> Tu perfil</a></li>
          </ul>
        </li>
        <?php } ?>
      </ul> 
    </section>
    <!-- /.sidebar -->
  </aside>