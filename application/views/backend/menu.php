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
    <!-- Modal -->
    <div class="modal fade" id="modal-menu-tipo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h3 class="modal-title" id="myModalLabel">Tipo de elemento del menú</h3>
          </div>
          <div class="modal-body">
            <p><a href="javascript:menu_pagina_nuevo('<?php echo base_url('index.php/administrador/menu_pagina/nuevo');?>')"><?php echo $this->lang->line('score_menu_tipo_pagina');?></a></p>
            <p><a href="javascript:menu_url_nuevo('<?php echo base_url('index.php/administrador/menu_url/nuevo');?>')"><?php echo $this->lang->line('score_menu_tipo_url'); ?></a></p>          
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->

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
                <?php echo $this->lang->line('score_menu_nuevo_titulo');?>
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
                        <form id="form-menu" role="form"  method="post" action="<?php echo base_url('index.php/administrador/menu/guardar');?>">
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
                              <label for="tipo_nombre">Tipo de elemento del menú <span class="required">*</span></label>
                              <?php echo form_error('tipo', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <input type="hidden" class="form-control" id="tipo" name="tipo" value="<?php echo set_value('tipo');?>"/>
                              <div class="row">
                                  <div class="col-lg-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="tipo_nombre" name="tipo_nombre" value="<?php echo set_value('tipo_nombre');?>" disabled="disabled"/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-menu-tipo"><i class="fa fa-list-ul"></i>&nbsp; Seleccionar</button>
                                        </span>
                                    </div>  
                                  </div>
                              </div>                               
                            </div>
                                
                            <div class="form-group">
                              <label for="enlace">Enlace </label>
                              <div class="row">
                                  <div class="col-lg-6">                    
                                    <input type="text" class="form-control" id="enlace" name="enlace" value="<?php echo set_value('enlace');?>" placeholder="" readonly="readonly"/>
                                  </div>
                              </div>               
                            </div>   
                                
                            <div class="form-group">
                              <label for="abrir_en">Abrir en</label>
                              <?php echo form_error('abrir_en', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                  <div class="col-lg-3">   
                                  <?php
                                  $data = array(
                                      'name'  => 'abrir_en',
                                      'id'    => 'abrir_en',
                                      'class' => 'form-control selectpicker',
                                      'data-style' => 'btn-default'
                                    );
                                  $opciones = array(
                                      MISMA_VENTANA  => 'Misma ventana',
                                      NUEVA_VENTANA  => 'Nueva ventana'
                                   ); 
                                   
                                   echo form_dropdown($data, $opciones, set_value('abrir_en'));
                                   
                                  ?>
                                  </div>
                              </div>     
                            </div>                          

                            <div class="form-group">
                              <label for="padre_id">Elemento principal</label>
                              <?php echo form_error('padre_id', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                  <div class="col-lg-3">   
                                  <?php
                                  $data = array(
                                      'name'  => 'padre_id',
                                      'id'    => 'padre_id',
                                      'class' => 'form-control selectpicker',
                                      'data-style' => 'btn-primary'
                                    );
                                     
                                  $opciones = $menus;
                                   
                                  echo form_dropdown($data, $opciones, set_value('padre_id'));                               
                                  ?>
                                  </div>
                              </div>     
                            </div>
                            
                            <div class="form-group">
                              <label for="orden">Orden</label>
                              <p><?php echo $this->lang->line('score_orden'); ?></p>
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
                            $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>MENUS)); 
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
  </body>
</html>