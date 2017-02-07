<?php $this->load->view('backend/template/header'); ?> 
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo $this->lang->line('score_formador_nuevo_titulo'); ?>
      <small></small>
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <!-- inicio cuadro mensaje -->                
        <?php if (isset($mensaje)) {
          ?>
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
          <form role="form" enctype="multipart/form-data"  method="post" action="<?php echo base_url('index.php/administrador/formador/guardar');?>">
            <div class="box-body">
              <div class="form-group">
                <label for="nombres">Nombres <span class="required">*</span></label>
                <?php echo form_error('nombres', '<span class="error-form">', '</span><br/><br/>'); ?>
                <div class="row">
                  <div class="col-lg-6">
                    <input type="text" class="form-control" id="nombres" name="nombres" value="<?php echo set_value('nombres');?>" placeholder="Ingrese los nombres"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="apellidos">Apellidos <span class="required">*</span></label>
                <?php echo form_error('apellidos', '<span class="error-form">', '</span><br/><br/>'); ?>
                <div class="row">
                  <div class="col-lg-6">
                    <input type="text" class="form-control" id="apellidos" name="apellidos" value="<?php echo set_value('apellidos');?>" placeholder="Ingrese los apellidos"/>
                  </div>
                </div>      
              </div>
              <div class="form-group">
                <label for="fotografia">Fotografía </label>
                <input type="file" name="fotografia" />                
                <p class="help-block"><?php echo $this->lang->line('score_imagen_upload').'&nbsp;&nbsp;'.$this->lang->line('score_formador_img_condiciones');?></p>
              </div>

              <div class="form-group">
                <label for="genero">Género</label>
                <?php echo form_error('genero', '<span class="error-form">', '</span><br/><br/>'); ?>  
                <div class="row">
                  <div class="col-lg-3">
                    <?php
                    $data = array(
                      'name'  => 'genero',
                      'id'    => 'genero',
                      'class' => 'form-control selectpicker',
                      'data-style' => 'btn-primary'
                      );
                    $opciones = array(
                      VARON  => 'Varón',
                      MUJER  => 'Mujer'
                      ); 

                    echo form_dropdown($data, $opciones, set_value('genero'));

                    ?>
                  </div>
                </div> 
              </div> 

              <div class="form-group">
                <label for="formador">Tipo de formador <span class="required">*</span></label>
                <?php echo form_error('formador', '<span class="error-form">', '</span><br/><br/>'); ?>
                <div class="row">
                  <div class="col-lg-6">
                    <input type="text" class="form-control" id="formador" name="formador" value="<?php echo set_value('formador',$this->lang->line('score_formador_default'));?>" placeholder="Ingrese el tipo de formador"/>
                  </div>
                </div>      
              </div>

              <div class="form-group">
                <label for="descripcion">Descripcion <span class="required">*</span></label>
                <?php echo form_error('descripcion', '<span class="error-form">', '</span><br/><br/>'); ?>
                <textarea name="descripcion" id="descripcion"><?php echo set_value('descripcion');?></textarea>
              </div>

              <div class="form-group">
                <label for="estado">Estado</label>
                <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>  
                <div class="row">
                  <div class="col-lg-3">
                    <?php
                    if(set_value('estado') == PUBLICADO OR set_value('estado')== null)
                      $class = 'btn-success';
                    else
                      $class='btn-danger'; 

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
              $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>FORMADORES)); 
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
<!-- /.content-wrapper -->
<?php $this->load->view('backend/template/footer'); ?>

<script src="<?php echo base_url('assets/plugins/ckeditor/ckeditor.js')?>"></script>
<script>CKEDITOR.replace('descripcion' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>   