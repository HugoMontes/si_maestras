<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><?php echo $titulo; ?></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <link rel="icon" href="<?=base_url()?>/favicon.png" type="image/png"/>
    <link href="<?php echo base_url('assets/css/bootstrap.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/fonts/css/font-awesome.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/AdminLTE.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/skins/_all-skins.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/backend.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/bootstrap-select.min.css')?>" rel="stylesheet"/>     
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
      <?php
        $this->load->view('backend/comunes/sidebar');
        $this->load->view('backend/comunes/cabecera');
      ?>  
      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
              <h1>
                <?php echo $this->lang->line('score_formador_editar_titulo'); ?>
                <a href="<?php echo base_url('index.php/administrador/formador/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nuevo'); ?></a>
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
                                    <input type="text" class="form-control" id="nombres" name="nombres" value="<?php echo set_value('nombres',$formador->nombres);?>" placeholder="Ingrese los nombres"/>
                                </div>
                              </div>      
                            </div>
                            <div class="form-group">
                              <label for="apellidos">Apellidos <span class="required">*</span></label>
                              <?php echo form_error('apellidos', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="apellidos" name="apellidos" value="<?php echo set_value('apellidos',$formador->apellidos);?>" placeholder="Ingrese los apellidos"/>
                                </div>
                              </div>  
                            </div>
                            
                            <?php
                            if(!empty($formador->fotografia))
                            {
                                $label_fotografia = 'Cambiar fotografía';  
                            ?>
                            <div id="vista_previa" class="form-group">
                              <label for="vista_previa">Fotografía</label>
                              <br/><a class="btn btn-danger" href="javascript:remover_fotografia();">Remover fotografía</a> 
                              <div class="margin-bottom">
                                  <img class="img-responsive img-centro" src="<?php echo base_url('assets/img/formadores/'.$formador->fotografia); ?>" alt="<?php echo $formador->fotografia;?>"/>
                              </div>
                            </div>
                            <?php    
                            }
                            else
                            {
                                $label_fotografia = 'Fotografía';
                            }
                            ?>
                                                        
                            <div class="form-group">
                              <label for="fotografia"><?php echo $label_fotografia; ?></label>
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
                               
                               echo form_dropdown($data, $opciones, set_value('genero', $formador->genero));                               
                              ?>
                                </div>
                              </div> 
                            </div> 
                                                 
                            <div class="form-group">
                              <label for="formador">Tipo de formador <span class="required">*</span></label>
                              <?php echo form_error('formador', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" id="formador" name="formador" value="<?php echo set_value('formador',$formador->formador);?>" placeholder="Ingrese el tipo de formador"/>
                                </div>
                              </div>      
                            </div>
                            
                            <div class="form-group">
                              <label for="descripcion">Descripcion <span class="required">*</span></label>
                              <?php echo form_error('descripcion', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <textarea name="descripcion" id="descripcion"><?php echo set_value('descripcion',$formador->descripcion);?></textarea>
                            </div>

                            <div class="form-group">
                              <label for="estado">Estado</label>
                              <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>  
                              <div class="row">
                                <div class="col-lg-3">
                              <?php
                              if(set_value('estado', $formador->estado) == PUBLICADO)
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
                               
                               echo form_dropdown($data, $opciones, set_value('estado',$formador->estado));                               
                              ?> 
                                </div>
                              </div>
                            </div>                          

                          </div>
                          <!-- /.box-body -->
                          <input type="hidden" name="fotografia" id="fotografia" value="<?php echo $formador->fotografia; ?>"/>
                          <input type="hidden" name="fotografia_thumb" id="fotografia_thumb" value="<?php echo $formador->thumb; ?>"/>                          
                          <input type="hidden" name="formador_id" id="formador_id" value="<?php echo $formador->id;?>" />
                          <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
                          <div class="box-footer">
                            <?php
                            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>FORMADORES)); 
                            ?>
                            <a href="<?php echo base_url($navegacion->navegacion); ?>" class="btn btn-default"><?php echo $this->lang->line('score_cerrar'); ?></a>
                            <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('score_guardar');?></button>
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
        <?php
        $this->load->view('backend/comunes/pie');
        ?>  
    </div>
    <!-- ./wrapper -->
    
    <script src="<?php echo base_url('assets/plugins/jQuery/jquery-2.2.3.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>
    <script src="<?php echo base_url('assets/plugins/fastclick/fastclick.js')?>"></script>
    <script src="<?php echo base_url('assets/js/app.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/demo.js')?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap-select.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/backend.js')?>"></script>
    <script src="<?php echo base_url('assets/plugins/ckeditor/ckeditor.js')?>"></script>
    <script>CKEDITOR.replace('descripcion' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>
  </body>
</html>