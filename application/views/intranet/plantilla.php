<!DOCTYPE html>
<html lang="es">
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
    <link href="<?php echo base_url('assets/css/skins/_all-skins.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/intranet.css')?>" rel="stylesheet"/>
</head>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

<!-- inicio de la cabecera -->
<?php
    $this->load->view('intranet/comunes/cabecera');
?>  
<!-- fin de la cebecera -->

  <div class="content-wrapper">
    <div class="container">

      <section class="content-header">
        <h1>
          Top Navigation
          <small>Example 2.0</small>
        </h1>

      </section>

      <section class="content">

            <div class="box-body no-padding">

                <div class="col-xs-3"> <!-- required for floating -->
                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs tabs-left">
                    <li class="active"><a href="#home" data-toggle="tab">Recursos</a></li>
                    <li><a href="#profile" data-toggle="tab">Profile</a></li>
                    <li><a href="#messages" data-toggle="tab">Messages</a></li>
                  </ul>
                </div>
        
                <div class="col-xs-9">
                  <!-- Tab panes -->
                  <div class="tab-content">
                    <div class="tab-pane active" id="home">Home Tab.</div>
                    <div class="tab-pane" id="profile">Profile Tab.</div>
                    <div class="tab-pane" id="messages">Messages Tab.</div>
                  </div>
                </div>
           </div>
           
           
      </section>

    </div>

  </div>

<!-- inicio del pie -->
<?php
    $this->load->view('intranet/comunes/pie');
?> 
<!-- fin del pie -->
  
</div>
<script src="<?php echo base_url('assets/plugins/jQuery/jquery-2.2.3.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/plugins/fastclick/fastclick.js')?>"></script>
<script src="<?php echo base_url('assets/js/app.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/demo.js')?>"></script>
<script src="<?php echo base_url('assets/js/backend.js')?>"></script>
</body>
</html>
