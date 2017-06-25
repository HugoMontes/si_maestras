<?php $this->load->view('backend/template/header'); ?> 
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo $this->lang->line('maestras_centros_editar_titulo'); ?>
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
                    <input type="text" class="form-control" id="descripcion" name="descripcion" value="<?php echo set_value('descripcion',$centro->descripcion);?>" placeholder="Ingrese nombre del nuevo centro de formación"/>
                    <span id="help-descripcion" class="help-block" style="display: none;">Este campo es obligatorio.</span>
                  </div>
                </div>      
              </div>
              <!-- end : descripcion -->         
              

              <!-- begin : especialidades -->
              <div class="panel panel-primary">
                <div class="panel-heading">NUEVO RUBRO DE FORMACIÓN</div>
                <div class="panel-body">
                  <div class="alert alert-success alert-add-rubro" style="display: none;" role="alert">...</div>
                  <?php echo form_error('especialidad', '<span class="error-form">', '</span>'); ?>  
                  <!-- begin : Mensaje error eliminar rubro -->
                  <div id="msg-error-eliminar-rubro" class="row" style="display: none;">
                    <div class="col-md-12">
                      <div class="callout callout-danger">
                        <p id="msg_txt_mensaje"></p>
                      </div>
                    </div>
                  </div>
                  <!-- end : Mensaje error eliminar rubro-->
                  
                  <input type="hidden" id="url_ajax_valida_eliminar_rubro" value="<?php echo base_url('index.php/administrador/centro/valida/eliminar/especialidad');?>">
                  <input type="hidden" id="url_ajax_delete_especialidad" value="<?php echo base_url('index.php/administrador/centro/delete/especialidad');?>">
                  <div class="row">
                    <div class="col-md-12">
                      <table class="table table-striped" style="margin: 0px;">
                        <thead>
                          <tr>
                            <th>Certificación<span class="required">*</span></th>
                            <th style="width: 270px;">Rubro<span class="required">*</span></th>
                            <th style="width: 50px;"></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <input type="text" class="form-control especialidad" name="especialidad" id="especialidad" value="" placeholder="Ingrese nombre de la certificación">
                              <span id="help-descripcion" class="help-block" style="display: none;">Es obligatorio ingresar el nombre para la certificación</span>
                            </td>
                            <td>
                              <?php
                                $data = array(
                                  'id' => 'area',
                                  'name'  => 'area',
                                  'class' => 'area form-control',
                                  'data-style' => 'btn-primary'
                                  );                            
                                echo form_dropdown($data, $areas);                              
                              ?>
                              <span id="help-descripcion" class="help-block" style="display: none;">Es obligatorio seleccionar un rubro.</span>
                            </td>
                            <td>
                              <input type="hidden" id="url-ajax-save-rubro" value="<?php echo base_url('index.php/administrador/centro/guardar/rubro');?>">
                              <button type="button" id="btn-add-rubro" class="btn btn-success" style="float: right; margin-right: 9px;" title="Adicionar nueva certificación"><i class="fa fa-plus" aria-hidden="true"></i> Adicionar Certificación</button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end : especialidades -->
              
              <!-- begin : Mensaje de advertencia -->
              <div class="row">
                <div class="col-md-12">
                  <div class="alert alert-warning" role="alert">
                    <table>
                      <tr>
                        <td>
                          <i class="fa fa-exclamation-triangle fa-2x" aria-hidden="true" style="padding-right: 10px;"></i>
                        </td>
                        <td>
                          No podrá eliminar la certificación si el mismo está asociado a otros registros como "maestras constructuras" o "solicitud de servicios".
                        </td>
                      </tr>
                    </table>
                  </div>
                </div>
              </div> 
              <!-- end : Mensaje de advertencia -->

              <!-- begin : Rubros de formacion -->
              <div class="row">
                <div class="col-md-12">
                  <div id="browse_table">
                    <table id="tbl-especialidades" class="table table-hover table-bordered dt-responsive nowrap" style="margin: 0px;">
                      <thead>
                        <tr>
                          <th>Certificación</th>
                          <th style="width: 135px;">Codigo</th>
                          <th style="width: 270px;">Rubro</th>
                          <th></th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php if(count($especialidades)!=0){ ?>
                          <?php
                            foreach ($especialidades as $especialidad) { 
                              $especialidad = (object) $especialidad;
                          ?>
                          <tr>
                            <td class="row-descripcion"><?php echo $especialidad->descripcion; ?></td>
                            <td>
                              <?php echo $especialidad->codigo; ?>
                            </td>
                            <td>
                              <?php echo get_area($especialidad->id_area); ?>
                            </td>
                            <td style="width: 50px;">
                              <input type="hidden" class="id-rubro" value="<?php echo $especialidad->id; ?>"></input>
                              <button type="button" class="btn btn-danger btn-remove-dialog" title="Eliminar certificación"><i class="fa fa-trash" aria-hidden="true"></i></button>
                            </td>
                          </tr>
                          <?php } ?> 
                        <?php }else{ ?>
                           <td colspan="3">No existen certificaciones</td>   
                        <?php } ?>
                        </tbody>
                    </table>
                    </div>
                </div>
              </div> 
              <!-- begin : Rubros de formacion -->

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
            </div>
            <!-- /.box-body -->
            <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" /> 
            <input type="hidden" name="centro_id" id="txt-id-centro" value="<?php echo $centro->id; ?>" />  
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
        <h3 class="modal-title" id="myModalLabel">Eliminar</h3>
      </div>
      <div class="modal-body">
        <p>¿Seguro que quiere eliminar este rubro?</p>
        <p><div id="mdl-elim-txt-rubro"></div></p>
      </div>
      <div class="modal-footer">
        <button type="button" id="btn-remove-confirm" class="btn btn-primary" data-dismiss="modal">Aceptar</a>
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>
  </div>
</div>
<!-- end : modal eliminar rubro -->

<?php $this->load->view('backend/template/footer'); ?>
<script src="<?php echo base_url('assets/js/backend-centro-formacion.js')?>"></script>