<!-- 
  REVISAR PARA INGRESAR COMENTARIOS EN VARIAS PAGINAS
    https://forums.digitalpoint.com/threads/facebook-comment-box-same-on-all-pages.2200545/
-->
<?php $this->load->view('frontend/template/header'); ?>
<!-- Start plugin facebook comment -->
  <div id="fb-root"></div>
  <script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v2.8";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));</script>
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
    <div class="col-md-10">
      <h1><?php echo $noticia->titulo; ?></h1>
      <br/>
      <div class="fb-like" data-href="http://www.maestrasconstructoras.org/" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
      <br/>
      <br/>
      <div class="noticia-resumen">
        <?php echo $noticia->resumen; ?>
      </div>
      <br/>
      <div style="border-top: 1px dashed #444444; border-bottom: 1px dashed #444444;">
          <p><span class="glyphicon glyphicon-calendar"></span> <?php echo $noticia->creado; ?> | <?php echo $noticia->fuente; ?></p>
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
      <?php } ?>

      <div class="content-noticia" style="text-align: justify; margin-top: 10px; font-size: 16px;" >
          <?php // echo $noticia->contenido; ?>
          <div class="row">
            <?php if(strlen($noticia->contenido)>200){ ?>
              <div class="col-xs-12 col-md-6">
                <p><?php echo get_columnas_contenido($noticia->contenido,1) ?></p>
              </div>
              <div class="col-xs-12 col-md-6">
                <p><?php echo get_columnas_contenido($noticia->contenido,2) ?></p>
              </div>
            <?php }else{ ?>
              <div class="col-md-12">
                <p><?php echo $noticia->contenido; ?></p>
              </div>
            <?php } ?>
          </div>
      </div>
      <hr>
      <div class="fb-comments" data-href="http://www.maestrasconstructoras.org" data-numposts="5" data-width="100%"></div>
    </div>
  </div>
</div>
<!-- End Contenido -->
<?php $this->load->view('frontend/template/footer'); ?>