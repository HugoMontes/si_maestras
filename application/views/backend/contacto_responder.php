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
    <link href="<?php echo base_url('assets/plugins/ionicons/css/ionicons.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/AdminLTE.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/skins/_all-skins.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/backend.css')?>" rel="stylesheet"/>
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
                <?php 
                echo $this->lang->line('score_contacto_responder_titulo');
                $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONTACTOS));
                ?>
                <a href="<?php echo base_url($navegacion->navegacion);?>" class="btn btn-default btn-sm title-action">Contactos</a>
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

                </div>
                <!-- /.col-->
              </div>
              <!-- ./row -->
              
              <!-- inicio vistas de respuesta de contacto --> 
              
              <div class="row">
                <!-- inicio datos de contacto-->
                <div class="col-md-6">
                    <div class="box box-info">
                        <div class="box-header with-border">
                          <h3 class="box-title">Datos del contacto <small></small></h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                          </div>
                        </div>

                        <div class="box-body">
                        
                        <div class="post">
                          <div class="user-block">
                            <img class="img-circle img-bordered-sm" src="<?php echo base_url('assets/img/usuarios/default.jpg') ?>" alt="<?php echo $contacto->nombre;?>"/>
                                <span class="username">
                                  <p><?php echo $contacto->nombre;?><br /><?php echo $contacto->email;?></p>
                                </span>
                            <span class="description">Contacto enviado el - <?php echo $contacto->creado; ?></span>
                          </div>

                          <p>
                            <?php echo $contacto->mensaje; ?>                            
                          </p>
                        </div>                        
                            
                        </div>

                        <div class="box-footer text-center">
                          <a href="<?php echo base_url('index.php/administrador/contacto/editar/'.$contacto->id);?>" class="uppercase">Editar contacto</a>
                        </div>

                      </div>                
                </div>
                <!-- fin datos de contacto-->
                
                <!-- inicio respuestas anteriores-->
                <div class="col-md-6">
                    <div class="box box-info">
                        <div class="box-header with-border">
                          <h3 class="box-title">Historial de respuestas enviadas</h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                          </div>
                        </div>

                        <div class="box-body">
                          <div class="table-responsive">
                            <table class="table no-margin respuestas-contacto">
                              <thead>
                              <tr>
                                <th>Respuesta</th>
                                <th>Enviado el</th>
                              </tr>
                              </thead>
                              <tbody>
                              <?php
                              if(count($contacto_respuestas)>0)
                              {
                                  foreach($contacto_respuestas as $contacto_respuesta):
                                  $contacto_respuesta = (object)$contacto_respuesta;
                                  ?>
                                  <tr>
                                    <td><?php echo $contacto_respuesta->respuesta;?></td>
                                    <td><?php echo $contacto_respuesta->creado;?></td>
                                  </tr>                              
                                  <?php
                                  endforeach;
                              }
                              else
                              {
                              ?>
                                  <tr>
                                      <td colspan="2">No se registraron respuestas enviadas previamente</td>
                                  </tr>                                        
                              <?php  
                              }
                              ?>
                              </tbody>
                            </table>
                          </div>
                        </div>
                        <div class="box-footer clearfix">
                        </div>
                      </div>                
                </div>
                <!-- fin respuestas anteriores-->                
              </div> 
              
              <div class="row">
                <!-- inicio formulario de respuesta-->
                <div class="col-md-12">
                  <div class="box box-info">
                    <div class="box-header">
                      <i class="fa fa-envelope"></i>
        
                      <h3 class="box-title">Enviar respuesta</h3>

                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                          </div>

                    </div>
                    <div class="box-body">
                      <form id="form" action="<?php echo base_url('index.php/administrador/contacto/enviar_respuesta')?>" method="post">
                        <div class="form-group">
                          <?php echo form_error('email_destino', '<span class="error-form">', '</span><br/><br/>'); ?> 
                          <input type="email" class="form-control" name="email_destino" placeholder="Correo electrónico de destino" value="<?php echo set_value('email_destino',$contacto->email); ?>"/>
                        </div>
                        <div class="form-group">
                          <?php echo form_error('asunto', '<span class="error-form">', '</span><br/><br/>'); ?> 
                          <input type="text" class="form-control" name="asunto" placeholder="Asunto" value="<?php echo set_value('asunto');?>"/>
                        </div>
                        <div>
                          <?php echo form_error('respuesta', '<span class="error-form">', '</span><br/><br/>'); ?>                         
                          <textarea class="textarea" name="respuesta" placeholder="Mensaje" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                          <?php echo set_value('respuesta');?>
                          </textarea>
                        </div>
                        <input type="hidden" name="contacto_id" id="contacto_id" value="<?php echo $contacto->id;?>" />
                        <input type="hidden" name="guardar" id="guardar" value="<?php echo RESPUESTA; ?>" />                        
                      </form>
                    </div>                      
                    <div class="box-footer clearfix">
                      <button id="enviar" type="button" class="pull-right btn btn-default">Enviar
                        <i class="fa fa-arrow-circle-right"></i>
                       </button>
                    </div>
                  </div>                                  
                </div>
                <!-- finformulario de respuesta -->              
              </div>                                                
              <!-- fin vistas de escritorio -->
                           
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
    <script>$("#enviar").click(function() {$( "#form" ).submit();});</script>
  </body>
</html>