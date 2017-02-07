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


<!-- inicio contenido-->
<main>
  <div class="container contenido">
    <?php echo $pagina->contenido; ?>
  </div>
</main>
<!-- fin contenido -->

<?php $this->load->view('frontend/template/footer'); ?>