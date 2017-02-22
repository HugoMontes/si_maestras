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
</body>
</html>