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
                <?php echo $this->lang->line('score_pagina_nuevo_titulo'); ?>
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
                    <!-- inicio formulario -->
                    <form role="form" method="post" action="<?php echo base_url('index.php/administrador/pagina/guardar');?>">
                    <div class="box-body">
                      <div class="form-group">
                        <label for="titulo">Título <span class="required">*</span></label>
                        <?php echo form_error('titulo', '<span class="error-form">', '</span><br/><br/>'); ?>
                        <div class="row">
                            <div class="col-lg-6"> 
                                <input type="text" class="form-control input-large-text" id="titulo" name="titulo" value="<?php echo set_value('titulo'); ?>" placeholder="Ingrese el título"/>
                            </div>
                        </div>        
                      </div>
                      
                     <div class="form-group">
                       <label for="alias">Alias </label>
                       <div class="row">
                           <div class="col-lg-6">                   
                             <input type="text" class="form-control" id="alias" name="alias" value="<?php echo set_value('alias');?>" placeholder="Generar automáticamente desde el título"/>
                             <p class="help-block"><?php echo $this->lang->line('score_pagina_alias_ayuda');?></p>
                           </div>
                       </div>               
                     </div> 
                                                                                     
                     <!-- Inicio editor -->
                      <div class="form-group">
                        <label for="contenido">Contenido <span class="required">*</span></label>
                        <?php echo form_error('contenido', '<span class="error-form">', '</span><br/><br/>'); ?>
                        <textarea name="contenido" id="contenido"><?php echo set_value('contenido');?></textarea>
                      </div> 
                     <!-- Fin editor -->
                     
                      <div class="form-group">
                        <label for="metadescripcion">Metadescripción </label>
                        <div class="row">
                           <div class="col-lg-6"> 
                             <textarea class="form-control" rows="2" name="metadescripcion" id="metadescripcion"><?php echo set_value('metadescripcion');?></textarea>
                             <p class="help-block"><?php echo $this->lang->line('score_pagina_metadescripcion_ayuda');?></p>
                           </div>
                        </div>     
                      </div>

                      <div class="form-group">
                        <label for="metapalabras_clave">Metapalabras clave </label>
                        <div class="row">
                           <div class="col-lg-6"> 
                             <textarea class="form-control" rows="2" name="metapalabras_clave" id="metapalabras_clave"><?php echo set_value('metapalabras_clave');?></textarea>
                             <p class="help-block"><?php echo $this->lang->line('score_pagina_metapalabras_clave_ayuda');?></p>
                           </div>
                        </div>     
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
                    <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO; ?>" />  
                    <div class="box-footer">
                        <?php
                        $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>PAGINAS)); 
                        ?>
                        <a href="<?php echo base_url($navegacion->navegacion); ?>" class="btn btn-default"><?php echo $this->lang->line('score_cerrar'); ?></a>
                        <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('score_guardar');?></button>
                    </div>

                    </form>
                    <!-- fin formulario -->
                                
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
    <script src="<?php echo base_url('assets/plugins/ckeditor/ckeditor.js')?>"></script>          
    <script>CKEDITOR.replace('contenido' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script>        
  </body>
</html>