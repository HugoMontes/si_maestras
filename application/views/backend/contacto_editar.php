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
    <link href="<?php echo base_url('assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')?>" rel="stylesheet"/>  
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
                <?php echo $this->lang->line('score_contacto_editar_titulo'); ?>
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
                        <form method="post" action="<?php echo base_url('index.php/administrador/contacto/guardar');?>">
                          <div class="box-body">
                            <div class="form-group">
                              <label for="nombre">Nombre <span class="required">*</span></label>
                              <?php echo form_error('nombre', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">                              
                                    <input type="text" class="form-control input-large-text" id="nombre" name="nombre" value="<?php echo set_value('nombre', $contacto->nombre);?>" placeholder="Ingrese el nombre"/>
                                </div>
                              </div>      
                            </div>
                            
                            <div class="form-group">
                              <label for="email">Correo electrónico <span class="required">*</span></label>
                              <?php echo form_error('email', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">                              
                                    <input type="text" class="form-control" id="email" name="email" value="<?php echo set_value('email', $contacto->email);?>" placeholder="Ingrese el correo electrónico"/>
                                </div>
                              </div>  
                            </div>
                                                        
                            <div class="form-group">
                              <label for="mensaje">Mensaje <span class="required">*</span></label>
                              <?php echo form_error('mensaje', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <textarea class="textarea" name="mensaje" id="mensaje" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"><?php echo set_value('mensaje',$contacto->mensaje);?></textarea>
                            </div>
                                                    

                          </div>
                          <!-- /.box-body -->
                          <input type="hidden" name="contacto_id" id="contacto_id" value="<?php echo $contacto->id;?>" />
                          <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
                          <div class="box-footer">
                            <?php
                            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS)); 
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
    <script src="<?php echo base_url('assets/js/backend.js')?>"></script>
    <script src="<?php echo base_url('assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js')?>"></script>
    <script>$(".textarea").wysihtml5();</script>                 
  </body>
</html>