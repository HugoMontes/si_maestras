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
    <!-- Inicio Modal -->
    <div class="modal fade" id="modal-eliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h3 class="modal-title" id="myModalLabel">Mensaje</h3>
          </div>
          <div class="modal-body">
            <p><?php echo $this->lang->line('score_publicacion_eliminar_confirmacion');?></p>
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
                <?php echo $this->lang->line('score_publicaciones');?>
                <a href="<?php echo base_url('index.php/administrador/publicacion/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nueva'); ?></a>
                <small></small>
              </h1>
            </section>
    
            <!-- Main content -->
            <section class="content">
              <div class="row">
                <div class="col-md-12">
                <!-- inicio cuadro mensaje -->  
                <input type="hidden" name="accion_eliminar" id="accion_eliminar" value="<?php echo base_url('index.php/administrador/publicacion/eliminar');?>" />
                <input type="hidden" name="accion_publicar" id="accion_publicar" value="<?php echo base_url('index.php/administrador/publicacion/publicar');?>" />
                <input type="hidden" name="accion_publicar_mensaje" id="accion_publicar_mensaje" value="<?php echo base_url('index.php/administrador/publicacion/publicar_mensaje');?>" />
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
                              <div class="col-lg-4 margin-top-normal">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="titulo" name="titulo" value="<?php echo $buscar; ?>" placeholder="<?php echo $this->lang->line('score_buscar');?>"/>
                                    <span class="input-group-btn">
                                        <a id="buscar-titulo" href="" class="btn btn-primary" onclick="buscar_titulo('<?php echo base_url('index.php/administrador/publicacion');?>');"><i class="fa fa-search"></i>&nbsp; Buscar</a>
                                    </span>
                                    <span class="input-group-btn">
                                        <a href="<?php echo base_url('index.php/administrador/publicacion'); ?>" class="btn btn-default" style="margin-left: 10px;"> Limpiar</a>
                                    </span>
                                </div>  
                              </div>
                              <div class="col-lg-8 margin-top-normal">
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
                          <th class="first" scope="col"><div>Título<ul class="sort"><li class="up"><?=$this->page->create_sort_link('titulo', 'asc'); ?></li><li class="down"><?=$this->page->create_sort_link('titulo', 'desc'); ?></li></ul></div></th>
                          <th scope="col">Fecha de la publicación</th>  
                          <th scope="col">Autor</th>                        
                          <th scope="col">Fecha</th>
                          <th scope="col" class="col-id" style="text-align: center;">ID</th>
                          <th scope="col" class="col-estado" style="text-align: center;">Estado</th>
                          <th scope="col" class="col-opciones" style="text-align: center;">Opciones</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        if(count($publicaciones)>0)
                        {
                        foreach ($publicaciones as $publicacion):
                        $publicacion = (object)$publicacion;
                        ?>
                        <tr>
                            <td class="row-title"><a href="<?php echo base_url('index.php/administrador/publicacion/editar/'.$publicacion->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $publicacion->titulo?></a></td>
                            <td><?php echo $publicacion->fecha_publicacion?></td>
                            <td>
                            <?php
                            $autor = get_autor($publicacion->creado_por); 
                            if(!empty($autor))
                            {
                            ?>
                                <a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$publicacion->creado_por);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_autor'); ?>"><?php echo $autor?></a>
                            <?php
                            }
                            ?>
                            </td>
                            <td><?php echo $publicacion->creado?></td>
                            <td style="text-align: center;"><?php echo $publicacion->id?></td>
                            <td style="text-align: center;"> 
                                <div id="contenido_ajax_<?php echo $publicacion->id; ?>">
                                <?php 
                                if($publicacion->estado == PUBLICADO)
                                {
                                    ?>
                                    <a href="javascript:;" onclick="publicar(<?php echo $publicacion->id;?>)" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_despublicar_tooltip'); ?>"><i class="fa fa-check-circle"></i></a>
                                    <?php   
                                }
                                else
                                {
                                    ?>
                                    <a href="javascript:;" onclick="publicar(<?php echo $publicacion->id;?>)" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_publicar_tooltip');?>"><i class="fa fa-times-circle"> </i></a>
                                    <?php
                                }
                                ?>
                                </div>                                 
                            </td>
                            <td style="text-align: center;">                      
                                <div class="btn-group">
                                    <a href="<?php echo base_url('index.php/administrador/publicacion/editar/'.$publicacion->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
                                    <a href="javascript:;" onclick="eliminar(<?php echo $publicacion->id; ?>,'<?php echo $publicacion->titulo; ?>')" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_eliminar_tooltip'); ?>"><i class="fa fa-trash-o"></i></a>
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
                            <td colspan="6">Lo sentimos, no hay registros.</td>
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