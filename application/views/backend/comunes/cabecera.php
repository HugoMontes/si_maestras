  <?php 
    $usuario_sesion = get_user_session();
  ?>
  <header class="main-header">
    <!-- Logo -->
    <a href="<?php echo base_url('index.php/administrador/escritorio'); ?>" class="logo" style="background: #1a2226;">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <!--<span class="logo-mini"><b>A</b>LT</span>-->
      <span class="logo-mini"><img src="<?php echo base_url('assets/img/maestras.png');?>" style="width: 65%;" /></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><img src="<?php echo base_url('assets/img/maestras.png');?>" style="width: 65%;"/></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->          
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<?php echo $usuario_sesion->fotografia;?>" class="user-image" alt="<?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?>"/>
              <!--<div class="thumb-user-header user-image" style="background-image: url(<?php echo $usuario_sesion->fotografia;?>);"></div>-->
              <span class="hidden-xs"><?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="<?php echo $usuario_sesion->fotografia;?>" class="img-circle" alt="<?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?>">
                <!--<div class="thumb-user-header-session img-circle" style="background-image: url(<?php echo $usuario_sesion->fotografia;?>);"></div>-->

                <p>
                  <?php echo get_primera_palabra($usuario_sesion->nombres).' '.get_primera_palabra($usuario_sesion->apellidos);?> - <?php echo $usuario_sesion->perfil;?>
                  <small>Miembro desde <?php $date = strtotime($usuario_sesion->creado);echo date('d/M/Y', $date);?></small>
                  <?php //var_dump($usuario_sesion); ?>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$usuario_sesion->id);?>" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo base_url('index.php/administrador/sesion/cerrar');?>" class="btn btn-default btn-flat">Cerrar sesión</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>