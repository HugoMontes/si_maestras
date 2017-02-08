<!-- Start Auspiciantes Section -->
<?php if(isset($mod_auspiciadores) AND !empty($mod_auspiciadores)){ ?>
<hr/>
<div class="content-auspiciantes">
  <!-- Start Big Heading -->
  <div class="big-title text-center">
    <h1>Empresas que promueven la <strong>equidad de género en el sector</strong></h1>
  </div>
  <!-- End Big Heading -->
  <section class="auspiciantes slider" style="margin: 60px auto;">
    <?php echo $mod_auspiciadores->contenido; ?>
  </section>
</div>
<?php } ?>
<!-- End Auspiciantes Section -->

<!-- Start Footer -->
<?php if(isset($mod_pie) AND !empty($mod_pie)){ ?>
  <footer class="app-footer">
    <?php echo $mod_pie->contenido; ?>
  </footer>
<?php } ?>  
<!-- End Footer -->
      
    </div>
    <!-- End Container -->

    <!-- Go To Top Link -->
    <a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

    <div id="loader">
      <div class="spinner">
      <div class="dot1"></div>
      <div class="dot2"></div>
      </div>
    </div>

  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/script.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/calendar-es.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/plugins/slick/slick.js" charset="utf-8"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/frontend_caboco/js/script.caboco.js"></script>
  <script type="text/javascript" src="<?php echo base_url(); ?>assets/plugins/soundcloud/api.js"></script>
</body>
</html>