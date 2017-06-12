<?php $this->load->view('frontend/template/header'); ?>
<style type="text/css">
  .container-encuesta label{
    color: black;
  }
  .container-encuesta .respuesta{
    margin-left: 20px;
  }
  .container-encuesta .form-group{
    padding: 20px 20px;
    background-color: #f9d791;
  }
  .container-encuesta .pregunta{
    font-weight: bold;
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
  <form action="<?php echo base_url('index.php/formulario/satisfaccion/guardar'); ?>" method="post">
    <div class="form-group">
      <label for="p1" class="control-label pregunta">1 - Número de trabajadoras contratadas:</label>
      <div class="row">
        <div class="col-md-4 respuesta">
          <select id="p1" name="p1" class="form-control">
            <?php for($i=1;$i<=50;$i++){ ?>
              <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
            <?php } ?>
          </select>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="p2" class="control-label pregunta">2 - Centro de formación de la trabajadora:</label>
      <div class="row">
        <div class="col-md-4 respuesta">
          <select id="p2" name="p2" class="form-control">
            <?php 
            foreach ($centros as $centro) { 
              $centro=(Object) $centro;
            ?>
              <option value="<?php echo $centro->id; ?>"><?php echo $centro->descripcion; ?></option>  
            <?php } ?>
          </select>
          </div>
      </div>
    </div>
    <div class="form-group">
      <label for="p3" class="control-label pregunta">3 - Usted llegó a concretar una contratación con alguna de las maestras constructoras que forman parte de la base de datos de la Plataforma  Web MaestrasConstructoras.org?</label>
      <div class="respuesta">
        <div class="radio">
          <label>
            <input type="radio" name="p3" id="p31" value="1">
            Si
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="p3" id="p32" value="2">
            No
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="p4" class="control-label pregunta">4 - Si la respuesta fue NO ¿cuál fue la razón? Se puede marcar más de una opción</label>
      <div class="respuesta">
        <?php foreach ($opciones_p4 as $opcion) { ?>
          <div class="checkbox">
            <label>
              <input type="checkbox" value="<?php echo $opcion->id; ?>" name="p4[]">
              <?php echo $opcion->enunciado; ?>
            </label>
          </div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group">
      <label for="p5" class="control-label pregunta">5 - Si la respuesta fue SI favor indicar su conformidad con el servicio que brindó/brindaron la(s) trabajadora(s)</label>
      <div class="respuesta">
        <?php foreach ($opciones_p5 as $opcion) { ?>
          <div class="radio">
            <label>
              <input type="radio" name="p5" value="<?php echo $opcion->id; ?>">
              <?php echo $opcion->enunciado; ?>
            </label>
          </div>
        <?php } ?>
      </div>
    </div>
    <div class="form-group">
      <label for="p6" class="control-label pregunta">6 - ¿Qué aspectos del servicio se deberían mejorar? Se puede marcar más de una opción.</label>
      <div class="respuesta">
        <?php foreach ($opciones_p6 as $opcion) { ?>
          <div class="checkbox">
            <label>
              <input type="checkbox" value="<?php echo $opcion->id; ?>" name="p6[]">
              <?php echo $opcion->enunciado; ?>
            </label>
          </div>
        <?php } ?>
      </div>
    </div>
      <div style="text-align: center;">
      <p><strong>FIN DE LA ENCUESTAS. GRACIAS POR SU TIEMPO</strong></p>
      <input type="hidden" name="iduser" value="<?php echo $iduser; ?>">
      <input type="submit" value="Enviar encuesta" class="btn btn-primary">
    </div>
  </form>  
</div>
<!-- End Formulario Solicitud -->
<?php $this->load->view('frontend/template/footer'); ?>