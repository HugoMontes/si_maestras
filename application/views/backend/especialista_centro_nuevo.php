<?php $usuario_sesion = get_user_session(); ?>
<?php $this->load->view('backend/template/header'); ?> 
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo $this->lang->line('caboco_especialista_nuevo_titulo'); ?>
      <small></small>
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <!-- inicio cuadro mensaje -->                
        <?php if (isset($mensaje)) {  ?>
          <div class="callout callout-success">
            <h4>Mensaje</h4>
            <p><?php echo $mensaje;?></p>
          </div>
        <?php    
          $this->session->unset_userdata('mensaje');
        } elseif (isset($error)) {
        ?>        
          <div class="callout callout-danger">
            <h4>Error</h4>
            <p><?php echo $error;?></p>
          </div>          
        <?php
          $this->session->unset_userdata('error');
        }?>
        <!-- fin cuadro mensaje  -->                
        <div class="box box-primary">
          <div class="box-header">
            <h3 class="box-title">
              <small><?php echo $this->lang->line('score_campo_obligatorio');?></small>
            </h3>
          </div>
          <!-- /.box-header -->
          <!-- form start -->
          <form role="form" method="post" action="<?php echo base_url('index.php/administrador/especialista/centro/guardar');?>">
            <div class="box-body">
              <div class="form-group">
                <label for="ci">Cedula de identidad <span class="required">*</span></label>
                <?php echo form_error('ci', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-4">
                    <input type="text" class="form-control" id="ci" name="ci" value="<?php echo set_value('ci');?>" placeholder="Ingrese numero de cedula de identidad"/>
                  </div>
                  <div class="col-md-2">                      
                 	<?php
	                 	$data = array(
	                 		'name'  => 'depto',
	                 		'id'    => 'depto',
	                 		'class' => 'form-control',
	                 		'data-style' => 'btn-primary'
	                 		);                            
	                 	echo form_dropdown($data, $departamentos, set_value('depto'));               
                    ?>                 
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="nombres">Nombres <span class="required">*</span></label>
                <?php echo form_error('nombres', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="nombres" name="nombres" value="<?php echo set_value('nombres');?>" placeholder="Ingrese los nombres"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="apellidos">Apellidos <span class="required">*</span></label>
                <?php echo form_error('apellidos', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="apellidos" name="apellidos" value="<?php echo set_value('apellidos');?>" placeholder="Ingrese los apellidos"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="ciudad">Ciudad donde vive: <span class="required">*</span></label>
                <?php echo form_error('ciudad', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <?php
                    $data = array(
                      'name'  => 'ciudad',
                      'id'    => 'ciudad',
                      'class' => 'form-control selectpicker',
                      'data-style' => 'btn-primary'
                      );                            
                    echo form_dropdown($data, $ciudades, set_value('ciudad'));                              
                    ?>  
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="fechanac">Fecha de nacimiento <span class="required">*</span></label>
                <?php echo form_error('fechanac', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-2">
                  	<?php
	                  	$data = array(
	                  		'name'  => 'dia',
	                  		'id'    => 'dia',
	                  		'class' => 'form-control',
	                  		'data-style' => 'btn-primary'
	                  	);                            
	                  	echo form_dropdown($data, $dia, set_value('dia'));                              
                  	?>
                  </div>
                  <div class="col-md-2">
        				  	<?php
        					  	$data = array(
        					  		'name'  => 'mes',
        					  		'id'    => 'mes',
        					  		'class' => 'form-control',
        					  		'data-style' => 'btn-primary'
        					  	);                            
        					  	echo form_dropdown($data, $mes, set_value('mes'));                              
        				  	?>
                  </div>
                  <div class="col-md-2">
                   	<?php
	                   	$data = array(
	                   		'name'  => 'anio',
	                   		'id'    => 'anio',
	                   		'class' => 'form-control',
	                   		'data-style' => 'btn-primary'
	                   	);                            
	                   	echo form_dropdown($data, $anio, set_value('anio'));                              
                   	?>
                  </div>
                </div>      
              </div>  
              <?php echo form_error('especialidad', '<span class="error-form">', '</span>'); ?>
              <?php
                $centro = $centro_formacion;                       
              ?>              
              <div class="panel panel-primary">
                <div class="panel-heading">CERTIFICACIONES <?php echo strtoupper($centro->descripcion); ?></div>
                <div class="panel-body">                  
                    <div class="row">      
                      <div class="col-md-12">                        
                            <table class="table table-striped">
                              <tr>
                                <th>Certificación en: </th>
                                <th>Area</th>
                                <th style="width: 200px;">Fecha de certificacion</th>
                              </tr>
                              <?php 
                              foreach ($centro_especialidades as $especialidad) {
                              ?>
                              <tr>
                                <td>
                                  <input class="magic-checkbox especialidades" type="checkbox" name="especialidades[]" id="<?php echo $especialidad->id; ?>" value="<?php echo $especialidad->id; ?>">
                                  <label class="text" style="font-weight: 400;" for="<?php echo $especialidad->id; ?>"><?php echo $especialidad->descripcion; ?></label>
                                </td>
                                <td>
                                  <input type="text" class="form-control" value="<?php echo $especialidad->area; ?>" disabled="true">
                                </td>
                                <td>
                                  <input type="text" class="form-control fecha-certificacion" name="fecha-certificacion[]" value="<?php echo set_value('fecha-certificacion');?>" placeholder="Ingrese una fecha" disabled="true"/>
                                </td>
                              </tr>
                              <?php } ?>
                            </table>                          
                      </div>
                    </div>   
                </div>
              </div>

			        <div class="form-group">
                <label for="direccion">Dirección <span class="required">*</span></label>
                <?php echo form_error('direccion', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="direccion" name="direccion" value="<?php echo set_value('direccion');?>" placeholder="Ingrese una direccion"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="telefono1">Telefono de Contacto</label>
                <?php echo form_error('telefono1', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="telefono1" name="telefono1" value="<?php echo set_value('telefono1');?>" placeholder="Ingrese numero de telefono fijo o celular"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="telefono2">Telefono de Referencia</label>
                <?php echo form_error('telefono2', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="telefono2" name="telefono2" value="<?php echo set_value('telefono2');?>" placeholder="Ingrese numero de telefono fijo o celular"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="correo">Correo electronico</label>
                <?php echo form_error('correo', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="correo" name="correo" value="<?php echo set_value('correo');?>" placeholder="Ingrese un email"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="estado">Estado</label>
                <?php echo form_error('estado', '<span class="error-form">', '</span>'); ?>  
                <div class="row">
                  <div class="col-md-3">
                    <?php
                    if(set_value('estado') == PUBLICADO OR set_value('estado')== null){
                      $class = 'btn-success';
                    }else{
                      $class='btn-danger'; 
                    }
                    $data = array(
                      'name'  => 'estado',
                      'id'    => 'estado',
                      'class' => 'form-control selectpicker',
                      'data-style' => $class
                    );
                    $opciones = array(
                      PUBLICADO  => 'Publicado',
                      DESPUBLICADO    => 'Despublicado'
                    ); 
                    echo form_dropdown($data, $opciones, set_value('estado'));                               
                    ?>
                  </div>
                </div> 
              </div>                          
            </div>
            <!-- /.box-body -->
            <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO; ?>" />  
            <div class="box-footer">
              <?php
              	$navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALISTAS)); 
              ?>
              <a href="<?php echo base_url($navegacion->navegacion); ?>" class="btn btn-default">Cancelar</a>
              <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
          </form>
          <!-- form end -->                                   
        </div>
        <!-- /.box -->
      </div>
      <!-- /.col-->
    </div>
    <!-- ./row -->
  </section>
  <!-- /.content -->
</div>
<?php $this->load->view('backend/template/footer'); ?>
<script src="<?php echo base_url('assets/frontend_caboco/asset/jquery_ui/jquery-ui.min.js')?>"></script> 
<script src="<?php echo base_url('assets/frontend_caboco/js/calendar-es.js')?>"></script>
<script src="<?php echo base_url('assets/js/backend-especialista.js')?>"></script>