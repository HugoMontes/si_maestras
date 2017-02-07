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
    // menu noticia general
    $class_menu_noticia_0 = '';
    $class_menu_noticia_1 = '';
    $class_menu_noticia_2 = '';
    // menu noticia capacitacion
    $class_menu_noticia_capacitacion_0 = '';
    $class_menu_noticia_capacitacion_1 = '';
    $class_menu_noticia_capacitacion_2 = '';
    // menu formador
    $class_menu_formador_0 = '';
    $class_menu_formador_1 = '';
    $class_menu_formador_2 = '';
    // menu especialistas
    $class_menu_especialista_0 = '';
    $class_menu_especialista_1 = '';
    $class_menu_especialista_2 = '';
    // menu especialidades
    $class_menu_especialidades_0 = '';
    $class_menu_especialidades_1 = '';
    $class_menu_especialidades_2 = '';
    // menu testimonio
    $class_menu_testimonio_0 = '';
    $class_menu_testimonio_1 = '';
    $class_menu_testimonio_2 = '';
    // menu publicacion
    $class_menu_publicacion_0 = '';
    $class_menu_publicacion_1 = '';
    $class_menu_publicacion_2 = '';
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
            $class_menu_inicio_2 = 'active';
        }elseif(strpos($url, 'modulo/editar/2') !== false){
            $class_menu_inicio_3 = 'active';
        }elseif(strpos($url, 'modulo/editar/4') !== false){
            $class_menu_inicio_4 = 'active';
        }elseif(strpos($url, 'modulo/editar/3') !== false){
            $class_menu_inicio_5 = 'active';
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
        if(strpos($url, 'nuevo') !== false){
            $class_menu_noticia_2 = 'active';
        }
        else{
            $class_menu_noticia_1 = 'active';
        }        
    }elseif(strpos($url, 'capacitacion') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_noticia_capacitacion_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_noticia_capacitacion_2 = 'active';
        }
        else{
            $class_menu_noticia_capacitacion_1 = 'active';
        }        
    }elseif(strpos($url, 'formador') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_formador_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_formador_2 = 'active';
        }
        else{
            $class_menu_formador_1 = 'active';
        }        
    }elseif(strpos($url, 'especialista') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_especialista_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_especialista_2 = 'active';
        }
        else{
            $class_menu_especialista_1 = 'active';
        }        
    }elseif(strpos($url, 'especialidad') !== false AND strpos($url, 'search_key=') === false){
        $class_menu_especialidades_0 = 'active';
        if(strpos($url, 'nuevo') !== false){
            $class_menu_especialidades_2 = 'active';
        }
        else{
            $class_menu_especialidades_1 = 'active';
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
        
        <?php if($usuario_sesion->perfil_id == SUPER OR 
                 $usuario_sesion->perfil_id == CENTRO_FORMACION){?>
        <li class="treeview <?php echo $class_menu_noticia_capacitacion_0;?>">
          <a href="#">
            <i class="fa fa-newspaper-o"></i>
            <span>Noticias capacitación</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_noticia_capacitacion_1;?>"><a href="<?php echo base_url('index.php/administrador/capacitacion') ?>"><i class="fa fa-circle-o"></i> Todas las noticias</a></li>
            <li class="<?php echo $class_menu_noticia_capacitacion_2;?>"><a href="<?php echo base_url('index.php/administrador/capacitacion/nuevo') ?>"><i class="fa fa-circle-o"></i> Añadir nueva</a></li>
          </ul>
        </li>
        <?php }?>

        <li class="treeview <?php echo $class_menu_especialista_0;?>">
          <a href="#">
            <i class="fa fa-users"></i> <span>Especialistas</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_especialista_1;?>"><a href="<?php echo base_url('index.php/administrador/especialista'); ?>"><i class="fa fa-circle-o"></i> Todos los especialistas</a></li>
            <li class="<?php echo $class_menu_especialista_2;?>"><a href="<?php echo base_url('index.php/administrador/especialista/nuevo'); ?>"><i class="fa fa-circle-o"></i> Añadir nuevo</a></li>
          </ul>
        </li>

        <li class="treeview <?php echo $class_menu_especialidades_0;?>">
          <a href="#">
            <i class="fa fa-suitcase"></i> <span>Especialidades</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?php echo $class_menu_especialidades_1;?>"><a href="<?php echo base_url('index.php/administrador/especialidad'); ?>"><i class="fa fa-circle-o"></i> Todas las especialidades</a></li>
            <li class="<?php echo $class_menu_especialidades_2;?>"><a href="<?php echo base_url('index.php/administrador/especialidad/nuevo'); ?>"><i class="fa fa-circle-o"></i> Añadir nuevo</a></li>
          </ul>
        </li>     
  
      </ul> 
    </section>
    <!-- /.sidebar -->
  </aside>