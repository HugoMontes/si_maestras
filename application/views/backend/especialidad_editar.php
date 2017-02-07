<?php $this->load->view('backend/template/header'); ?> 
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo $this->lang->line('caboco_especialidad_editar_titulo'); ?>
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
          <form role="form" method="post" action="<?php echo base_url('index.php/administrador/especialidad/guardar');?>">
            <div class="box-body">
              <div class="form-group">
                <label for="descripcion">Especialidad <span class="required">*</span></label>
                <?php echo form_error('descripcion', '<span class="error-form">', '</span><br/><br/>'); ?>
                <div class="row">
                  <div class="col-md-6">
                    <input type="text" class="form-control" id="descripcion" name="descripcion" value="<?php echo set_value('descripcion',$especialidad->descripcion);?>" placeholder="Ingrese nombre de una nueva especialidad"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="estado">Estado</label>
                <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>  
                <div class="row">
                  <div class="col-md-3">
                    <?php
                    if(set_value('estado',$especialidad->estado) == PUBLICADO){
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
           	<input type="hidden" name="especialidad_id" id="especialidad_id" value="<?php echo $especialidad->id;?>" />
            <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
            <div class="box-footer">
              <?php
              	$navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>ESPECIALIDADES)); 
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