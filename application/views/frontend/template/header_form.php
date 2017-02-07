<!-- Start Formulario de Busqueda -->
<div id="formulario-busqueda" class="formulario-inicial">
  <form id="form-solicitud" action="<?php echo base_url('index.php/formulario_solicitud_especialistas'); ?>" method="POST" class="form-inline">
    <div class="form-group">
      <label class="sr-only" for="txtCiudad">Ciudad</label>
      <select id="txtCiudad" name="txtCiudad" class="form-control" style="/*width: 225px; margin-right: 10px;*/">
        <option value="0" selected="selected" style="display: none;">Seleccione una ciudad</option>
        <?php 
        foreach ($ciudades as $ciudad) { 
          $ciudad = (object) $ciudad; 
        ?>
          <option value="<?php echo $ciudad->id; ?>"><?php echo $ciudad->descripcion; ?></option>
        <?php } ?>        
      </select>
    </div>
    <div class="form-group">
      <label class="sr-only" for="txtEspecialidad">Especialidad requerida</label>
      <select id="txtEspecialidad" name="txtEspecialidad" class="form-control" style="/*width: 225px; margin-right: 10px;*/">
        <option value="0" selected="selected" style="display: none;">Especialidad requerida</option>
        <?php 
          foreach ($especialidades as $especialidad) { 
            $especialidad = (object) $especialidad; 
        ?>
          <option value="<?php echo $especialidad->id; ?>"><?php echo $especialidad->descripcion; ?></option>
        <?php } ?>
      </select>  
    </div>
    <button type="submit" class="btn btn-success btn-consulta" disabled="true">Solicitar</button>
  </form>
</div>
<!-- End Formulario de Busqueda -->