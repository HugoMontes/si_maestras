<?php $this->load->view('backend/template/header'); ?> 
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo $this->lang->line('caboco_especialista_editar_titulo'); ?>
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
        }elseif (isset($error)) {
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
        <form role="form" method="post" action="<?php echo base_url('index.php/administrador/especialista/guardar');?>">
          <div class="box-body">
            <div class="form-group">
              <label for="ci">Cedula de identidad <span class="required">*</span></label>
              <?php echo form_error('ci', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="row">
                <div class="col-md-4">
                  <input type="text" class="form-control" id="ci" name="ci" value="<?php echo set_value('ci',$especialista->ci);?>" placeholder="Ingrese numero de cedula de identidad"/>
                </div>
                <div class="col-md-2">                
                  <?php
                    $data = array(
                      'name'  => 'depto',
                      'id'    => 'depto',
                      'class' => 'form-control',
                      'data-style' => 'btn-primary'
                      );                            
                    echo form_dropdown($data, $departamentos, set_value('depto',$especialista->id_departamento));                              
                  ?>                 
                </div>
              </div>      
            </div>
            <div class="form-group">
              <label for="nombres">Nombres <span class="required">*</span></label>
              <?php echo form_error('nombres', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="row">
                <div class="col-md-6">
                  <input type="text" class="form-control" id="nombres" name="nombres" value="<?php echo set_value('nombres',$especialista->nombres);?>" placeholder="Ingrese los nombres"/>
                </div>
              </div>      
            </div>
            <div class="form-group">
              <label for="apellidos">Apellidos <span class="required">*</span></label>
              <?php echo form_error('apellidos', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="row">
                <div class="col-md-6">
                  <input type="text" class="form-control" id="apellidos" name="apellidos" value="<?php echo set_value('apellidos',$especialista->apellidos);?>" placeholder="Ingrese los apellidos"/>
                </div>
              </div>      
            </div>
            <div class="form-group">
              <label for="ciudad">Ciudad donde vive: <span class="required">*</span></label>
              <?php echo form_error('ciudad', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="row">
                <div class="col-md-6">
                  <?php
                  $data = array(
                    'name'  => 'ciudad',
                    'id'    => 'ciudad',
                    'class' => 'form-control selectpicker',
                    'data-style' => 'btn-primary'
                    );                            
                  echo form_dropdown($data, $ciudades, set_value('ciudad',$especialista->id_ciudad));                              
                  ?>  
                </div>
              </div>      
            </div>
            <div class="form-group">
              <label for="fechanac">Fecha de nacimiento <span class="required">*</span></label>
              <?php echo form_error('fechanac', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="row">
                <div class="col-md-2">
                 <?php
                    $data = array(
                      'name'  => 'dia',
                      'id'    => 'dia',
                      'class' => 'form-control',
                      'data-style' => 'btn-primary'
                    );                            
                    echo form_dropdown($data, $dia, set_value('dia',date('d',strtotime($especialista->fecha_nacimiento))));
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
                   echo form_dropdown($data, $mes, set_value('mes',date('n',strtotime($especialista->fecha_nacimiento))));                              
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
                  echo form_dropdown($data, $anio, set_value('anio',date('Y',strtotime($especialista->fecha_nacimiento))));                              
                ?>
              </div>
            </div>      
          </div>

          <div class="panel panel-primary">
            <div class="panel-heading">CERTIFICACIONES</div>
            <div class="panel-body">
              <?php echo form_error('especialidad', '<span class="error-form">', '</span><br/><br/>'); ?>          
              <?php
              $cont=0;
              foreach ($centros_formacion as $cf) { 
                $centro = (object) $cf['centro'];
              ?>
              <div class="row">      
                <div class="col-md-12">
                  <div class="panel panel-success">
                    <div class="panel-heading">
                      <h3 class="panel-title"><?php echo strtoupper($centro->descripcion); ?></h3>
                    </div>
                    <div class="panel-body">
                      <table class="table table-striped">
                        <tr>
                          <th>Certificación en: </th>
                          <th>Area</th>
                          <th style="width: 200px;">Fecha de certificacion</th>
                        </tr>
                        <?php
                          foreach ($cf['especialidades'] as $especialidad) { 
                            $especialidad = (object) $especialidad;
                            $activo=activa_especialidad($especialidad->id, $especialista_especialidades);
                            if($activo){
                              $valor_exp=$especialista_especialidades[$cont]->fecha_certificacion;
                              $cont++;
                            }else{
                              $valor_exp="";
                            }
                        ?>
                        <tr>
                          <td>
                            <input class="magic-checkbox especialidades" type="checkbox" name="especialidades[]" id="<?php echo $especialidad->id; ?>" value="<?php echo $especialidad->id; ?>" <?php echo $activo?"checked":""; ?> >
                            <label class="text" style="font-weight: 400;" for="<?php echo $especialidad->id; ?>"><?php echo $especialidad->descripcion; ?></label>
                          </td>
                          <td>
                            <input type="text" class="form-control" value="<?php echo $especialidad->area; ?>" disabled="true">
                          </td>
                          <td>
                            <input type="text" class="form-control fecha-certificacion" name="fecha-certificacion[]" value="<?php echo $valor_exp; ?>" placeholder="Ingrese años" <?php echo $activo?"":"disabled"; ?> >
                          </td>
                        </tr>
                        <?php } ?>
                      </table>
                    </div>
                  </div>
                </div>
              </div>      
              <?php } ?>
            </div>
          </div>

          <div class="form-group">
            <label for="direccion">Dirección <span class="required">*</span></label>
            <?php echo form_error('direccion', '<span class="error-form">', '</span><br/><br/>'); ?>
            <div class="row">
              <div class="col-md-6">
                <input type="text" class="form-control" id="direccion" name="direccion" value="<?php echo set_value('direccion',$especialista->direccion);?>" placeholder="Ingrese una direccion"/>
              </div>
            </div>      
          </div>
          <div class="form-group">
            <label for="telefono1">Telefono de Contacto</label>
            <?php echo form_error('telefono1', '<span class="error-form">', '</span><br/><br/>'); ?>
            <div class="row">
              <div class="col-md-6">
                <input type="text" class="form-control" id="telefono1" name="telefono1" value="<?php echo set_value('telefono1',$especialista->telefono_contacto);?>" placeholder="Ingrese numero de telefono o celular"/>
              </div>
            </div>      
          </div>
          <div class="form-group">
            <label for="telefono2">Telefono de Referencia</label>
            <?php echo form_error('telefono2', '<span class="error-form">', '</span><br/><br/>'); ?>
            <div class="row">
              <div class="col-md-6">
                <input type="text" class="form-control" id="telefono2" name="telefono2" value="<?php echo set_value('telefono2',$especialista->telefono_referencia);?>" placeholder="Ingrese numero de telefono o celular"/>
              </div>
            </div>      
          </div>
          <div class="form-group">
            <label for="correo">Correo electronico</label>
            <?php echo form_error('correo', '<span class="error-form">', '</span><br/><br/>'); ?>
            <div class="row">
              <div class="col-md-6">
                <input type="text" class="form-control" id="correo" name="correo" value="<?php echo set_value('correo',$especialista->correo);?>" placeholder="Ingrese un email"/>
              </div>
            </div>      
          </div>
          <div class="form-group">
            <label for="estado">Estado</label>
            <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>  
            <div class="row">
              <div class="col-md-3">
                <?php
                  if(set_value('estado',$especialista->estado) == PUBLICADO){
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
        <input type="hidden" name="especialista_id" id="especialista_id" value="<?php echo $especialista->id;?>" />
        <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
        <div class="box-footer">
          <?php
          $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALISTAS)); 
          ?>
          <a href="<?php echo base_url($navegacion->navegacion); ?>" class="btn btn-default">Cerrar</a>
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