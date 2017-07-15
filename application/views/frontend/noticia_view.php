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


    <!-- Start plugin facebook comment -->
      <div id="fb-root"></div>
      <script>(function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/es_ES/all.js#xfbml=1&appId=114215202075258";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    </script>
    <!-- End plugin facebook comment-->

    <!-- Start Page Banner -->
    <div class="page-banner no-subtitle">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2><?php echo $titulo; ?></h2>
          </div>
        </div>
      </div>
    </div>
    <!-- End Page Banner -->

    <!-- Start Contenido -->
    <div class="container container-caboco">
      <div class="row">

        <div class="col-md-offset-3 col-md-6 col-md-offset-3">
          <h1><?php echo $noticia->titulo; ?></h1>
          <!--a href="http://www.facebook.com/sharer.php?s=100&p[url]=<?php echo base_url(); ?>?s=100&p[title]=<?php echo $noticia->titulo; ?>&p[images][0]=<?php echo base_url('assets/img/noticias/'.$noticia->imagen);?>&p[summary]=<?php echo $noticia->titulo; ?>">hola</a-->
          <br/>
          <div class="fb-like" data-href="http://www.maestrasconstructoras.org/" data-layout="standard" data-action="like" data-show-faces="true"></div>
          <br/>
          <br/>
          <div class="noticia-resumen">
            <?php echo $noticia->resumen; ?>
          </div>
          <br/>
          <div style="border-top: 1px dashed #444444; border-bottom: 1px dashed #444444;">
            <p><span class="glyphicon glyphicon-calendar"></span> <?php echo $noticia->creado; ?> | <?php echo $noticia->fuente; ?></p>
            <?php if($noticia->url!=''){ ?>
            <p><span class="glyphicon glyphicon-link"></span><a href="<?php echo $noticia->url; ?>" style="color: #666;"> <?php echo $noticia->url; ?></a></p>  
            <?php } ?>
          </div>
          <br/>
          <?php if($noticia->tipo_contenido=='texto'){ 
              if(!empty($noticia->imagen)){
                $img = base_url('assets/img/noticias/'.$noticia->imagen);
              }else{
                $img = base_url('assets/img/noticias/default.png');
              }
          ?>
            <img src="<?php echo $img; ?>" class="img-responsive" alt="Responsive image" style="margin: 0 auto;">
          <?php }elseif($noticia->tipo_contenido=='video'){ ?>
            <div style="margin: 0 auto;">
              <iframe width="560" height="315" src="https://www.youtube.com/embed/<?php echo substr($noticia->url_video,strpos($noticia->url_video,'?v=')+3); ?>?rel=0" frameborder="0" allowfullscreen></iframe>
            </div>
          <?php }elseif($noticia->tipo_contenido=='pdf'){ ?>
            <div style="text-align: center;">                            
              <iframe src="<?php echo base_url('assets/pdf/'.$noticia->doc_pdf); ?>" style="width:100%; height:500px;" frameborder="0"></iframe>
            </div>
          <?php } ?>

          <div class="content-noticia" style="text-align: justify; margin-top: 10px; font-size: 16px;" >
              <?php echo $noticia->contenido; ?>
          </div>
          <hr>
          <div class="fb-comments" data-href="http://www.maestrasconstructoras.org" data-numposts="5" data-width="100%"></div>
        </div>
      </div>
    </div>
    <!-- End Contenido -->


<!-- Start Auspiciantes Section -->
<?php if(isset($mod_empresas) AND !empty($mod_empresas)){ ?>
<hr/>
<div class="content-auspiciantes">
  <!-- Start Big Heading -->
  <div class="big-title text-center">
    <h1>Empresas que promueven la <strong>equidad de género en el sector</strong></h1>
  </div>
  <!-- End Big Heading -->
  <section class="auspiciantes slider" style="margin: 60px auto;">
    <?php echo $mod_empresas->contenido; ?>
  </section>
</div>
<?php } ?>
<!-- End Auspiciantes Section -->

<!-- Start Footer -->
<?php if(isset($mod_pie) AND !empty($mod_pie)){ ?>
  <footer class="app-footer">
  <div style="background: rgba(0,53,128,0.7); padding: 5px 15px; padding-top: 15px;">
    <?php echo $mod_pie->contenido; ?>
  </div>
  </footer>
<?php } ?>  
<!-- End Footer -->
      
    </div>
    <!-- End Container -->

    <!-- Go To Top Link -->
    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

    <!-- Begin: Load Gif -->
    <!--
    <div id="loader">
      <div class="spinner">
        <div class="dot1"></div>
        <div class="dot2"></div>
      </div>
    </div>
    -->
    <div id="loader">
      <div style="position: absolute; top:50%; left:50%; width:400px; margin-left:-200px; height:140px; margin-top:-70px; padding:5px;">
        <img src="<?php echo base_url(); ?>assets/img/load_caboco.gif" class="img-responsive" style="margin: 0 auto; width: 100px;"/>
        <img src="<?php echo base_url(); ?>assets/img/load_image.gif" class="img-responsive" style="margin: 0 auto;"/>
      </div>
    </div>
    <!-- End: Load Gif -->

  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/script.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/calendar-es.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/plugins/slick/slick.js" charset="utf-8"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/script.caboco.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/plugins/soundcloud/api.js"></script>
  <script>
        $(".fb-comments").attr("data-href", window.location.href);
        $(".fb-like").attr("data-href", window.location.href);
  </script>
</body>
</html>