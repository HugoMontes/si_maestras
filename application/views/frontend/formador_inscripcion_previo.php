<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><?php echo $titulo; ?></title>
    <meta name="Description" content="<?php echo $metadescripcion;?>"/>
    <meta name="keywords" content="<?php echo $metapalabras_clave;?>"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <link rel="icon" href="<?=base_url()?>/favicon.png" type="image/png"/>
    <link href="<?php echo base_url('assets/css/bootstrap.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/fonts/css/font-awesome.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/score-content.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/score.css')?>" rel="stylesheet"/>    
    <link href="<?php echo base_url('assets/css/frontend.css')?>" rel="stylesheet"/>    
    <link href="<?php echo base_url('assets/css/custom.css')?>" rel="stylesheet"/> 
</head>
<body>
<!-- inicio menu -->
<?php 
//echo $numero;
//var_dump($menu);
//echo $menus;
?>
<?php  $this->load->view('frontend/comunes/menu',array('menus'=>$menus,'navbar_transparente'=>FALSE));?>  
<!-- fin menu -->

<!-- inicio contenido-->
<main style="padding-left: 0px;padding-right: 0px;">
<div class="container">
<div class="row contenido" style="padding-left:10px;padding-right:10px;margin-top:15px;">

    <div class="col-xs-12 col-sm-12 col-md-12" style="margin-top: 20px;">
    <!-- inicio cuadro mensaje -->                
    <?php if (isset($mensaje)) {
    ?>
    
    <div class="alert alert-success alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4>Mensaje</h4> 
      <p><?php echo $mensaje; ?></p>
    </div>
    
    <?php    
    $this->session->unset_userdata('mensaje');
    } elseif (isset($error)) {
    ?>                

    <div class="alert alert-danger alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4>Error</h4> 
      <p><?php echo $error; ?></p>
    </div>
                          
    <?php
    $this->session->unset_userdata('error');
    }?>
    <!-- fin cuadro mensaje  -->
    </div>
    
    <div class="col-md-6 col-xs-12">            
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3>Si ya estas registrado</h3>
          </div>
          <div class="panel-body">
          <!-- inicio de formulario -->
            <form method="post" action="<?php echo base_url('index.php/formador_inscripcion_previo/autenticar'); ?>" style="padding:10px;" class="">	
            	<div class="row">
            		<div class="col-xs-12">
            			<label>Usuario</label>
                        <?php echo form_error('usuario', '<span class="error-form">', '</span><br/>'); ?>
            			<input type="text" name="usuario" id="usuario" value="<?php echo set_value('usuario');?>" class="form-control" required="" placeholder="Ingrese su correo electrónico" />
            		</div>
            	</div>
            	<div class="row">
            		<div class="col-xs-12">
            			<label>Contraseña</label>
                        <?php echo form_error('password_sesion', '<span class="error-form">', '</span><br/>'); ?>
            			<input type="password" name="password_sesion" id="password_sesion" value="<?php echo set_value('password_sesion');?>" required="" class="form-control" placeholder="Contraseña" />
            		</div>
            	</div>
            	<br/>
                <input type="hidden" name="autenticar" id="autenticar" value="<?php echo AUTENTICAR;?>" />
            	<div class="row">
            		<div class="col-xs-12">
            			<button class="btn btn-md btn-primary">Iniciar sesión</button>
            			<a style="float:right;text-decoration: none;" href="">¿Has olvidado tu contraseña?</a>
            		</div>
            	</div>
            </form>           
          <!-- fin de formulario -->  
          </div>
        </div>    
    </div>
    
    <div class="col-md-6 col-xs-12">
        <div class="panel panel-inicio-sesion">
          <div class="panel-heading">
            <h3>Si no te encuentras registrado</h3>
          </div>
          <div class="panel-body">
          <!-- inicio del formulario -->
            <form method="post" action="<?php echo base_url('index.php/formador_inscripcion_previo/guardar'); ?>" style="padding:10px;" class="">
            	<div class="row">
            		<div class="col-xs-12">
            			<label>Nombres</label>
                        <?php echo form_error('nombres', '<span class="error-form">', '</span><br/>'); ?>
            			<input type="text" name="nombres" id="nombres" value="<?php echo set_value('nombres');?>" class="form-control" required="" placeholder="Ingrese su(s) nombre(s)"/>
            		</div>
            	</div>
            	<div class="row">
            		<div class="col-xs-6">
            			<label>Apellido paterno</label>
                        <?php echo form_error('apellido_paterno', '<span class="error-form">', '</span><br/>'); ?>
            			<input type="text" name="apellido_paterno" id="apellido_paterno" value="<?php echo set_value('apellido_paterno');?>" class="form-control" required="" placeholder="Ingrese su apellido paterno"/>
            		</div>
            		<div class="col-xs-6">
            			<label>Apellido materno</label>
                        <?php echo form_error('apellido_materno', '<span class="error-form">', '</span><br/>'); ?>
            			<input type="text" name="apellido_materno" id="apellido_materno" value="<?php echo set_value('apellido_materno');?>" class="form-control" required="" placeholder="Ingrese su apellido materno"/>
            		</div>
            	</div>
            	<div class="row">
            		<div class="col-xs-12">
            			<label>Número de documento de identidad</label>
                        <?php echo form_error('ci', '<span class="error-form">', '</span><br/>'); ?>
            			<input type="text" name="ci" id="ci" class="form-control" value="<?php echo set_value('ci');?>" required="" placeholder="Ingrese su número de documento de identidad"/>
            		</div>
            	</div>
            	<div class="row">
            		<div class="col-xs-12">
            			<label>Correo electrónico (Se usara como usuario para iniciar sesión posteriormente)</label>
                        <?php echo form_error('email', '<span class="error-form">', '</span><br/>'); ?>
            			<input type="email" name="email" id="email" value="<?php echo set_value('email');?>" class="form-control" required="" placeholder="Ingrese su correo electrónico"/>
            		</div>
            	</div>
            	<div class="row">
            		<div class="col-xs-6">
            			<label>Contraseña</label>
            			<input type="password" name="password" id="password" class="form-control" required="" placeholder="Ingrese su contraseña"/>
            		</div>
            		<div class="col-xs-6">
            			<label>Confirmar contraseña</label>
            			<input type="password" name="password_confirmacion" id="password_confirmacion" class="form-control" required="" placeholder="Ingrese nuevamente su contraseña"/>
            		</div>
            	</div>
            	<br/>
                <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO; ?>" /> 
            	<div class="row">
            		<div class="col-xs-12">
            			<button class="btn btn-md btn-primary">Registrarme</button>
            		</div>
            	</div>
            </form>            
          <!-- fin del formulario -->  
          </div>
        </div>             
    </div>
</div>
</div>

</main>
<!-- fin contenido -->

<!-- inicio pie -->
<?php 
if(isset($mod_pie) AND !empty($mod_pie))
{
?>
<div class="col-xs-12" style="padding-right: 0px !important; padding-left: 0px !important; background-image: url('<?php echo base_url('assets/img/banner.png'); ?>');background-size: cover;">
<div>
<footer class="app-footer">
<?php echo $mod_pie->contenido; ?>
</footer>
</div>
</div>
<?php    
}
?>  
<!-- fin pie -->

<!-- inicio scripts -->
<script src="<?php echo base_url('assets/plugins/jQuery/jquery-2.2.3.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/frontend.js')?>"></script>
<!-- fin scripts -->
</body>
</html>