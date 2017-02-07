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
    <link href="<?php echo base_url('assets/plugins/iCheck/all.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/plugins/select2/select2.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/AdminLTE.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/skins/_all-skins.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/backend.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/backend_pagination.css')?>" rel="stylesheet"/>
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
            <p><a href="javascript:menu_pagina_editar('<?php echo base_url('index.php/administrador/menu_pagina/editar/');?>')"><?php echo $this->lang->line('score_menu_tipo_pagina');?></a></p>
            <p><a href="javascript:menu_url_editar('<?php echo base_url('index.php/administrador/menu_url/editar/');?>')"><?php echo $this->lang->line('score_menu_tipo_url'); ?></a></p>     
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->
    
    <!-- Modal -->
    <div class="modal fade" id="modal-paginas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h3 class="modal-title" id="myModalLabel">Seleccionar o cambiar la página</h3>
          </div>
          <div class="modal-body">
          <!-- Custom Tabs -->
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Páginas creadas</a></li>
              <li><a href="#tab_2" data-toggle="tab">Páginas prediseñadas</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
              <!-- inicio tabla paginas creadas -->
              <div id="browse_table">
                <table id="tabla-paginas" class="table table-hover table-bordered">
                  <thead>
                    <tr class="headers">
                      <th>Titulo</th>
                      <th>Autor</th>
                      <th>Creado</th>
                      <th>Estado</th>
                      <th>ID</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    //var_dump($paginas);
                    foreach ($paginas as $pagina):
                    $pagina = (object) $pagina;
                    ?>
                    <tr>
                        <td class="row-title"><a href="javascript:set_pagina(<?php echo $pagina->id; ?>,'<?php echo $pagina->titulo; ?>',<?php echo PAGINA_CREADA ?>);"><?php echo $pagina->titulo?></a></td>
                        <td><?php echo get_autor($pagina->creado_por);?></td>
                        <td><?php echo $pagina->creado?></td>
                        <td> 
                            <?php 
                            if($pagina->estado == PUBLICADO)
                            {
                                ?>
                                <span class="label label-success">Publicado</span>
                                <?php   
                            }
                            else
                            {
                                ?>
                                <span class="label label-danger">Despublicado</span>
                                <?php
                            }
                            ?>                                 
                        </td>
                        <td><?php echo $pagina->id?></td>
                    </tr>
                    <?php
                    endforeach;
                    ?>
                  </tbody>
                </table>
              </div>                                
              <!-- fin tabla paginas creadas -->   
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
              <!-- inicio tabla paginas predisenadas -->
              <div id="browse_table">
                <table id="tabla-paginas" class="table table-hover table-bordered">
                  <thead>
                    <tr class="headers">
                      <th>Titulo</th>
                      <th>Creado</th>
                      <th>Estado</th>
                      <th>ID</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    //var_dump($paginas);
                    foreach ($paginas_predisenadas as $pagina_predisenada):
                    $pagina_predisenada = (object) $pagina_predisenada;
                    ?>
                    <tr>
                        <td class="row-title"><a href="javascript:set_pagina(<?php echo $pagina_predisenada->id; ?>,'<?php echo $pagina_predisenada->titulo; ?>', <?php echo PAGINA_PREDISENADA;  ?>);"><?php echo $pagina_predisenada->titulo?></a></td>
                        <td><?php echo $pagina_predisenada->creado?></td>
                        <td> 
                            <?php 
                            if($pagina_predisenada->estado == PUBLICADO)
                            {
                                ?>
                                <span class="label label-success">Publicado</span>
                                <?php   
                            }
                            else
                            {
                                ?>
                                <span class="label label-danger">Despublicado</span>
                                <?php
                            }
                            ?>                                 
                        </td>
                        <td><?php echo $pagina_predisenada->id?></td>
                    </tr>
                    <?php
                    endforeach;
                    ?>
                  </tbody>
                </table>
              </div>                                
              <!-- fin tabla paginas predisenadas --> 
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- nav-tabs-custom -->
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
                <?php echo $this->lang->line('score_menu_editar_titulo');?>
                <a href="<?php echo base_url('index.php/administrador/menu/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nuevo'); ?></a>
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
                        <form id="form-menu" role="form"  method="post" action="<?php echo base_url('index.php/administrador/menu_pagina/guardar');?>">
                          <div class="box-body">
                            <div class="form-group">
                              <label for="titulo">Título <span class="required">*</span></label>
                              <?php echo form_error('titulo', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                  <div class="col-lg-6">                                  
                                    <input type="text" class="form-control input-large-text" id="titulo" name="titulo" value="<?php echo set_value('titulo',$menu->titulo);?>" placeholder="Ingrese el título"/>
                                  </div>
                              </div>      
                            </div>

                            <div class="form-group">
                              <label for="tipo_nombre">Tipo de elemento del menú <span class="required">*</span></label>
                              <?php echo form_error('tipo', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <input type="hidden" class="form-control" id="tipo" name="tipo" value="<?php echo set_value('tipo',$menu->tipo);?>"/>
                              <div class="row">
                                  <div class="col-lg-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="tipo_nombre" name="tipo_nombre" value="<?php echo $this->lang->line('score_menu_tipo_pagina');?>" disabled="disabled"/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-menu-tipo"><i class="fa fa-list-ul"></i>&nbsp; Seleccionar</button>
                                        </span>
                                    </div>  
                                  </div>
                              </div>                               
                            </div>
                            
                            <?php //var_dump($pagina_); ?>
                            
                            <div class="form-group">
                              <label for="tipo_nombre">Seleccionar página <span class="required">*</span></label>
                              <?php echo form_error('pagina_id', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <?php echo form_error('pagina_tipo', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <input type="hidden" class="form-control" id="pagina_id" name="pagina_id" value="<?php echo set_value('pagina_id',$pagina_->id);?>"/>
                              <input type="hidden" class="form-control" id="pagina_tipo" name="pagina_tipo" value="<?php echo set_value('pagina_tipo',$pagina_tipo);?>"/>                                                           
                              <div class="row">
                                  <div class="col-lg-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="pagina_nombre" name="pagina_nombre" value="<?php echo set_value('pagina_nombre',$pagina_->titulo);?>" readonly="readonly"/>
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button" data-toggle="modal" data-target="#modal-paginas"><i class="fa fa-file-o"></i>&nbsp; Seleccionar</button>
                                        </span>
                                    </div>  
                                  </div>
                              </div>                               
                            </div>
                                               
                            <?php //var_dump($menu); ?>                         
                            <div class="form-group">
                              <label for="enlace">Enlace </label>
                              <div class="row">
                                  <div class="col-lg-6">                   
                                    <input type="text" class="form-control" id="enlace" name="enlace" value="<?php echo set_value('enlace',$menu->enlace);?>" placeholder="El enlace estará disponible después de guardar" readonly="readonly"/>
                                    <p class="help-block">El enlace estará disponible después de guardar</p>                                  
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
                                   
                                   echo form_dropdown($data, $opciones, set_value('abrir_en',$menu->abrir_en));
                                   
                                   //var_dump($opciones);
                                   
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
                                   
                                  echo form_dropdown($data, $opciones, set_value('padre_id',$menu->padre_id));                               
                                  ?>
                                  </div>
                              </div>     
                            </div>
                            
                            
                            <?php //var_dump($hermanos); ?>
                            
                            <div class="form-group">
                              <label for="orden">Orden</label>
                              <?php echo form_error('orden', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                  <div class="col-lg-3">  
                                  <?php
                                  $data = array(
                                      'name'  => 'orden',
                                      'id'    => 'orden',
                                      'class' => 'form-control selectpicker',
                                      'data-style' => 'btn-info'
                                      
                                    );
                                  $opciones = $hermanos;
                                  
                                  /*if(set_value('orden') == PRIMERO OR set_value('orden') == ULTIMO)
                                    $selected = $menu->id;
                                  else
                                    $selected = set_value('orden');*/
                                  
                                  echo form_dropdown($data, $opciones, set_value('orden',$menu->id)); 
                                  ?> 
                                  </div>
                              </div>    
                            </div>                                                        
              
                            <div class="form-group">
                              <label for="estado">Estado</label>
                              <?php echo form_error('estado', '<span class="error-form">', '</span><br/><br/>'); ?>
                              <div class="row">
                                  <div class="col-lg-3">  
                                  <?php
                                  if(set_value('estado', $menu->estado) == PUBLICADO)
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
                                   
                                   echo form_dropdown($data, $opciones,set_value('estado',$menu->estado));
                                   
                                  ?>
                                  </div>
                              </div>      
                            </div> 
                                                  
                          </div>
                          <!-- /.box-body -->
                          <input type="hidden" name="menu_id" id="menu_id" value="<?php echo $menu->id; ?>" />
                          <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
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
    <script src="<?php echo base_url('assets/plugins/select2/select2.full.min.js')?>"></script>
    <script src="<?php echo base_url('assets/plugins/iCheck/icheck.min.js')?>"></script>
    <script src="<?php echo base_url('assets/plugins/fastclick/fastclick.js')?>"></script>
    <script src="<?php echo base_url('assets/js/app.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/demo.js')?>"></script>
    <script src="<?php echo base_url('assets/js/bootstrap-select.min.js')?>"></script>
    <script src="<?php echo base_url('assets/js/backend.js')?>"></script>
  </body>
</html>