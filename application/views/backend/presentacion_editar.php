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
                <?php echo $this->lang->line('score_presentacion_editar_titulo'); ?>
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
                        <form role="form" enctype="multipart/form-data"  method="post" action="<?php echo base_url('index.php/administrador/presentacion/guardar');?>">
                          <div class="box-body">

                            <div class="form-group">
                              <label for="contenido">Texto de presentación <span class="required">*</span></label>
                              <?php echo form_error('contenido', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <textarea name="contenido" id="contenido"><?php echo set_value('contenido', $presentacion->contenido);?></textarea>
                            </div>                                                       


                            <?php
                            if(!empty($presentacion->imagen_fondo))
                            {
                                $label_imagen = 'Cambiar imagen de fondo';  
                            ?>
                            <div id="vista_previa" class="form-group">
                              <label for="vista_previa">Imagen de fondo</label>
                              <br/><a class="btn btn-danger" href="javascript:remover_imagen_fondo();">Remover imagen de fondo</a>
                              <div class="margin-bottom">
                                  <img class="img-responsive img-centro" src="<?php echo base_url('assets/img/presentacion/'.$presentacion->imagen_fondo); ?>" alt="<?php echo $presentacion->imagen_fondo;?>"/>
                              </div>
                            </div>
                            <?php    
                            }
                            else
                            {
                                $label_imagen = 'Imagen de fondo';
                            }
                            ?>
                                                                         
                            <div class="form-group">
                              <label for="imagen_fondo"><?php echo $label_imagen; ?> </label>  
                              <?php echo form_error('imagen_fondo', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <input type="file" name="imagen_fondo"/>                
                              <p class="help-block"><?php echo $this->lang->line('score_imagen_upload').'&nbsp;&nbsp;'.$this->lang->line('score_presentacion_img_condiciones');?></p>                             
                            </div>
                           
                            <div class="form-group">
                              <label for="url_video">Url video </label>
                              <div class="row">
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="url_video" id="url_video" value="<?php echo set_value('url_video', $presentacion->url_video);?>" placeholder="https://www.youtube.com/watch?v=XXXX  ó  https://vimeo.com/XXXX"/>
                                    <p class="help-block"><?php echo $this->lang->line('score_presentacion_url_video');?></p>
                                  </div>
                              </div>      
                            </div>
                            
                            <?php 
                            //var_dump($presentacion);
                            ?>
                            
                            <div class="form-group">
                              <label for="titulo_enlace">Enlaces de píe de presentación </label>

                              <div class="row margin-top-normal">
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="titulo_enlace_1" id="titulo_enlace_1" value="<?php echo set_value('titulo_enlace_1', $presentacion->titulo_enlace_1);?>" placeholder="Título del enlace 1"/>
                                  </div>
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="url_enlace_1" id="url_enlace_1" value="<?php echo set_value('url_enlace_1', $presentacion->url_enlace_1);?>" placeholder="Url del enlace 1"/>
                                  </div>                                  
                              </div>  
                              
                              <div class="row margin-top-normal">
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="titulo_enlace_2" id="titulo_enlace_2" value="<?php echo set_value('titulo_enlace_2', $presentacion->titulo_enlace_2);?>" placeholder="Título del enlace 2"/>
                                  </div>
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="url_enlace_2" id="url_enlace_2" value="<?php echo set_value('url_enlace_2', $presentacion->url_enlace_2);?>" placeholder="Url del enlace 2"/>
                                  </div>                                  
                              </div>  

                              <div class="row margin-top-normal">
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="titulo_enlace_3" id="titulo_enlace_3" value="<?php echo set_value('titulo_enlace_3', $presentacion->titulo_enlace_3);?>" placeholder="Título del enlace 3"/>
                                  </div>
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="url_enlace_3" id="url_enlace_3" value="<?php echo set_value('url_enlace_3', $presentacion->url_enlace_3);?>" placeholder="Url del enlace 3"/>
                                  </div>                                  
                              </div>  
                              
                              <div class="row margin-top-normal">
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="titulo_enlace_4" id="titulo_enlace_4" value="<?php echo set_value('titulo_enlace_4', $presentacion->titulo_enlace_4);?>" placeholder="Título del enlace 4"/>
                                  </div>
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="url_enlace_4" id="url_enlace_4" value="<?php echo set_value('url_enlace_4', $presentacion->url_enlace_4);?>" placeholder="Url del enlace 4"/>
                                  </div>                                  
                              </div>  

                              <div class="row margin-top-normal">
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="titulo_enlace_5" id="titulo_enlace_5" value="<?php echo set_value('titulo_enlace_5', $presentacion->titulo_enlace_5);?>" placeholder="Título del enlace 5"/>
                                  </div>
                                  <div class="col-lg-6">  
                                    <input type="text" class="form-control" name="url_enlace_5" id="url_enlace_5" value="<?php echo set_value('url_enlace_5', $presentacion->url_enlace_5);?>" placeholder="Url del enlace 5"/>
                                  </div>                                  
                              </div>  
                              
                              <p class="help-block"><?php echo $this->lang->line('score_presentacion_enlace_pie');?></p>                                                                                                                                                          
                            </div>                            

                            <div class="form-group">
                              <label for="estado">Estado</label>
                              <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                  <div class="col-lg-3">    
                                  <?php
                                  if(set_value('estado', $presentacion->estado) == PUBLICADO)
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
                                   
                                   echo form_dropdown($data, $opciones, set_value('estado',$presentacion->estado));
                                  ?> 
                                  </div>
                              </div>    
                            </div>                          

                          </div>
                          <!-- /.box-body -->
                          <input type="hidden" name="imagen_fondo" id="imagen_fondo" value="<?php echo $presentacion->imagen_fondo; ?>"/>
                          <input type="hidden" name="presentacion_id" id="presentacion_id" value="<?php echo $presentacion->id;?>" />
                          <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
                          <div class="box-footer">
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
    <script>CKEDITOR.replace('contenido' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>            
  </body>
</html>