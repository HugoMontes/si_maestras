<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><?php echo $titulo; ?></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <link rel="icon" href="<?=base_url()?>/favicon.png" type="image/png"/>
    <link href="<?php echo base_url('assets/css/bootstrap.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/fonts/css/font-awesome.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/plugins/ionicons/css/ionicons.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/AdminLTE.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/plugins/iCheck/square/blue.css')?>" rel="stylesheet"/>   
    <link href="<?php echo base_url('assets/css/backend.css')?>" rel="stylesheet"/>    
</head>
<body class="hold-transition login-page" style="background-color: #c1c1c1 ;">
<div class="login-box">
  <div class="login-logo" style="background: #fff; padding: 10px 0px; margin-bottom: 20px; border-radius: 25px;">
    <a href="<?php echo base_url('index.php');?>">
      <!--
        <img src="<?php echo base_url('assets/img/maestras.png'); ?>"/>
      -->
      <img src="<?php echo base_url('assets/img/logo/'.$mod_logo->contenido);?>"/>
    </a>
  </div>

  <!-- /.login-logo -->
  <div class="login-box-body" style="border-radius: 25px;">
    <p class="login-box-msg" style="font-size: 30px;">Iniciar sesión</p>

    <form action="<?php echo base_url('index.php/administrador/sesion/autenticar') ?>" method="post">
              
      <!-- inicio cuadro mensaje -->                
      <?php
      if (isset($error)) {
      ?>                
      <div class="alert alert-danger alert-dismissible">
          <h4><i class="icon fa fa-ban"></i> ¡Error!</h4>       
          <p><?php echo $error;?></p>
      </div>          
      <?php
      $this->session->unset_userdata('error');
      }?>
      <!-- fin cuadro mensaje  -->                 
              
      <div class="form-group has-feedback">
        <input name="usuario" id="usuario" type="text" class="form-control input-large-text" value="<?php echo set_value('usuario');?>" placeholder="Nombre de usuario"/>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <?php echo form_error('usuario', '<span class="error-form">', '</span><br/><br/>'); ?>
      <div class="form-group has-feedback">
        <input name="password" id="password" type="password" class="form-control input-large-text" value="<?php echo set_value('password') ?>" placeholder="Contraseña"/>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <?php echo form_error('password', '<span class="error-form">', '</span><br/><br/>'); ?>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
                <input type="checkbox" id="remember_me" name="remember_me" value="1"
                <?php echo set_checkbox('remember_me', '1', FALSE); ?> />
                Recuérdame
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-12">
          <input type="hidden" name="autenticar" id="autenticar" value="<?php echo AUTENTICAR; ?>" />
          <button type="submit" class="btn btn-primary btn-block btn-flat">Iniciar sesión</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

    <!-- /.social-auth-links -->

    <!--<a href="#">Olvidé mi contraseña</a><br>-->
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<script src="<?php echo base_url('assets/plugins/jQuery/jquery-2.2.3.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/plugins/iCheck/icheck.min.js')?>"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
</body>
</html>
