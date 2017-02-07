  <?php 
    $usuario_sesion = get_user_session();
  ?>

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container full-width-div">
        <div class="navbar-header">
          <a href="#" class="" style="padding-left: 15px;padding-right: 15px;">
            <img src="<?php echo base_url('assets/img/score_admin_blanco.png'); ?>" />          
          </a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- inicio de opciones de menu -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">
            <!-- inicio de menu biblioteca -->
            <li class="dropdown" style="">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Biblioteca <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="<?php echo base_url('index.php/intranet/biblioteca_documento');?>">Archivos</a></li>
                <li><a href="<?php echo base_url('index.php/intranet/biblioteca_categoria');?>">Categorías</a></li>
                <li><a href="<?php echo base_url('index.php/intranet/biblioteca');?>">Bibliotecas</a></li>
              <!--<li class="dropdown-submenu">
                <a tabindex="-1" href="<?php echo base_url('index.php/intranet/biblioteca_documento');?>">Documentos</a>
                <ul class="dropdown-menu">
                  <li><a tabindex="-1" href="<?php echo base_url('index.php/intranet/biblioteca_documento/nuevo');?>">Añadir nuevo documento</a></li>
                </ul>
              </li>-->                              
              </ul>             
            </li>
            <!-- fin de menu biblioteca -->
            <!-- inicio menu convocatoria -->
            <li class="dropdown" style="">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Convocatorias <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="<?php echo base_url('index.php/intranet/convocatoria_formador');?>">Convocatorias de Formadores</a></li>
                <li><a href="<?php echo base_url('index.php/intranet/convocatoria_formador');?>">Inscripciones de formadores recibidos del sitio público</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="<?php echo base_url('index.php/intranet/convocatoria_empresa');?>">Convocatorias de Empresas</a></li>
                <li><a href="<?php echo base_url('index.php/intranet/inscripcion_empresa');?>">Inscripciones de empresas recibidas del sitio público</a></li>
              <!--<li class="dropdown-submenu">
                <a tabindex="-1" href="<?php echo base_url('index.php/intranet/biblioteca_documento');?>">Documentos</a>
                <ul class="dropdown-menu">
                  <li><a tabindex="-1" href="<?php echo base_url('index.php/intranet/biblioteca_documento/nuevo');?>">Añadir nuevo documento</a></li>
                </ul>
              </li>-->                              
              </ul>             
            </li>
            <!-- fin menu convocatoria -->                      
          </ul>

        </div>
        <!-- fin de opciones de menu -->
        <!-- /.navbar-collapse -->
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- The user image in the navbar-->
                <img src="<?php echo $usuario_sesion->fotografia;?>" class="user-image" alt="<?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?>"/>
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs"><?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- The user image in the menu -->
                <li class="user-header">
                  <img src="<?php echo $usuario_sesion->fotografia;?>" class="img-circle" alt="<?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?>"/>

                  <p>
                    <?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?> - <?php echo $usuario_sesion->perfil;?>
                    <small>Miembro desde <?php $date = strtotime($usuario_sesion->creado);echo date('d/M/Y', $date);?></small>
                  </p>
                </li>
                <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$usuario_sesion->id);?>" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo base_url('index.php/intranet/sesion/cerrar');?>" class="btn btn-default btn-flat">Cerrar sesión</a>
                </div>
              </li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>