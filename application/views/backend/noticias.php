<?php $perfil=$this->session->userdata('usuario')['perfil_id']; ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><?php echo $grupo->descripcion; ?></title>
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
            <p><?php echo $this->lang->line('score_noticia_eliminar_confirmacion');?></p>
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

    
    <!-- Inicio Modal Configuracion -->
    <div class="modal fade" id="modal-configuracion" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">Configuración</h4>
          </div>
          <div class="modal-body">
            <form id="form-configuracion" action="<?php echo base_url('index.php/administrador/noticia/configuracion/guardar'); ?>" method="post">
                <input type="hidden" name="idgrupo" value="<?php echo $grupo->id; ?>">
                <p>Columnas preestablecidas:</p>
                <div class="radio">
                  <label>
                    <input type="radio" id="columnas1" class="columnas" name="columnas" value="1">
                    Una
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" id="columnas2" class="columnas" name="columnas" value="2">
                    Dos
                  </label>
                </div>
                <div class="radio">
                  <label>
                    <input type="radio" id="columnas3" class="columnas" name="columnas" value="3">
                    Tres
                  </label>
                </div>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            <button type="button" id="btn-guardar-configuracion" data-dismiss="modal" class="btn btn-primary">Guardar cambios</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Inicio Modal Configuracion -->

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
                <?php echo $grupo->descripcion;?>
                <a href="<?php echo base_url('index.php/administrador/'.$categoria.'/nuevo/'.$grupo->id);?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nueva'); ?></a>
                <small></small>
                <div style="float: right;">
                    <button url="<?php echo base_url('index.php/administrador/noticia/configuracion/'.$grupo->id); ?>" id="btn-ventana-configuracion" class="btn btn-primary" data-toggle="modal" data-target="#modal-configuracion">
                        <span class="glyphicon glyphicon-cog"></span>
                    </button>
                </div>
              </h1>              
            </section>
    
            <!-- Main content -->
            <section class="content">
              <div class="row">
                <div class="col-md-12">
                <!-- inicio cuadro mensaje -->  
                <input type="hidden" name="accion_eliminar" id="accion_eliminar" value="<?php echo base_url('index.php/administrador/noticia/eliminar');?>" />
                <input type="hidden" name="accion_cambiar_estado" id="accion_cambiar_estado" value="<?php echo base_url('index.php/administrador/noticia/estado');?>" />
                <input type="hidden" name="accion_publicar_mensaje" id="accion_publicar_mensaje" value="<?php echo base_url('index.php/administrador/noticia/publicar_mensaje');?>" />
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
                                        <a id="buscar-titulo" href="" class="btn btn-primary" onclick="buscar_titulo('<?php echo base_url('index.php/administrador/noticia/'.$grupo->id);?>');"><i class="fa fa-search"></i>&nbsp; Buscar</a>
                                    </span>
                                    <span class="input-group-btn">
                                        <a href="<?php echo base_url('index.php/administrador/noticia/'.$grupo->id); ?>" class="btn btn-default" style="margin-left: 10px;"> Limpiar</a>
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
                          <th scope="col">Autor</th>
                          <th scope="col">Centro de Formación</th>
                          <th scope="col">Fecha de Creación</th>
                          <th scope="col" class="col-id" style="text-align: center;">ID</th>
                          <th scope="col" class="col-estado" style="text-align: center;">Estado</th>    
                          <th scope="col" class="col-opciones" style="text-align: center;">Opciones</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        if(count($noticias)>0)
                        {
                        foreach ($noticias as $noticia):
                        $noticia = (object) $noticia;
                        ?>
                        <tr>
                            <td class="row-title">
                                <a href="<?php echo base_url('index.php/administrador/'.$categoria.'/editar/'.$noticia->id."/".$grupo->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $noticia->titulo?></a></td>
                            <td>
                            <?php
                            $autor = get_autor($noticia->creado_por); 
                            if(!empty($autor))
                            {
                            ?>
                                <a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$noticia->creado_por);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_autor'); ?>"><?php echo $autor?></a>
                            <?php
                            }
                            ?>
                            </td>
                            
                            <td>
                              <?php
                                $centro = get_centro($noticia->id_centro); 
                                if(!empty($centro)){
                              ?>
                                <?php echo $centro; ?>
                              <?php }else{ ?>
                                CABOCO
                              <?php } ?>
                            </td>

                            <td><?php echo $noticia->creado; ?></td>

                            <td style="text-align: center;"><?php echo $noticia->id?></td>
                             
                            <td>
                              <?php 
                                if($noticia->estado == ACEPTADO){
                                  $verificar='Aceptado';
                                  $class='btn-success';
                                }elseif($noticia->estado == OBSERVADO){
                                  $verificar='Observado';
                                  $class='btn-danger';
                                }elseif($noticia->estado == SIN_VERIFICAR){
                                  $verificar='Sin verificar';
                                  $class='btn-warning';
                                }
                              ?>
                              <div class="btn-group">
                                <button type="button" class="btn <?php echo $class; ?> btn-xs dropdown-toggle" style="width: 85px;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  <?php echo $verificar; ?> <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                  <li><a class="btn-pub-aceptar" href="<?php echo $noticia->id; ?>"><span class="glyphicon glyphicon-ok-sign"></span>Aceptado</a></li>
                                  <li><a class="btn-pub-observar" href="<?php echo $noticia->id; ?>"><span class="glyphicon glyphicon-remove-sign"></span>Observado</a></li>
                                  <li><a class="btn-pub-sinverificar" href="<?php echo $noticia->id; ?>"><span class="glyphicon glyphicon-exclamation-sign"></span>Sin verificar</a></li>
                                </ul>
                              </div>
                            </td>

                            <td style="text-align: center;" width="150px">                      
                                <div class="btn-group">
                                    <a href="<?php echo base_url('index.php/administrador/'.$categoria.'/editar/'.$noticia->id."/".$grupo->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
                                    <a href="javascript:;" onclick="eliminar(<?php echo $noticia->id; ?>,'<?php echo $noticia->titulo; ?>')" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_eliminar_tooltip'); ?>"><i class="fa fa-trash-o"></i></a>
                                    <a href="<?php echo base_url('index.php/administrador/'.$categoria.'/preview/'.$noticia->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="Previsualizar" target="_blank"><i class="fa fa-eye"></i></a>
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
                            <td colspan="7">Lo sentimos, no hay registros.</td>
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
    <script>
        $(document).ready(function(){
            $('#btn-ventana-configuracion').click(function(event){
                event.preventDefault();
                $('#form-configuracion')[0].reset();
                $.ajax({
                  url: $(this).attr('url'),
                  dataType: "json",
                  type: 'GET',
                  success: function(data) {
                    $('#columnas'+data.columnas).attr('checked','checked');
                  },
                  error: function(e) {
                    console.log(e.message);
                  }
                });
            });

            $('#btn-guardar-configuracion').click(function(){
              $('#form-configuracion').submit();
            });

            $('.btn-pub-aceptar').click(function(event){
              event.preventDefault();
              url=$('#accion_cambiar_estado').val();
              id=$(this).attr('href'); 
              button=$(this).parent().parent().parent().find('button');      
              $.ajax({
                  url: url,
                  data: { id : id, estado : 1 },
                  type: 'GET',
                  dataType: "json",
                  success: function(data) {
                    console.log(data);
                    if(data.status==200){                 
                      button.html('Aceptado <span class="caret"></span>');
                      button.removeAttr('class');
                      button.attr('class','btn btn-success btn-xs dropdown-toggle');
                    }
                  },
                  error: function(e) {
                    console.log(e.message);
                  }
              });                       
            });

            $('.btn-pub-observar').click(function(event){
              event.preventDefault();
              url=$('#accion_cambiar_estado').val();
              id=$(this).attr('href'); 
              button=$(this).parent().parent().parent().find('button');             
              $.ajax({
                  url: url,
                  data: { id : id, estado : 2 },
                  type: 'GET',
                  dataType: "json",
                  success: function(data) {
                    console.log(data);
                    if(data.status==200){                
                      button.html('Observado <span class="caret"></span>');
                      button.removeAttr('class');
                      button.attr('class','btn btn-danger btn-xs dropdown-toggle');
                    }
                  },
                  error: function(e) {
                    console.log(e.message);
                  }
              });
            });

            $('.btn-pub-sinverificar').click(function(event){
              event.preventDefault();
              url=$('#accion_cambiar_estado').val();
              id=$(this).attr('href'); 
              button=$(this).parent().parent().parent().find('button');             
              $.ajax({
                  url: url,
                  data: { id : id, estado : 3 },
                  type: 'GET',
                  dataType: "json",
                  success: function(data) {
                    console.log(data);
                    if(data.status==200){                    
                      button.html('Sin verificar <span class="caret"></span>');
                      button.removeAttr('class');
                      button.attr('class','btn btn-warning btn-xs dropdown-toggle');
                    }
                  },
                  error: function(e) {
                    console.log(e.message);
                  }
              });
            });                        
        });        
    </script>
  </body>
</html>