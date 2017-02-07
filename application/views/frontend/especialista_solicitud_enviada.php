<?php $this->load->view('frontend/template/header'); ?>
  <!-- Start Page Banner -->
  <div class="page-banner no-subtitle">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h2>Solicitud enviada</h2>
        </div>
      </div>
    </div>
  </div>
  <!-- End Page Banner -->
  
  <!-- Start Contenido Mensaje -->
  <div class="container container-caboco" style="height: 400px;">
    <div class="alert alert-success" role="alert" style="font-size: 16px;">
      <strong class="glyphicon glyphicon-ok"></strong> La solicitud fue procesada y se ha enviado un enlace de la consulta requerida a su correo electronico, porfavor revise su bandeja de entrada y correo no deseado.
      </div>
  </div>
  <!-- End Contenido Mensaje -->
<?php $this->load->view('frontend/template/footer'); ?>