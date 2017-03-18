<?php $this->load->view('frontend/template/header'); ?>
<?php // $this->load->view('frontend/template/header_form'); ?>
<?php // $this->load->view('frontend/template/slider'); ?>
<div style="width: 100%; height: 5px; background-color: #125192"></div>
<?php $this->load->view('frontend/template/main_form'); ?>


  <!-- Start Escuelas de Formacion -->
  <div class="content-auspiciantes">
    <section class="auspiciantes slider">
      <?php echo $mod_escuelas->contenido; ?>
    </section>
  </div>
  <!-- End Escuelas de Formacion -->

  <!-- Start Auspiciadores -->
  <div class="list_carousel responsive">
      <?php echo $mod_auspiciantes->contenido; ?>
  </div>
  <!-- End Auspiciadores -->

  <!-- Start Portfolio Section -->
  <div class="section full-width-portfolio" style="border-top:0; border-bottom:0; background:#fff; padding-top: 0px;">

    <!-- Start Big Heading -->
    <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
      <h1>Noticias <strong>Generales</strong></h1>
    </div>
    <!-- End Big Heading -->

    <!-- Start Recent Noticias Generales -->
    <div class="container">
      <div class="row">
        <?php
          foreach ($noticias_generales as $noticia):
          $noticia = (object) $noticia;   
        ?>
        <div class="col-xs-12 col-sm-6 col-md-4 noticia-container">
          <div class="noticia-border">
            <div class="nombre-seccion">
              <h6><?php echo $noticia->rotulo; ?></h6>
            </div>
            <?php
              if(!empty($noticia->imagen)){
                if(!is_youtube($noticia->imagen)){
                  $img = base_url('assets/img/noticias/'.$noticia->imagen);
                }else{
                  $img = $noticia->imagen;
                }
              }else{
                $img = base_url('assets/img/noticias/default.png');
              }
            ?>
            <div class="noticia-imagen">
              <img src="<?php echo $img; ?>" class="img-responsive" alt="">
            </div>
            <div class="noticia-content-title noticia-border">
              <div class="meta-left">
                <h6 class="noticia-titulo">
                  <a href="<?php echo base_url()."index.php/noticias_detalle/".$noticia->id;?>"><?php echo $noticia->titulo; ?></a>
                  <br/>
                  <span class="fecha"><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo date("d-m-Y", strtotime($noticia->creado)); ?></span>
                </h6>
              </div>
              <?php 
                if($noticia->tipo_contenido=='video'){
                  $icon="fa fa-play-circle fa-2x";
                }else if($noticia->tipo_contenido=='audio'){
                  $icon="fa fa-volume-up fa-2x";                  
                }else if($noticia->tipo_contenido=='pdf'){
                  $icon="fa fa-file-pdf-o fa-2x";                  
                }else{
                  $icon="fa fa-newspaper-o fa-2x";
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
                <a class="btn btn-warning btn-mas" href="<?php echo base_url()."index.php/noticias_detalle/".$noticia->id;?>">Ver más</a>
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
                <?php }else if($noticia->tipo_contenido=='pdf'){ ?>
                  <button type="button" id="btn-pdf-<?php echo $noticia->id; ?>" class="btn btn-danger btn-pdf" data-toggle="modal" data-target=".modal-pdf-<?php echo $noticia->id; ?>">Ver pdf</button>
                  <div class="modal fade modal-pdf-<?php echo $noticia->id; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close btn-close-modal-pdf" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title" id="myModalLabel"><?php echo $noticia->titulo; ?></h4>
                        </div>
                        <div class="modal-body pdf">
                          <div style="text-align: center;">                            
                            <iframe src="<?php echo base_url('assets/pdf/'.$noticia->doc_pdf); ?>" style="width:100%; height:500px;" frameborder="0"></iframe>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default btn-close-modal-pdf" data-dismiss="modal">Cerrar</button>
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
      </div>
    </div>
    <!-- End Recent Noticias Generales -->

    <!-- Start Big Heading -->
    <div class="big-title text-center" data-animation="fadeInDown" data-animation-delay="01">
      <h1>Noticias sobre <strong>Capacitación</strong></h1>
    </div>
    <!-- End Big Heading -->

    <!-- Start Recent Noticias Capacitacion -->
    <div class="container">
      <div class="row">
        <?php
          foreach ($noticias_capacitacion as $noticia):
          $noticia = (object) $noticia;   
        ?>
        <div class="col-xs-12 col-sm-6 col-md-4 noticia-container">
          <div class="noticia-border">
            <div class="nombre-seccion">
              <h6><?php echo $noticia->rotulo; ?></h6>
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
              <img src="<?php echo $img; ?>" class="img-responsive" alt="">
            </div>
            <div class="noticia-content-title noticia-border">
              <div class="meta-left">
                <h6 class="noticia-titulo">
                  <a href="<?php echo base_url()."index.php/noticias_detalle/".$noticia->id;?>"><?php echo $noticia->titulo; ?></a>
                  <br/>
                  <span class="fecha"><i class="fa fa-calendar" aria-hidden="true"></i> <?php echo date("d-m-Y", strtotime($noticia->creado)); ?></span>
                </h6>
              </div>
              <?php 
                if($noticia->tipo_contenido=='video'){
                  $icon="fa fa-play-circle fa-2x";
                }else if($noticia->tipo_contenido=='audio'){
                  $icon="fa fa-volume-up fa-2x";                  
                }else if($noticia->tipo_contenido=='pdf'){
                  $icon="fa fa-file-pdf-o fa-2x";                  
                }else{
                  $icon="fa fa-newspaper-o fa-2x";
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
                <a class="btn btn-warning btn-mas" href="<?php echo base_url()."index.php/noticias_detalle/".$noticia->id;?>">Ver más</a>
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
                <?php }else if($noticia->tipo_contenido=='pdf'){ ?>
                  <button type="button" id="btn-pdf-<?php echo $noticia->id; ?>" class="btn btn-danger btn-pdf" data-toggle="modal" data-target=".modal-pdf-<?php echo $noticia->id; ?>">Ver pdf</button>
                  <div class="modal fade modal-pdf-<?php echo $noticia->id; ?>" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close btn-close-modal-pdf" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                          <h4 class="modal-title" id="myModalLabel"><?php echo $noticia->titulo; ?></h4>
                        </div>
                        <div class="modal-body pdf">
                          <div style="text-align: center;">                            
                            <iframe src="<?php echo base_url('assets/pdf/'.$noticia->doc_pdf); ?>" style="width:100%; height:500px;" frameborder="0"></iframe>
                          </div>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default btn-close-modal-pdf" data-dismiss="modal">Cerrar</button>
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
      </div>
    </div>
    <!-- End Recent Noticias Capacitacion -->

  </div>
  <!-- End Portfolio Section -->

  <!-- Start Testimonials Section -->
  <!-- End Testimonials Section -->


  <!-- Start Team Member Section -->
  <!-- End Team Member Section -->

  <!-- Start Client/Partner Section -->
  <!-- End Client/Partner Section -->
<?php $this->load->view('frontend/template/footer'); ?>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>

<script>
$(function(){
  //  Basic carousel + timer, using CSS-transitions
  $('#foo0').carouFredSel({
    responsive: true,
    width: '100%',
    auto: {
      duration: 30000,
      easing: "linear",
      timeoutDuration: 0,
      pauseOnHover: "immediate"
    },
    items: {
      /*width: 400,*/
      // height: '30%',  //  optionally resize item-height
      height: 85,
      visible: {
        min: 2,
        max: 7
      }
    }
  });
});

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