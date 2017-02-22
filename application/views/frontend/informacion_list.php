<?php $this->load->view('frontend/template/header'); ?>
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

    <!-- Start All Noticias -->
    <div class="container container-caboco">
      <?php if(isset($noticias)){ ?>
      <div class="row">
        <?php
          foreach ($noticias as $noticia):
          $noticia = (object) $noticia;   
        ?>
        <div class="col-xs-12 col-sm-<?php echo 12/$columnas?> noticia-container">
          <div class="noticia-border">
            <div class="nombre-seccion">
              <h6>
              <?php if($noticia->tipo_contenido=='texto'){
                  echo 'NOTICIA';
                }else if($noticia->tipo_contenido=='video'){
                  echo 'VIDEO';
                }else if($noticia->tipo_contenido=='audio'){
                  echo 'AUDIO';                  
                }
              ?>
              </h6>
            </div>
            <?php
              if(!empty($noticia->imagen)){
                if(!is_youtube($noticia->imagen)){
                  $img = base_url('assets/img/noticias/'.$noticia->imagen);
                }else{
                  $img = $noticia->imagen;
                }
              }
              else{
                $img = base_url('assets/img/noticias/default.png');
              }
            ?>
            <div class="noticia-imagen">
              <img src="<?php echo $img; ?>" class="img-responsive" alt="" style="margin: 0 auto; max-height: 200px;">
            </div>
            <div class="noticia-content-title noticia-border">
              <div class="meta-left">
                <h6 class="noticia-titulo">
                  <a href="<?php echo base_url()."index.php/noticias_detalle/".$noticia->id;?>"><?php echo $noticia->titulo; ?></a>
                  <br/>
                  <span class="fecha"><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo date("d-m-Y", strtotime($noticia->creado)); ?></span>
                </h6>
              </div>
              <?php if($noticia->tipo_contenido=='texto'){
                  $icon="fa fa-newspaper-o fa-2x";
                }else if($noticia->tipo_contenido=='video'){
                  $icon="fa fa-play-circle fa-2x";
                }else if($noticia->tipo_contenido=='audio'){
                  $icon="fa fa-volume-up fa-2x";                  
                }
              ?>
              <div class="meta-right"><span class="<?php echo $icon; ?>" aria-hidden="true"></span></div>
              <div style="clear: both;"></div>
            </div>
            <div class="noticia-body">
              <div class="noticia-resumen-cuadro">
                <?php echo get_palabras($noticia->resumen,22); ?>
              </div>
              <br/><br/>
              <p>
                <a class="btn btn-warning" href="<?php echo base_url()."index.php/noticias_detalle/".$noticia->id;?>">Ver más</a>
                <?php if($noticia->tipo_contenido=='video'){ ?>
                <?php $id_video = substr($noticia->url_video,strpos($noticia->url_video,'?v=')+3); ?>
                  <button type="button" id="<?php echo $id_video; ?>" class="btn btn-primary btn-video" data-toggle="modal" data-target=".modal-video-<?php echo $id_video; ?>">Ver video</button>
                  <div class="modal fade modal-video-<?php echo $id_video; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close btn-close-modal-video" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title" id="myModalLabel"><?php echo $noticia->titulo; ?></h4>
                        </div>
                        <div class="modal-body">
                          <div style="margin: 0 auto;">                            
                            <iframe class="playerid<?php echo $id_video; ?>" width="560" height="315" src="https://www.youtube.com/embed/<?php echo $id_video; ?>?rel=0" frameborder="0" allowfullscreen></iframe>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default btn-close-modal-video" data-dismiss="modal">Cerrar</button>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php }else if($noticia->tipo_contenido=='audio'){ ?>
                  <button type="button" id="btn-audio-<?php echo $noticia->id; ?>" class="btn btn-info btn-audio" data-toggle="modal" data-target=".modal-audio-<?php echo $noticia->id; ?>">Escuchar audio</button>
                  <div class="modal fade modal-audio-<?php echo $noticia->id; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close btn-close-modal-audio" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title" id="myModalLabel"><?php echo $noticia->titulo; ?></h4>
                        </div>
                        <div class="modal-body audio">
                          <div style="margin: 0 auto;">                            
                            <?php echo $noticia->url_audio; ?>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default btn-close-modal-audio" data-dismiss="modal">Cerrar</button>
                        </div>
                      </div>
                    </div>
                  </div>
                <?php } ?>
              </p>
            </div>
          </div>
        </div>
        <?php
          endforeach;
        ?>
        <!-- Start Paginador -->
        <div class="pagination_container" style="text-align: center; clear: both;">
          <p>P&aacute;gina  <?php echo $pagina_actual; ?> de <?php echo $pagina_total; ?></p>
          <p><?php echo $this->pagination->create_links(); ?></p>
        </div>
        <!-- End Paginador -->
      </div>
      <?php }else{ ?>
        <h3>No se tiene contenido para mostrar...</h3>
        <div style="height: 200px;"></div>
      <?php } ?>
    </div>
   
    <!-- End All Noticias -->

<?php $this->load->view('frontend/template/footer'); ?>
<script>
$(document).ready(function(){
  var video,id_video;
  $('.btn-video').click(function(){
    id_video=$(this).attr('id');
    video = $(".playerid"+id_video).attr("src");
    $(".playerid"+id_video).attr("src","");
    $(".playerid"+id_video).attr("src",video+"&autoplay=1");
  });
  $('.btn-close-modal-video').click(function(){
    $(".playerid"+id_video).attr("src","");
    $(".playerid"+id_video).attr("src",video);
  });
  $('.btn-close-modal-audio').click(function(){
    var widget1= SC.Widget(document.querySelector('.audio iframe'));
    widget1.pause();
  });
});
</script>