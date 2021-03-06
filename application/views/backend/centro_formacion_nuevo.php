<?php $this->load->view('backend/template/header'); ?> 
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo $this->lang->line('maestras_centros_nuevo_titulo'); ?>
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
          <form id="form-centro" role="form" method="post" action="<?php echo base_url('index.php/administrador/centro/guardar');?>">
            <div class="box-body">
              
              <!-- begin : descripcion -->
              <div class="form-group">
                <label for="descripcion">Centro de formación: <span class="required">*</span></label>
                <?php echo form_error('descripcion', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="descripcion" name="descripcion" value="<?php echo set_value('descripcion');?>" placeholder="Ingrese nombre del nuevo centro de formación"/>
                    <span id="help-descripcion" class="help-block" style="display: none;">Este campo es obligatorio.</span>
                  </div>
                </div>      
              </div>
              <!-- end : descripcion -->

              <!-- begin : codigo -->
              <div class="form-group">
                <label for="codigo">Código del centro de formación: <span class="required">*</span></label>
                <?php echo form_error('codigo', '<span class="error-form">', '</span>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="codigo" name="codigo" value="<?php echo set_value('codigo');?>" placeholder="Ingrese un código para el centro" maxlength="2"/>
                    <span id="help-codigo" class="help-block" style="display: none;">Este campo es obligatorio.</span>
                    <span class="help-block">El código del centro de formación esta compuesta por dos letras las cuales deben ser únicas para cada centro. Posteriormente este codigo es utilizado para codificar las especialidades.</span>
                  </div>
                </div>      
              </div>
              <!-- end : codigo -->
              
              <!-- begin : especialidades -->
              <!--div class="panel panel-primary">
                <div class="panel-heading">RUBROS DE FORMACIÓN</div>
                <div class="panel-body">
                  <?php echo form_error('especialidad', '<span class="error-form">', '</span>'); ?>
                  <div class="row">
                    <div class="col-md-12">
                      <table id="tbl-especialidades" class="table table-striped" style="margin: 0px;">
                        <thead>
                          <tr>
                            <th>Certificación<span class="required">*</span></th>
                            <th style="width: 270px;">Rubro<span class="required">*</span></th>
                            <th></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <input type="text" class="form-control especialidad" name="especialidades[]" placeholder="Ingrese nombre de la certificación">
                              <span id="help-descripcion" class="help-block" style="display: none;">Es obligatorio ingresar el nombre para la certificación</span>
                            </td>
                            <td>
                              <?php
                                $data = array(
                                  'name'  => 'areas[]',
                                  'class' => 'area form-control',
                                  'data-style' => 'btn-primary'
                                  );                            
                                echo form_dropdown($data, $areas, set_value('area'));                              
                                ?>
                                <span id="help-descripcion" class="help-block" style="display: none;">Es obligatorio seleccionar un rubro.</span>
                            </td>
                            <td style="width: 50px;">
                              <button type="button" class="btn btn-danger btn-remove-dialog" title="Eliminar certificación"><i class="fa fa-trash" aria-hidden="true"></i></button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <table style="width: 100%;">
                        <tr>
                          <td>
                              <button type="button" id="btn-add-rubro" class="btn btn-success" style="float: right; margin-right: 9px;" title="Adicionar nueva certificación"><i class="fa fa-plus" aria-hidden="true"></i> Adicionar Certificación</button>
                          </td>
                          <td style="width: 50px;">
                          </td>
                        </tr>
                      </table>                   
                    </div>
                  </div> 
                </div>
              </div-->
              <!-- end : especialidades -->
              
              <!-- begin : estado -->
              <div class="form-group">
                <label for="estado">Estado<span class="required">*</span></label>
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
              <!-- end : estado -->

              <p>Despues de crear el centro de formación puede adicionar los rubros.</p>
          
            </div>
            <!-- /.box-body -->
            <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO; ?>" />  
            <div class="box-footer">
              <?php
              	$navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CENTROS_FORMACION)); 
              ?>
              <a href="<?php echo base_url($navegacion->navegacion); ?>" class="btn btn-default">Cancelar</a>
              <button id="btn-guardar" type="submit" class="btn btn-primary">Guardar</button>
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

<!-- begin : modal eliminar rubro -->
<div class="modal fade" id="modal-confirm-eliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 class="modal-title" id="myModalLabel">Mensaje</h3>
      </div>
      <div class="modal-body">
        <p>¿Seguro que quiere eliminar este rubro?</p>
        <p><div id="modal_confirm_eliminar_nombre"></div></p>
      </div>
      <div class="modal-footer">
        <button type="button" id="btn-remove-confirm" class="btn btn-primary" data-dismiss="modal">Aceptar</a>
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
<!-- end : modal eliminar rubro -->

<!-- begin : fila a copiar nuevo rubro  -->
<div id="foco-rubro" style="display: none;">
  <table>
    <tbody>
      <tr>
        <td>
          <input type="text" class="form-control especialidad" name="especialidades[]" placeholder="IIngrese nombre de la certificación">
          <span id="help-descripcion" class="help-block" style="display: none;">Es obligatorio ingresar el nombre de la certificación</span>
        </td>
        <td>
          <?php
          $data = array(
            'name'  => 'areas[]',
            'class' => 'area form-control',
            'data-style' => 'btn-primary'
            );                            
          echo form_dropdown($data, $areas, set_value('area'));                              
          ?>
          <span id="help-descripcion" class="help-block" style="display: none;">Es obligatorio seleccionar un rubro.</span>
        </td>
        <td style="width: 50px;">
          <button type="button" class="btn btn-danger btn-remove-dialog" title="Eliminar rubro"><i class="fa fa-trash" aria-hidden="true"></i></button>
        </td>
      </tr>
    </tbody>
  </table>
</div>
<!-- end : fila a copiar nuevo rubro  -->

<?php $this->load->view('backend/template/footer'); ?>
<script src="<?php echo base_url('assets/js/backend-centro-formacion.js')?>"></script>