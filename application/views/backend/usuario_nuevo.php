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
    <link href="<?php echo base_url('assets/css/password.css')?>" rel="stylesheet"/>
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
                <?php echo $this->lang->line('score_usuario_nuevo_titulo'); ?>
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
                        <form role="form" enctype="multipart/form-data"  method="post" action="<?php echo base_url('index.php/administrador/usuario/guardar');?>">
                          <div class="box-body">

                            <!-- begin : nombre usuario -->
                            <div class="form-group">
                              <label for="usuario">Nombre de usuario <span class="required">*</span></label>
                              <?php echo form_error('usuario', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control " id="usuario" name="usuario" value="<?php echo set_value('usuario');?>" placeholder="Nombre de usuario"/>
                                </div>
                              </div>      
                            </div>
                            <!-- end : nombre usuario -->

                            <!-- begin : email -->
                            <div class="form-group">
                              <label for="email">Correo electrónico  <span class="required">*</span></label>
                              <?php echo form_error('email', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control " id="email" name="email" value="<?php echo set_value('email');?>" placeholder="Correo electrónico"/>
                                </div>
                              </div>      
                            </div>
                            <!-- end : email -->   

                            <!-- begin : nombres -->                                                 
                            <div class="form-group">
                              <label for="nombres">Nombres <span class="required">*</span></label>
                              <?php echo form_error('nombres', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control " id="nombres" name="nombres" value="<?php echo set_value('nombres');?>" placeholder="Nombres"/>
                                </div>
                              </div>      
                            </div>
                            <!-- end : nombres -->  

                            <!-- begin : apellidos -->  
                            <div class="form-group">
                              <label for="apellidos">Apellidos <span class="required">*</span></label>
                              <?php echo form_error('apellidos', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control " id="apellidos" name="apellidos" value="<?php echo set_value('apellidos');?>" placeholder="Apellidos"/>
                                </div>
                              </div>      
                            </div>
                            <!-- end : apellidos -->  
                            
                            <!-- begin : fotografia -->  
                            <div class="form-group">
                              <label for="fotografia">Fotografía </label>
                              <input type="file" name="fotografia" />                
                              <p class="help-block"><?php echo $this->lang->line('score_imagen_upload').'&nbsp;&nbsp;'.$this->lang->line('score_usuario_img_condiciones');?></p>
                            </div>
                            <!-- end : fotografia --> 
                            
                            <!-- begin : password --> 
                            <div class="form-group">
                              <label for="password">Contraseña <span class="required">*</span></label>
                              <?php echo form_error('password', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" class="form-control login-field-password" id="password" name="password" value="<?php echo set_value('password');?>"/>
                                    <a href="javascript:generar_password(<?php echo LONGITUD_PASSWORD;?>);" class="btn btn-primary" style="margin-top: 10px;">Generar Contraseña</a>
                                </div>
                              </div>      
                            </div>
                            <!-- end : password -->

                            <!-- begin : aviso -->  
                            <div class="form-group">
                               <label for="">Enviar aviso al usuario</label>
                                <div class="checkbox" style="margin-top: 0px;">
                                   <label>
                                    <input type="checkbox" id="enviar_notificacion" name="enviar_notificacion" value="1"
                                    <?php echo set_checkbox('enviar_notificacion', '1', TRUE); ?> />
                                    <?php echo $this->lang->line('score_usuario_notificacion');?>
                                   </label>
                                </div>  
                            </div>
                            <!-- end : aviso -->

                            <!-- begin : perfil -->                                                                                                             
                            <div class="form-group">
                              <label for="perfil">Perfil</label>
                              <?php echo form_error('perfil', '<span class="error-form">', '</span><br/><br/>'); ?>  
                              <div class="row">
                                <div class="col-lg-6">
                              <?php
                              $data = array(
                                  'name'  => 'perfil',
                                  'id'    => 'perfil',
                                  'class' => 'form-control selectpicker',
                                  'data-style' => 'btn-primary'
                                );
                              $opciones = (array)$perfiles;                               
                              echo form_dropdown($data, $opciones, set_value('perfil'));                              
                              ?>
                                </div>
                              </div> 
                            </div>
                            <!-- end : perfil -->

                            <!-- begin : centro formacion -->                                                                                                             
                            <div id="form-group-centro-formacion" class="form-group">
                              <label for="centro">Centro de formación</label>
                              <?php echo form_error('centro', '<span class="error-form">', '</span><br/><br/>'); ?>  
                              <div class="row">
                                <div class="col-lg-6">
                              <?php
                              $data = array(
                                  'name'  => 'centro',
                                  'id'    => 'centro',
                                  'class' => 'form-control selectpicker',
                                  'data-style' => 'btn-info'
                                );
                              $opciones = (array)$centros;                               
                              echo form_dropdown($data, $opciones, set_value('centro'));                              
                              ?>
                                </div>
                              </div> 
                            </div>
                            <!-- end : centro formacion -->
                                                 
                            <!-- begin : estado --> 
                            <div class="form-group">
                              <label for="estado">Estado</label>
                              <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>  
                              <div class="row">
                                <div class="col-lg-3">
                              <?php
                              if(set_value('estado') == HABILITADO OR set_value('estado')== null)
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
                                  HABILITADO  => 'Habilitado',
                                  DESHABILITADO  => 'Deshabilitado'
                               );               
                               echo form_dropdown($data, $opciones, set_value('estado'));                               
                              ?>
                                </div>
                              </div> 
                            </div>                          
                            <!-- end : estado -->

                          </div>
                          <!-- /.box-body -->
                          <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO; ?>" />  
                          <div class="box-footer">
                            <?php
                            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>USUARIOS)); 
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
    <script src="<?php echo base_url('assets/js/password.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/backend.js')?>"></script>
    <script>$('#password').hidePassword(true);</script>
    <script>
      $('#perfil').on('change',function(){
        if($(this).val()==1){
          $('#form-group-centro-formacion').hide();
        }else if($(this).val()==2){
          $('#form-group-centro-formacion').show();
        }
      });
    </script>
  </body>
</html>