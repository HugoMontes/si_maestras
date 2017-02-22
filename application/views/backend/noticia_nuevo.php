<?php $perfil=$this->session->userdata('usuario')['perfil_id']; ?>
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
                Añadir nueva: <?php echo $titulo; ?>
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
                        <form role="form" enctype="multipart/form-data"  method="post" action="<?php echo base_url('index.php/administrador/noticia/guardar');?>">
                          <div class="box-body">
                            <div class="form-group">
                              <label for="titulo">Título <span class="required">*</span></label>
                              <?php echo form_error('titulo', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6"> 
                                    <input type="text" class="form-control input-large-text" id="titulo" name="titulo" value="<?php echo set_value('titulo');?>" placeholder="Ingrese el título"/>
                                </div>
                              </div>      
                            </div>
                            <div class="form-group">
                              <label for="resumen">Resumen <span class="required">*</span></label>
                              <?php echo form_error('resumen', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <textarea name="resumen" id="resumen"><?php echo set_value('resumen');?></textarea>
                            </div>

                            <div class="form-group">
                              <label for="contenido">Contenido <span class="required">*</span></label>
                              <?php echo form_error('contenido', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <textarea name="contenido" id="contenido"><?php echo set_value('contenido');?></textarea>
                            </div>

                            <div class="form-group">
                              <label for="imagen">Imagen destacada </label>
                              <?php echo form_error('imagen', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <input type="file" name="imagen" />                
                              <p class="help-block"><?php echo $this->lang->line('score_imagen_upload').'&nbsp;&nbsp;'.$this->lang->line('score_noticia_img_condiciones');?></p>
                            </div>

                            <p><strong>Ingresar la url o el codigo de inserción de un video o audio como elemento principal (Opcional)</strong></p>  
                            <!-- Start: Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                              <li role="presentation" class="active"><a href="#video" aria-controls="video" role="tab" data-toggle="tab">Video</a></li>
                              <li role="presentation"><a href="#audio" aria-controls="audio" role="tab" data-toggle="tab">Audio</a></li>
                            </ul>
                            <!-- End: Nav tabs -->

                            <!-- Start: Tab panes -->
                            <div class="tab-content">
                              <div role="tabpanel" class="tab-pane active" id="video">
                                <div class="panel panel-default">
                                  <div class="panel-body">
                                    <div class="form-group">
                                      <label for="urlvideo">Url externa del video</label>
                                      <?php echo form_error('urlvideo', '<span class="error-form">', '</span><br/><br/>'); ?>
                                      <input type="text" class="form-control" name="urlvideo" id="urlvideo" value="<?php echo set_value('urlvideo');?>" placeholder="https://www.youtube.com/..."/>
                                      <p class="help-block">Ingresar la direccion del video <a href="https://www.youtube.com">youtube</a> que se desea reproducir.</p>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div role="tabpanel" class="tab-pane" id="audio">
                                <div class="panel panel-default">
                                  <div class="panel-body">
                                    <div class="form-group">
                                      <label for="urlaudio">Código de inserción del audio</label>
                                      <?php echo form_error('urlaudio', '<span class="error-form">', '</span><br/><br/>'); ?>
                                      <textarea class="form-control" name="urlaudio" id="urlaudio" rows="5" value="<?php echo set_value('urlaudio');?>" placeholder="<iframe... "></textarea>
                                      <p class="help-block">Ingresar el codigo envebido de audio <a href="https://soundcloud.com/">soundcloud</a>.</p>    
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- End: Tab panes -->

                            <div class="form-group">
                              <label for="url">Url externa </label>
                              <?php echo form_error('url', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control" name="url" id="url" value="<?php echo set_value('url');?>" placeholder="http://"/>
                                    <p class="help-block"><?php echo $this->lang->line('score_noticia_url');?></p>
                                </div>
                              </div>      
                            </div>
                            
                            <div class="form-group">
                              <label for="fuente">Fuente </label>
                              <div class="row">
                                <div class="col-lg-6">                              
                                    <input type="text" class="form-control" id="fuente" name="fuente" value="<?php echo set_value('fuente');?>" placeholder="Ingrese la fuente de la noticia"/>
                                </div>
                              </div>      
                            </div>                             
                            
                            <?php if ($perfil==1){ ?>
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
                            <?php }else{ ?>
                              <input type="hidden" name="estado" value="<?php echo DESPUBLICADO; ?>">
                            <?php } ?>                       

                          </div>
                          <!-- /.box-body -->
                          <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO; ?>" />  
                          <div class="box-footer">
                            <?php
                              $navegacion = $this->navegacion_model->get_values('navegacion',array('id'=>$id_navegacion));
                            ?>
                            <input type="hidden" name="grupo" value="<?php echo $id_grupo; ?>">
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
    <script src="<?php echo base_url('assets/js/editor-html.js')?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap-select.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/backend.js')?>"></script>
    <script src="<?php echo base_url('assets/plugins/ckeditor/ckeditor.js')?>"></script>  
    <script>CKEDITOR.replace('contenido' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>
    <script>CKEDITOR.replace('resumen' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>              
    <script src="<?php echo base_url('assets/js/valida-noticia-maestras.js')?>"></script> 
  </body>
</html>