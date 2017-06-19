<?php $this->load->view('frontend/template/header'); ?>
<style type="text/css">
  .container-encuesta label{
    color: black;
  }
  .container-encuesta .respuesta{
    margin-left: 20px;
  }
  .container-encuesta .pnl-pregunta{
    padding-top: 20px;
    /*background-color: #f9d791;*/
  }
  .container-encuesta .pregunta{
    font-weight: bold;
  }
  .pnl-footer-encuesta{
    text-align: right;
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
  <div class="alert alert-danger" role="alert" style="display: none;">...</div>
  <form action="<?php echo base_url('index.php/formulario/satisfaccion/guardar'); ?>" method="post">
    
    <div id="pnl-1" class="panel panel-default pnl-pregunta">
      <div class="panel-body">
        <div class="form-group">
          <label for="p1" class="control-label pregunta">Usted llegó a concretar una contratación con alguna de las maestras constructoras que forman parte de la base de datos de la Plataforma  Web MaestrasConstructoras.org?</label>
          <div class="respuesta">
            <div class="radio">
              <label>
                <input type="radio" name="p1" id="p11" value="1">
                Si
              </label>
            </div>
            <div class="radio">
              <label>
                <input type="radio" name="p1" id="p12" value="2">
                No
              </label>
            </div>
          </div>
        </div>
      </div>
      <div class="panel-footer pnl-footer-encuesta">
        <div class="btn-group" role="group" aria-label="...">
          <button type="button" class="btn btn-default btn-siguiente">Siguiente <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
      </div>
    </div>

    <div id="pnl-2" class="panel panel-default pnl-pregunta" style="display: none;">
      <div class="panel-body">
        <div class="form-group">
          <label for="p2" class="control-label pregunta">Número de trabajadoras contratadas:</label>
          <div class="row">
            <div class="col-md-4 respuesta">
              <select id="p2" name="p2" class="form-control">
                <?php for($i=1;$i<=50;$i++){ ?>
                  <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
        </div>
      </div>
      <div class="panel-footer pnl-footer-encuesta">
        <div class="btn-group" role="group" aria-label="...">
          <button type="button" class="btn btn-default btn-anterior"><span class="glyphicon glyphicon-chevron-left"></span> Anterior</button>
          <button type="button" class="btn btn-default btn-siguiente">Siguiente <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
      </div>
    </div>

    <div id="pnl-3" class="panel panel-default pnl-pregunta" style="display: none;">
      <div class="panel-body">
        <div class="form-group">
          <label for="p3" class="control-label pregunta">Por favor seleccione el o los centros de formación donde fueron formadas las maestras contratadas: (En caso de que usted no cuente con dicha información, continuar con la siguientes preguntas)</label>
          <div class="row">
            <div class="col-md-4 respuesta">

              <?php 
                foreach ($centros as $centro) {
                  $centro=(Object) $centro;
              ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" value="<?php echo $centro->id; ?>" name="p3[]">
                    <?php echo $centro->descripcion; ?>
                  </label>
                </div>
              <?php } ?>

              <!--select id="p2" name="p2" class="form-control">
                <?php 
                foreach ($centros as $centro) { 
                  $centro=(Object) $centro;
                ?>
                  <option value="<?php echo $centro->id; ?>"><?php echo $centro->descripcion; ?></option>  
                <?php } ?>
              </select-->

            </div>
          </div>
        </div>
      </div>
      <div class="panel-footer pnl-footer-encuesta">
        <div class="btn-group" role="group" aria-label="...">
          <button type="button" class="btn btn-default btn-anterior"><span class="glyphicon glyphicon-chevron-left"></span> Anterior</button>
          <button type="button" class="btn btn-default btn-siguiente">Siguiente <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
      </div>
    </div>

    <div id="pnl-4" class="panel panel-default pnl-pregunta" style="display: none;">
      <div class="panel-body">
        <div class="form-group">
          <label for="p4" class="control-label pregunta">Favor de indicar su conformidad con el servicio que brindó/brindaron la(s) trabajadora(s)</label>
          <div class="respuesta">
            <?php foreach ($opciones_p5 as $opcion) { ?>
              <div class="radio">
                <label>
                  <input type="radio" name="p4" value="<?php echo $opcion->id; ?>">
                  <?php echo $opcion->enunciado; ?>
                </label>
              </div>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="panel-footer pnl-footer-encuesta">
        <div class="btn-group" role="group" aria-label="...">
          <button type="button" class="btn btn-default btn-anterior"><span class="glyphicon glyphicon-chevron-left"></span> Anterior</button>
          <button type="button" class="btn btn-default btn-siguiente">Siguiente <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
      </div>
    </div>

    <div id="pnl-5" class="panel panel-default pnl-pregunta" style="display: none;">
      <div class="panel-body">
        <div class="form-group">
          <label for="p5" class="control-label pregunta">¿Qué aspectos del servicio se deberían mejorar? Se puede marcar más de una opción.</label>
          <div class="respuesta">
            <?php foreach ($opciones_p6 as $opcion) { ?>
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="<?php echo $opcion->id; ?>" name="p5[]">
                  <?php echo $opcion->enunciado; ?>
                </label>
              </div>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="panel-footer pnl-footer-encuesta">
        <div class="btn-group" role="group" aria-label="...">
          <button type="button" class="btn btn-default btn-anterior"><span class="glyphicon glyphicon-chevron-left"></span> Anterior</button>
          <button type="button" class="btn btn-default btn-siguiente">Siguiente <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
      </div>
    </div>

    <div id="pnl-6" class="panel panel-default pnl-pregunta" style="display: none;">
      <div class="panel-body">
        <div class="form-group">
          <label for="p6" class="control-label pregunta">¿Cuál fue la razón por la cual no contrato una maestra constructora? Se puede marcar más de una opción</label>
          <div class="respuesta">
            <?php foreach ($opciones_p4 as $opcion) { ?>
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="<?php echo $opcion->id; ?>" name="p6[]">
                  <?php echo $opcion->enunciado; ?>
                </label>
              </div>
            <?php } ?>
          </div>
        </div>
      </div>
      <div class="panel-footer pnl-footer-encuesta">
        <div class="btn-group" role="group" aria-label="...">
          <button type="button" class="btn btn-default btn-anterior"><span class="glyphicon glyphicon-chevron-left"></span> Anterior</button>
          <button type="button" class="btn btn-default btn-siguiente">Siguiente <span class="glyphicon glyphicon-chevron-right"></span></button>
        </div>
      </div>
    </div>

    <div id="pnl-7" class="panel panel-default pnl-pregunta" style="display: none;">
      <div class="panel-body">
          <div style="text-align: center;">
          <p><strong>FIN DE LA ENCUESTAS. GRACIAS POR SU TIEMPO</strong></p>
          <br>
          <input type="hidden" name="iduser" value="<?php echo $iduser; ?>">
          <input type="submit" value="Enviar encuesta" class="btn btn-primary">
        </div>
      </div>
      <div class="panel-footer pnl-footer-encuesta">
        <div class="btn-group" role="group" aria-label="...">
          <button type="button" class="btn btn-default btn-anterior"><span class="glyphicon glyphicon-chevron-left"></span> Anterior</button>
        </div>
      </div>
    </div>

  </form>  
</div>
<!-- End Formulario Solicitud -->
<?php $this->load->view('frontend/template/footer'); ?>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/frontend-encuesta-maestras.js"></script>