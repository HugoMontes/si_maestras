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
    <link href="<?php echo base_url('assets/css/backend_pagination.css')?>" rel="stylesheet"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<?php $usuario_sesion = get_user_session(); ?>
    <!-- Inicio Modal -->
    <div class="modal fade" id="modal-eliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h3 class="modal-title" id="myModalLabel">Mensaje</h3>
          </div>
          <div class="modal-body">
            <p><?php echo $this->lang->line('score_usuario_eliminar_confirmacion');?></p>
            <p><div id="nombre_eliminar"></div></p>
          </div>
          <div class="modal-footer">
            <a id="enlace_eliminar" href="javascript:;" class="btn btn-primary">Aceptar</a>
            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fin Modal --> 
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
                <?php echo $this->lang->line('score_usuarios');?>
                <a href="<?php echo base_url('index.php/administrador/usuario/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nuevo'); ?></a>
                <small></small>
              </h1>
            </section>
    
            <!-- Main content -->
            <section class="content">
              <div class="row">
                <div class="col-md-12">
                <!-- inicio cuadro mensaje -->  
                <input type="hidden" name="accion_eliminar" id="accion_eliminar" value="<?php echo base_url('index.php/administrador/usuario/eliminar');?>" />
                <input type="hidden" name="accion_habilitar" id="accion_habilitar" value="<?php echo base_url('index.php/administrador/usuario/habilitar');?>" />
                <input type="hidden" name="accion_habilitar_mensaje" id="accion_habilitar_mensaje" value="<?php echo base_url('index.php/administrador/usuario/habilitar_mensaje');?>" />
                <div id="contenido_ajax">
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
                </div>              

                <!-- fin cuadro mensaje  -->                
                  <div class="box box-primary">
                    <div class="box-header" style="padding-bottom: 0px;">
                      <div class="box-tools-custom">  
                        <div class="form-group">
                          <div class="row">
                              <div class="col-lg-6 margin-top-normal">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="apellidos" name="apellidos" value="<?php echo $buscar; ?>" placeholder="<?php echo $this->lang->line('score_buscar');?>"/>
                                    <span class="input-group-btn">
                                        <a id="buscar-apellidos" href="" class="btn btn-primary" onclick="buscar_apellidos('<?php echo base_url('index.php/administrador/usuario');?>');"><i class="fa fa-search"></i>&nbsp; Buscar</a>
                                    </span>
                                    
                                    <span class="input-group-btn">
                                        <a href="<?php echo base_url('index.php/administrador/usuario'); ?>" class="btn btn-default" style="margin-left: 10px;"> Limpiar</a>
                                    </span>
                                    <div class="margin-left-normal">                                                                                                                                         
                                    <?php
                                      $data = array(
                                          'name'  => 'perfil',
                                          'id'    => 'perfil',
                                          'class' => 'form-control'
                                        );
                                      $opciones = (array)$perfiles;                               
                                      $evento = "'".base_url('index.php/administrador/usuario')."'" ;
                                      echo form_dropdown($data, $opciones, set_value('perfil',$opcion_perfil),'onChange="buscar_perfil('.$evento.')"');                              
                                    ?>
                                    </div>
                                </div>  
                              </div>
                              <div class="col-lg-6 margin-top-normal">
                                <div class="pager">
                                    <ul>
                                        <li class="results">Páginas:</li>
                                        <?=$this->page->create_links();?>
                                    </ul>                                    
                                </div>                
                              </div>
                          </div>                               
                        </div>
                      </div>                         
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">                                          
                    <div class="clr"></div>
                    <!-- inicio tabla -->
                    <div id="browse_table">
                    <p style="text-align: right;">Mostrando <?=$this->page->page_stats();?></p>
                    <table id="browse_table" class="table table-hover table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr class="headers">
                          <th class="first" scope="col"><div>Apellidos<ul class="sort"><li class="up"><?=$this->page->create_sort_link('apellidos', 'asc'); ?></li><li class="down"><?=$this->page->create_sort_link('apellidos', 'desc'); ?></li></ul></div></th>
                          <th scope="col">Nombres</th>
                          <th scope="col">Usuario</th>
                          <th scope="col">Centro de formación</th>
                          <th scope="col">Fecha de la última visita</th>
                          <th scope="col">Fecha de registro</th>
                          <th scope="col" class="col-id" style="text-align: center;">ID</th>
                          <th scope="col" class="col-estado" style="text-align: center;">Estado</th>
                          <th scope="col" class="col-opciones" style="text-align: center;">Opciones</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        if(count($usuarios)>0)
                        {
                        foreach ($usuarios as $usuario):
                        $usuario = (object) $usuario;
                        ?>
                        <tr>
                            <td class="row-title"><a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$usuario->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $usuario->apellidos?></a></td>                          
                            <td class="row-title"><a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$usuario->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $usuario->nombres?></a></td>                         
                            <td><?php echo $usuario->usuario; ?></td>
                            <?php
                              $centro_formacion='';
                              if($this->centro_model->exists('id',$usuario->centro_formacion)){
                                $centro = $this->centro_model->get_values('descripcion',array('id'=>$usuario->centro_formacion));
                                $centro_formacion=strtoupper($centro->descripcion);
                              }else{
                                $centro_formacion='CABOCO';                            
                              }
                            ?>
                            <td><?php echo $centro_formacion; ?></td>
                            <td>
                            <?php 
                            if($usuario->ultima_visita == '0000-00-00 00:00:00')
                                echo 'Nunca';
                            else
                                echo $usuario->ultima_visita;
                            ?>
                            </td>
                            <td><?php echo $usuario->creado?></td>
                            <td style="text-align: center;"><?php echo $usuario->id?></td>
                            <td style="text-align: center;"> 
                                <div id="contenido_ajax_<?php echo $usuario->id; ?>">
                                <?php 
                                if($usuario_sesion->id == $usuario->id)
                                {
                                    $tooltip_deshabilitar = $this->lang->line('score_usuario_error_deshabilitar');
                                    $class_disabled = 'disabled';
                                }
                                else
                                {
                                    $tooltip_deshabilitar = $this->lang->line('score_deshabilitar_tooltip');
                                    $class_disabled = '';
                                }
                                
                                if($usuario->estado == HABILITADO)
                                {
                                    ?>
                                    <a href="javascript:;" onclick="habilitar(<?php echo $usuario->id;?>)" class="btn btn-success btn-xs <?php echo $class_disabled;?>" data-toggle="tooltip" data-placement="top" title="<?php echo $tooltip_deshabilitar; ?>"><i class="fa fa-check-circle"></i></a>
                                    <?php   
                                }
                                else
                                {
                                    ?>
                                    <a href="javascript:;" onclick="habilitar(<?php echo $usuario->id;?>)" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_habilitar_tooltip');?>"><i class="fa fa-times-circle"> </i></a>
                                    <?php
                                }
                                ?>
                                </div>                                 
                            </td>
                            <td style="text-align: center;">                      
                                <div class="btn-group">
                                    <a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$usuario->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
                                    <a href="javascript:;" onclick="eliminar(<?php echo $usuario->id; ?>,'<?php echo $usuario->nombres." ".$usuario->apellidos; ?>')" class="btn btn-default <?php echo $class_disabled;?>" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_eliminar_tooltip'); ?>"><i class="fa fa-trash-o"></i></a>
                                </div>
                            </td>
                        </tr>
                        <?php
                        endforeach;
                        }
                        else
                        {
                        ?>
                        <tr>
                            <td colspan="10">Lo sentimos, no hay registros.</td>
                        </tr>                       
                        <?php    
                        }
                        ?>
                      </tbody>
                    </table>
                    </div>      
                    <!-- fin tabla -->
                    </div>
                                
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
  </body>
</html>