<!--
<div class="solicitud-maestras-main" style="background: url('<?php echo base_url().'assets/img/slides/mconstructora0.png'; ?>');">
-->

<ul class="imagenes-fondo" style="display: none;">
	<li><?php echo base_url();?>assets/img/slides/mconstructora0.png</li>
	<li><?php echo base_url();?>assets/img/slides/mconstructora1.png</li>
	<li><?php echo base_url();?>assets/img/slides/mconstructora2.png</li>
	<li><?php echo base_url();?>assets/img/slides/mconstructora3.png</li>
</ul>

<div class="solicitud-maestras-main" style="background: url('<?php echo base_url();?>assets/img/slides/mconstructora2.png'); background-attachment: fixed; background-position: center; background-size: cover; background-repeat: no-repeat;">
  <div class="image-curtain">
	<div class="container">
		<h2><strong>Encuentra tu TRABAJADORA CALIFICADA AQUÍ</strong></h2>
	</div>

    <!-- Start Formulario Solicitud -->
	<div class="container-maestras">
	  <form id="solicitudForm" action="<?php echo base_url('index.php/solicitar_especialistas'); ?>" method="POST" class="form-horizontal">
		<fieldset>
		  <div class="form-maestras form-solicitud">
		  	<div class="form-group">
			  <label for="txtCiudad" class="col-sm-5 control-label caboco-label">Ciudad <span>*</span> <p class="label-descripcion">Ciudad donde se dearrollara el trabajo</p></label>
			  <div class="col-sm-6">
			  	<div class="input-group">
			  	  <div class="input-group-addon"><span class="fa fa-building"></span></div>
			    	<select id="txtCiudad" name="txtCiudad" class="form-control" style="/*width: 225px; margin-right: 10px;*/">
				      <option value="" selected="selected" style="display: none;">Seleccione una ciudad</option>
				      <?php 
				        foreach ($ciudades as $ciudad) { 
				        $ciudad = (object) $ciudad; 
				      ?>
				        <option value="<?php echo $ciudad->id; ?>"><?php echo $ciudad->descripcion; ?></option>
				      <?php } ?>        
				    </select>
			     </div>
			  </div>
			</div>
		  	<div class="form-group">
			  <label for="txtEspecialidad" class="col-sm-5 control-label caboco-label">Especialidad requerida <span>*</span> <p class="label-descripcion">Especialidad requerida en una determinada área</p></label>
			  <div class="col-sm-6">
			  	<div class="input-group">
			  	  <div class="input-group-addon"><span class="glyphicon glyphicon-briefcase"></span></div>
			    	<select id="txtEspecialidad" name="txtEspecialidad" class="form-control" style="/*width: 225px; margin-right: 10px;*/">
				      <option value="" selected="selected" style="display: none;">Especialidad requerida</option>
				      <?php 
				        foreach ($especialidades as $especialidad) { 
				          $especialidad = (object) $especialidad; 
				      ?>
				      	<option value="<?php echo $especialidad->id; ?>"><?php echo $especialidad->descripcion; ?></option>
				      <?php } ?>
				    </select>
			     </div>
			  </div>
			</div>
			<div class="form-group">
			  <label for="txtNumero" class="col-sm-5 control-label caboco-label">Numero de trabajadores <span>*</span> <p class="label-descripcion">Cantidad de trabajadores requeridos</p></label>
			  <div class="col-sm-6">
			  	<div class="input-group">
			  	  <div class="input-group-addon"><span class="fa fa-users"></span></div>
			    	<input type="text" name="txtNumero" class="form-control txtNumero" placeholder="Ingresar numero de trabadores" required>
			     </div>
			  </div>
			</div>
			<div class="form-group">
			  <label for="txtTiempo" class="col-sm-5 control-label caboco-label">Tiempo aproximado de trabajo <span>*</span> <p class="label-descripcion">Fecha aproximada de inicio y final del trabajo</p></label>  
			  <div class="col-sm-3">  
			    <div class="input-group">
			   	  <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
			      <input type="text" name="txtFechaInicio" class="form-control txtCalendar txtFechaInicio" placeholder="Fecha inicio" required>
			    </div>
			  </div>
			  <div class="col-sm-3">
			    <div class="input-group">
			   	  <div class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></div>
			      <input type="text" name="txtFechaFin" class="form-control txtCalendar txtFechaFin" placeholder="Fecha fin" required>
			    </div>
			  </div>
			</div>        
			<hr/>
			<div class="form-controles">
				<button id="btn-continuar" type="button" class="btn btn-success">Siguiente <span class="glyphicon glyphicon-chevron-right"></span></button>
		  		<span class="clear"></span>
		  	</div>
		  </div>
		</fieldset>
		<!-- Start Fomulario Empleador -->
		<fieldset>		  
		  <div class="form-maestras form-empleador">
			  <p class="texto">Llene el siguiente formulario para enviar a su correo la información de las especialidades requeridas.</p>
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
					  <input type="text" class="form-control" id="txtDireccion" name="txtDireccion" placeholder="Dirección donde se realizaran las obras" required>
				  </div>
				</div>
			  </div>
			  <hr/>
			  <div class="form-controles">
				  <button id="btn-enviar" type="submit" class="btn btn-primary">Enviar Solicitud</button>
			  </div>
		  </div>
		</fieldset>
	  	<!-- End Fomulario Empleador -->
		<div style="clear: both;"></div>
	  </form>
	</div>
	<!-- End Formulario Solicitud -->
  </div>
</div>