<?php $this->load->view('frontend/template/header'); ?>
<style type="text/css">
  .container-encuesta .alert{
    font-size: 16px;
  }
</style>

<!-- Start Page Banner -->
<div class="page-banner no-subtitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h2>Encuesta de satisfacción</h2>
      </div>
    </div>
  </div>
</div>
<!-- End Page Banner -->

<!-- Start Formulario Solicitud -->
<div class="container container-caboco container-encuesta">
  <div class="alert alert-success" role="alert">
    <span class="glyphicon glyphicon-ok"></span> Usted ha llenado correctamente el formulario de encuesta. Los datos fueron procesados y almacenados exitosamente. Gracias por su tiempo.
  </div>
  <div style="text-align: center;">
    <a href="<?php echo base_url(); ?>" class="btn btn-primary">Ir al inicio de la pagina</a>
  </div>
  <br>
</div>
<!-- End Formulario Solicitud -->

<?php $this->load->view('frontend/template/footer'); ?>