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
                <?php echo $this->lang->line('score_noticia_editar_titulo'); ?>
                <a href="<?php echo base_url('index.php/administrador/capacitacion/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nueva'); ?></a>
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
                        <form role="form" enctype="multipart/form-data"  method="post" action="<?php echo base_url('index.php/administrador/capacitacion/guardar');?>">
                          <div class="box-body">
                            <div class="form-group">
                              <label for="titulo">Título <span class="required">*</span></label>
                              <?php echo form_error('titulo', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">                              
                                    <input type="text" class="form-control input-large-text" id="titulo" name="titulo" value="<?php echo set_value('titulo', $noticia->titulo);?>" placeholder="Ingrese el título"/>
                                </div>
                              </div>      
                            </div>
                            
                            <div class="form-group">
                              <label for="resumen">Resumen <span class="required">*</span></label>
                              <?php echo form_error('resumen', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <textarea name="resumen" id="resumen"><?php echo set_value('resumen',$noticia->resumen);?></textarea>
                            </div>
                            
                            <div class="form-group">
                              <label for="contenido">Contenido <span class="required">*</span></label>
                              <?php echo form_error('contenido', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <textarea name="contenido" id="contenido"><?php echo set_value('contenido', $noticia->contenido);?></textarea>
                            </div>
                            
                            <div class="form-group">
                              <label for="vista_previa">Imagen destacada</label>
                              <div class="margin-bottom">
                                <?php if(!is_youtube($noticia->imagen)){ 
                                  $img = base_url('assets/img/noticias/'.$noticia->imagen);
                                }else if($noticia->tipo_contenido=='video'){
                                  $img = $noticia->imagen;                                  
                                }?> 
                                <img class="img-responsive img-centro" src="<?php echo $img;?>" alt="<?php echo $noticia->titulo;?>"/>
                              </div>
                            </div>
                                                        
                            <div class="form-group">
                              <label for="imagen">Cambiar imagen destacada</label>
                              <?php echo form_error('imagen', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <input type="file" name="imagen"/>                
                              <p class="help-block"><?php echo $this->lang->line('score_imagen_upload').'&nbsp;&nbsp;'.$this->lang->line('score_noticia_img_condiciones');?></p>
                            </div>

                            <p><strong>Cambiar la url o el codigo de inserción de un video o audio como noticia principal</strong></p>  
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
                                      <input type="text" class="form-control" name="urlvideo" id="urlvideo" value="<?php echo set_value('urlvideo',$noticia->url_video);?>" placeholder="https://www.youtube.com/..."/>
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
                                      <textarea class="form-control" name="urlaudio" id="urlaudio" rows="5" value="<?php echo set_value('urlaudio',$noticia->url_audio);?>" placeholder="<iframe... "></textarea>
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
                                    <input type="text" class="form-control" name="url" id="url" value="<?php echo set_value('url',$noticia->url);?>" placeholder="http://"/>
                                    <p class="help-block"><?php echo $this->lang->line('score_noticia_url');?></p>                                
                                </div>
                              </div>      
                            </div>
                            
                            <div class="form-group">
                              <label for="fuente">Fuente </label>
                              <div class="row">
                                <div class="col-lg-6">                              
                                    <input type="text" class="form-control" id="fuente" name="fuente" value="<?php echo set_value('fuente', $noticia->fuente);?>" placeholder="Ingrese la fuente de la noticia"/>
                                </div>
                              </div>      
                            </div>                            

                            <div class="form-group">
                              <label for="estado">Estado</label>
                              <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-3"> 
                              <?php
                              if(set_value('estado', $noticia->estado) == PUBLICADO)
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
                               
                               echo form_dropdown($data, $opciones, set_value('estado',$noticia->estado));                               
                              ?>
                                </div>
                              </div> 
                            </div>                          

                          </div>
                          <!-- /.box-body -->
                          <input type="hidden" name="imagen_thumb" id="imagen_thumb" value="<?php echo $noticia->thumb;?>"/>
                          <input type="hidden" name="imagen" id="imagen" value="<?php echo $noticia->imagen; ?>"/>
                          <input type="hidden" name="noticia_id" id="noticia_id" value="<?php echo $noticia->id;?>" />
                          <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
                          <div class="box-footer">
                            <?php
                            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>NOTICIAS)); 
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
    <script>CKEDITOR.replace('contenido' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>
    <script>CKEDITOR.replace('resumen' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>                   
  </body>
</html>