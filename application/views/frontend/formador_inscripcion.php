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
    <link href="<?php echo base_url('assets/css/forms.css')?>" rel="stylesheet"/>  
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

    <div class="alert alert-warning alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4>Error</h4> 
      <p><?php echo $error; ?></p>
    </div>
                          
    <?php
    $this->session->unset_userdata('error');
    }?>
    <!-- fin cuadro mensaje  -->
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
<script src="<?php echo base_url('assets/js/inscripciones.js')?>"></script>
<script src="<?php echo base_url('assets/plugins/jQuery-Smart-Wizard/js/jquery.smartWizard.js')?>"></script>
<script src="<?php echo base_url('assets/js/wizardstepempresa.js')?>"></script>
    <script>
      /*$(document).ready(function() {
        $('#wizard').smartWizard();

        $('#wizard_verticle').smartWizard({
          transitionEffect: 'slide'
        });

        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('btn btn-primary');
        $('.buttonFinish').addClass('btn btn-default');
      });*/
    </script>
<!-- fin scripts -->
</body>
</html>