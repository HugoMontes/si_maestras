<!doctype html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><html lang="en" class="no-js"> <![endif]-->
<html lang="en">

<head>

  <!-- Basic -->
  <title><?php echo $titulo; ?></title>

  <!-- Define Charset -->
  <meta charset="utf-8">

  <!-- Responsive Metatag -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <!-- Page Description and Author -->
  <?php if(isset($metadescripcion)){ ?>
  <meta name="description" content="<?php echo $metadescripcion; ?>">
  <?php } ?>
  <?php if(isset($metapalabras_clave)){ ?>
  <meta name="keywords" content="<?php echo $metapalabras_clave; ?>">
  <?php } ?>
  <meta name="author" content="Formaempresas">

  <!-- Favicon  -->
  <link rel="icon" href="<?php echo base_url(); ?>assets/frontend_caboco/favicon.png" type="image/png"/>
  <link rel="icon" href="<?php echo base_url(); ?>assets/frontend_caboco/favicon.ico" type="image/x-icon"/>
    
  <!-- Bootstrap CSS  -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend_caboco/asset/css/bootstrap.min.css" type="text/css" media="screen">

  <!-- Font Awesome CSS -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend_caboco/css/font-awesome.min.css" type="text/css" media="screen">
  
  <!-- Slicknav -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/frontend_caboco/css/slicknav.css" media="screen">

  <!-- Margo CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/frontend_caboco/css/style.css" media="screen">

  <!-- Responsive CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/frontend_caboco/css/responsive.css" media="screen">

  <!-- Css3 Transitions Styles  -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/frontend_caboco/css/animate.css" media="screen">

  <!-- Color CSS Styles  -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/frontend_caboco/css/colors/red.css" title="red" media="screen" />

  <!-- Estilo Personalizado CABOCO  -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/frontend_caboco/css/style.caboco.css"/>

  <!-- Estilos JQUERY-UI -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/frontend_caboco/asset/jquery_ui/jquery-ui.min.css">

  <!-- Estilos Carrousel Slick -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/plugins/slick/slick.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/plugins/slick/slick-theme.css">

  <!-- Estilos Validate -->
  <!-- <link rel="stylesheet" href="asset/validate/css/screen.css"> -->

  <!-- Margo JS  -->
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/jquery-2.1.4.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/jquery.migrate.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/modernizrr.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/asset/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/jquery.fitvids.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/nivo-lightbox.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/jquery.textillate.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/jquery.lettering.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/jquery.slicknav.js"></script>
  
  <!-- JQUERY-UI -->
  <script src="<?php echo base_url(); ?>assets/frontend_caboco/asset/jquery_ui/jquery-ui.min.js"></script>

  <!-- Validate JS -->
  <!-- <script src="asset/validate/jquery.validate.min.js"></script> -->

  <!--[if IE 8]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  <!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  <style type="text/css">

  </style>
</head>

<body>

  <!-- Full Body Container -->
  <div id="container">


    <!-- Start Header Section -->
    <div class="hidden-header"></div>
    <header class="clearfix">
      <!-- Start  Logo & Naviagtion  -->
      <?php $this->load->view('frontend/comunes/menu',array('menus'=>$menus,'navbar_transparente'=>TRUE)); ?>
      <!-- End Header Logo & Naviagtion -->
    </header>
    <!-- End Header Section -->