<!-- Start Home Page Slider -->
<?php if(count($slides)>0) { ?>
<section id="home">
  <!-- Carousel -->
  <div id="main-slide" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <?php if(count($slides)>1){ ?>
      <ol class="carousel-indicators">
      <?php
        for($i=0;$i<count($slides);$i++){
          if($i == 0)
            $class_active = 'active';
          else
            $class_active = '';      
          ?>
          <li data-target="#main-slide" data-slide-to="<?php echo $i;?>" class="<?php echo $class_active;?>"></li>
          <?php } ?>
        </ol>
        <?php } ?>
        <!--/ Indicators end-->

        <!-- Carousel inner -->
    <div class="carousel-inner">
      <?php
        $sw=1;
        foreach ($slides as $slide):
          $slide = (object) $slide;
      ?> 
      <div class="item <?php echo $sw==1?'active':''; $sw=0; ?>">
        <img class="img-responsive" src="<?php echo base_url('assets/img/slides/'.$slide->imagen); ?>" alt="<?php echo $slide->imagen; ?>">
        <div class="slider-content">
          <div class="col-md-12 text-center">
          
          <div style="padding-top: 30px; padding-bottom: 20px; background: rgba(247, 196, 45, .8); ">
          
          <!--
          <div style="padding-top: 30px; padding-bottom: 20px; background: rgba(255, 255, 255, .8); ">
          -->  
            <?php echo $slide->contenido;?>
            <!--
                <h2 class="animated2">
                              <span>Welcome to <strong>Margo</strong></span>
                              </h2>
                <h3 class="animated3">
                                <span>The ultimate aim of your business</span>
                              </h3>
              <p class="animated4"><a href="#" class="slider btn btn-system btn-large">Check Now</a>
              </p>
            -->
          </div>
          </div>
        </div>
      </div>
      <?php endforeach; ?>
    </div>
    <!-- Carousel inner end-->

    <!-- Controls -->
    <?php if(count($slides)>1){ ?>
    <a class="left carousel-control" href="#main-slide" data-slide="prev">
      <span><i class="fa fa-angle-left"></i></span>
    </a>
    <a class="right carousel-control" href="#main-slide" data-slide="next">
      <span><i class="fa fa-angle-right"></i></span>
    </a>
    <?php } ?>
  </div>
  <!-- /carousel -->
</section>
<?php } ?>
<!-- End Home Page Slider -->