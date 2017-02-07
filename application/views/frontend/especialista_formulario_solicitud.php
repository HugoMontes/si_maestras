<?php $this->load->view('frontend/template/header'); ?>
<!-- Start Page Banner -->
<div class="page-banner no-subtitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h2>Formulario de requerimiento</h2>
      </div>
    </div>
  </div>
</div>
<!-- End Page Banner -->

<!-- Start Formulario Solicitud -->
<div class="container container-caboco">
  <form id="solicitudForm" action="<?php echo base_url('index.php/finalizar_solicitud_especialistas'); ?>" method="POST" class="form-horizontal">
    <input type="hidden" name="txtIdCiudad" value="<?php echo $ciudad->id; ?>">
    <div id="form-content-caboco">
      <div class="form-solicitud">
        <h2 class="title-caboco"><?php echo $especialista->descripcion; ?></h2>
        <!--
        <div class="alert alert-danger mensajes-validacion" role="alert" style="display: none;">
          <p><strong>Numero de trabajadores</strong> es requerido.</p>
          <p><strong>Fecha inicio</strong> es requerido.</p>
          <p><strong>Fecha fin</strong> es requerido.</p>
        </div>
        -->
        <input type="hidden" class="txtIdEspecialidad" name="txtIdEspecialidad[]" value="<?php echo $especialista->id; ?>">    
        <div class="form-group">
          <label for="txtNumero" class="col-sm-3 control-label caboco-label">Numero de trabajadores <span>*</span> <p class="label-descripcion">Cantidad de trabajadores requeridos</p></label>
          <div class="col-sm-6">
            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-briefcase"></span></div>
              <input type="text" name="txtNumero[]" class="form-control txtNumero" placeholder="Ingresar numero de trabadores" required>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="txtTiempo" class="col-sm-3 control-label caboco-label">Tiempo aproximado de trabajo <span>*</span> <p class="label-descripcion">Fecha aproximada de inicio y final del trabajo</p></label>  
          <div class="col-sm-3">  
            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
              <input type="text" name="txtFechaInicio[]" class="form-control txtCalendar txtFechaInicio" placeholder="Fecha inicio" required>
            </div>
          </div>
          <div class="col-sm-3">
            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
              <input type="text" name="txtFechaFin[]" class="form-control txtCalendar txtFechaFin" placeholder="Fecha fin" required>
            </div>
          </div>
        </div>        
        <hr/>
      </div>
    </div>

    <!-- Start Controles Especialistas -->
    <div class="form-group form-controles">
      <label for="txtEspecialidad" class="col-sm-3 control-label caboco-label">Requiero mas especialistas en</label>  
      <div class="col-sm-3">  
        <select id="txtEspecialidad" class="form-control">
          <option selected="selected" style="display: none;">Especialidad requerida</option>
          <?php 
          foreach ($especialidades as $especialidad) { 
            $especialidad = (object) $especialidad; 
          ?>
            <option value="<?php echo $especialidad->id; ?>"><?php echo $especialidad->descripcion; ?></option>
          <?php } ?>
        </select> 
      </div>
      <button id="btn-solicitar" type="button" class="btn btn-success" disabled="true">Solicitar especialistas</button>
      <button id="btn-finalizar" type="button" class="btn btn-primary">Finalizar solicitud</button>
    </div>
    <!-- End Controles Especialistas -->

    <!-- Start Fomulario Empleador -->
    <div class="form-empleador">
      <h2 class="title-caboco">Datos del Empleador</h2>
      <div class="col-md-7 col-sm-12">
        <p>Llene el siguiente formulario para enviarle los datos de los especialistas solicitados.</p>
        <br/>
        <div class="form-group">
          <label for="txtNombre" class="col-sm-5 control-label caboco-label">Nombre <span>*</span> <p class="label-descripcion">Nombre completo del empleador</p></label>
          <div class="col-sm-7">
            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-user"></span></div>
              <input type="text" class="form-control" id="txtNombre" name="txtNombre" placeholder="Nombre completo del empleador" required>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="txtCorreo" class="col-sm-5 control-label caboco-label">Correo <span>*</span> <p class="label-descripcion">Donde podemos contactarlo</p></label>
          <div class="col-sm-7">
            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></div>
              <input type="email" class="form-control" id="txtCorreo" name="txtCorreo" placeholder="Correo electronico" required>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label for="txtDireccion" class="col-sm-5 control-label caboco-label">Direccion <span>*</span> <p class="label-descripcion">Lugar donde se realizaran las obras</p></label>
          <div class="col-sm-7">
            <div class="input-group">
              <div class="input-group-addon"><span class="glyphicon glyphicon-home"></span></div>
              <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Direccion del trabajo" required>
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-offset-5 col-sm-10">
            <button id="btn-enviar" type="submit" class="btn btn-primary">Enviar Solicitud</button>
          </div>
        </div>
      </div>
      <div class="visible-lg visible-md col-md-5">
        <div id="owl-demo" class="owl-carousel">
          <div><img src="<?php echo base_url(); ?>assets/frontend_caboco/images/caboco/noti_1.jpg"></div>
          <div><img src="<?php echo base_url(); ?>assets/frontend_caboco/images/caboco/noti_2.jpg"></div>
          <div><img src="<?php echo base_url(); ?>assets/frontend_caboco/images/caboco/noti_3.jpg"></div>
          <div><img src="<?php echo base_url(); ?>assets/frontend_caboco/images/caboco/noti_4.jpg"></div>
        </div>
      </div>
    </div>
    <!-- End Fomulario Empleador -->
  </form>
</div>
<!-- End Formulario Solicitud -->

<!-- Start Template Formulario -->
<div id="form-template" style="display: none;">
  <div class="form-solicitud">
    <h2 class="title-caboco">Solicitud de Alañiles</h2>
    <input type="hidden" class="txtIdEspecialidad" name="txtIdEspecialidad[]" value="">
    <div class="form-group">
      <label for="txtNumero" class="col-sm-3 control-label caboco-label">Numero de trabajadores <span>*</span> <p class="label-descripcion">Cantidad de trabajadores requeridos</p></label>
      <div class="col-sm-6">
        <div class="input-group">
          <div class="input-group-addon"><span class="glyphicon glyphicon-briefcase"></span></div>
          <input type="text" name="txtNumero[]" class="form-control txtNumero" placeholder="Ingresar numero de trabadores" required>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="txtTiempo" class="col-sm-3 control-label caboco-label">Tiempo aproximado de trabajo <span>*</span> <p class="label-descripcion">Fecha aproximada de inicio y final del trabajo</p></label>  
      <div class="col-sm-3">  
        <div class="input-group">
          <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
          <input type="text" name="txtFechaInicio[]" class="form-control txtCalendar txtFechaInicio" placeholder="Fecha inicio" required>
        </div>
      </div>
      <div class="col-sm-3">
        <div class="input-group">
          <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
          <input type="text" name="txtFechaFin[]" class="form-control txtCalendar txtFechaFin" placeholder="Fecha fin" required>
        </div>
      </div>
    </div>        
    <hr/>
  </div>
</div>
<!-- End Template Formulario -->
<?php $this->load->view('frontend/template/footer'); ?>