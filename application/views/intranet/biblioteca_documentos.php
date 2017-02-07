<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><?php echo $titulo; ?></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <link rel="icon" href="<?=base_url()?>/favicon.png" type="image/png"/>
    <link href="<?php echo base_url('assets/css/bootstrap.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/bootstrap.vertical-tabs.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/fonts/css/font-awesome.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/plugins/ionicons/css/ionicons.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/AdminLTE.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/skins/_all-skins.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/backend.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/intranet.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/backend_pagination.css')?>" rel="stylesheet"/>
</head>
<body class="hold-transition skin-blue layout-top-nav">
    <!-- Inicio Modal -->
    <div class="modal fade" id="modal-eliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h3 class="modal-title" id="myModalLabel">Mensaje</h3>
          </div>
          <div class="modal-body">
            <p><?php echo $this->lang->line('score_biblioteca_documento_eliminar_confirmacion');?></p>
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

<!-- inicio de la cabecera -->
<?php
    $this->load->view('intranet/comunes/cabecera');
?>  
<!-- fin de la cebecera -->

  <div class="content-wrapper">
    <div class="container full-width-div">

    <section class="content-header">
      <h1>
        <?php echo $this->lang->line('score_biblioteca_documentos');?>
        <a href="<?php echo base_url('index.php/intranet/biblioteca_documento/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nuevo'); ?></a>
        <button id="showhidehelp" class="btn btn-default btn-sm pull-right"><i class="fa fa-question-circle"></i>&nbsp;&nbsp;Ayuda</button>
        <small></small>
      </h1>
      <!-- inicio de ayuda -->
      <div id="help" class="contextual-help-simple col-md-12" style="display: none;">
      <?php echo $this->lang->line('score_biblioteca_documento_ayuda');?>
      </div>        
      <!-- fin de ayuda -->       
    </section>

    <section class="content">
      <div class="row">      
        <div class="col-md-12">
        <!-- inicio cuadro mensaje -->  
        <input type="hidden" name="accion_listar_opciones" id="accion_listar_opciones" value="<?php echo base_url('index.php/intranet/biblioteca_categoria/listar_opciones_categorias');?>" />          
        <input type="hidden" name="accion_eliminar" id="accion_eliminar" value="<?php echo base_url('index.php/intranet/biblioteca_documento/eliminar');?>" />
        <input type="hidden" name="accion_publicar" id="accion_publicar" value="<?php echo base_url('index.php/intranet/biblioteca_documento/publicar');?>" />
        <input type="hidden" name="accion_publicar_mensaje" id="accion_publicar_mensaje" value="<?php echo base_url('index.php/intranet/biblioteca_documento/publicar_mensaje');?>" />
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
                      <div class="col-lg-8 margin-top-normal">

                        <div class="form-inline">
                          <div class="form-group">                        
                            <input type="text" class="form-control" id="titulo" name="titulo" value="<?php echo $buscar; ?>" placeholder="<?php echo $this->lang->line('score_buscar');?>"/>
                          </div>
                          <div class="form-group" style="margin-left: -3px;">
                            <a id="buscar-titulo" href="" class="btn btn-primary" onclick="buscar_titulo('<?php echo base_url('index.php/intranet/biblioteca_documento');?>');"><i class="fa fa-search"></i>&nbsp; Buscar</a>  
                          </div>
                          <div class="form-group">
                            <a href="<?php echo base_url('index.php/intranet/biblioteca_documento'); ?>" class="btn btn-default" style="margin-left: 10px;"> Limpiar</a>   
                          </div>    
                          <div class="form-group margin-left-normal">
                            <?php
                              $data = array(
                                  'name'  => 'biblioteca_id',
                                  'id'    => 'biblioteca_id',
                                  'class' => 'form-control',
                                );                                    
                                
                              $opciones = $bibliotecas;      
                              $buscar_biblioteca = "'".base_url('index.php/intranet/biblioteca_documento')."'";                        
                              $onChange_biblioteca = "listar_opciones('biblioteca_id','categoria_id','- Seleccione categoría -',0);"; 
                              $onChange_biblioteca = $onChange_biblioteca." buscar_biblioteca(".$buscar_biblioteca.")";                              
                              echo form_dropdown($data, $opciones, $opcion_biblioteca_id,'onChange="'.$onChange_biblioteca.'"');  
                                                                                     
                            ?>
                          </div>
                          <div class="form-group margin-left-normal">
                            <?php
                              $data = array(
                                  'name'  => 'categoria_id',
                                  'id'    => 'categoria_id',
                                  'class' => 'form-control',                                    
                                );
                                
                              if(empty($opcion_biblioteca_id))
                              {
                                $opciones = array(0=>'- Seleccione categoría -');
                                echo form_dropdown($data, $opciones, $opcion_categoria_id);
                              }                                  
                              else
                              { 
                                $opciones = array(0=>'- Seleccione categoría -') + get_biblioteca_categorias_select($opcion_biblioteca_id, FALSE);
                                $buscar_categoria = "'".base_url('index.php/intranet/biblioteca_documento')."'";    
                                $onChange_categoria = "buscar_categoria(".$buscar_categoria.")";                                
                                echo form_dropdown($data, $opciones, $opcion_categoria_id,'onChange="'.$onChange_categoria.'"');        
                              }                                                                                      
                            ?>
                          </div>  
                        </div>
  
                      </div>
                      <div class="col-lg-4 margin-top-normal">
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

            <div class="box-body">
            <div class="clr"></div>
            <!-- inicio tabla -->
            <div id="browse_table">
            <p style="text-align: right;">Mostrando <?=$this->page->page_stats();?></p>
            <table id="browse_table" class="table table-hover table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
              <thead>
                <tr class="headers">
                  <th class="first" scope="col"><div>Título<ul class="sort"><li class="up"><?=$this->page->create_sort_link('titulo', 'asc'); ?></li><li class="down"><?=$this->page->create_sort_link('titulo', 'desc'); ?></li></ul></div></th>
                  <th scope="col">Archivo</th>
                  <th scope="col">Categoría</th>                  
                  <th scope="col">Biblioteca</th>                  
                  <th scope="col">Creado por</th>                  
                  <th scope="col">Modificado por</th>
                  <th scope="col" class="col-id" style="text-align: center;">ID</th>
                  <th scope="col" class="col-estado" style="text-align: center;">Estado</th>
                  <th scope="col" class="col-opciones" style="text-align: center;">Opciones</th>
                </tr>
              </thead>
              <tbody>
                <?php
                if(count($biblioteca_documentos)>0)
                {
                foreach ($biblioteca_documentos as $biblioteca_documento):
                $biblioteca_documento = (object) $biblioteca_documento;
                ?>
                <tr>
                    <td class="row-title">
                        <a href="<?php echo base_url('index.php/intranet/biblioteca_documento/editar/'.$biblioteca_documento->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $biblioteca_documento->titulo?></a>
                    </td>
                    <td>
                    <?php
                    if(!empty($biblioteca_documento->documento))
                    {
                    ?>
                        <a href="<?php echo base_url('assets/documentos/'.$biblioteca_documento->documento)?>" target="_blank">
                        <img class="icono-documento" src="<?php echo base_url('assets/img/documentos/'.get_icono_archivo($biblioteca_documento->documento)); ?>" alt="<?php echo $biblioteca_documento->documento;?>"/>                      
                        </a>                                                              
                        <a href="<?php echo base_url('assets/documentos/'.$biblioteca_documento->documento)?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_ver_tooltip');?>" target="_blank"><?php echo $biblioteca_documento->documento;?></a>                    
                    <?php    
                    }elseif(!empty($biblioteca_documento->url))
                    {
                    ?>
                        <a href="<?php echo $biblioteca_documento->url;?>" target="_blank">
                        <img class="icono-documento" src="<?php echo base_url('assets/img/documentos/'.get_icono_url($biblioteca_documento->url)); ?>" alt="<?php echo $biblioteca_documento->url;?>"/>                      
                        </a>                                                              
                        <a href="<?php echo $biblioteca_documento->url;?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_ver_tooltip');?>" target="_blank"><?php echo $biblioteca_documento->url;?></a>
                    <?php    
                    }
                    ?>
                    </td>
                    <td><?php echo get_nombre_categoria($biblioteca_documento->categoria_id);?></td>
                    <td><?php echo get_nombre_biblioteca($biblioteca_documento->biblioteca_id);?></td>                    
                    <td>
                    <?php
                    $creado_por = get_autor($biblioteca_documento->creado_por); 
                    if(!empty($creado_por))
                    {
                    ?>
                        <a href="<?php echo base_url('index.php/intranet/usuario/editar/'.$biblioteca_documento->creado_por);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_creado_por'); ?>"><?php echo $creado_por?></a>
                    <?php
                    }
                    ?>
                    </td>
                    <td>
                    <?php
                    $modificado_por = get_autor($biblioteca_documento->modificado_por); 
                    if(!empty($modificado_por))
                    {
                    ?>
                        <a href="<?php echo base_url('index.php/intranet/usuario/editar/'.$biblioteca_documento->modificado_por);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_modificado_por'); ?>"><?php echo $modificado_por?></a>
                    <?php
                    }
                    ?>                    
                    </td>
                    <td style="text-align: center;"><?php echo $biblioteca_documento->id?></td>
                    <td style="text-align: center;"> 
                        <div id="contenido_ajax_<?php echo $biblioteca_documento->id; ?>">
                        <?php 
                        if($biblioteca_documento->estado == PUBLICADO)
                        {
                            ?>
                            <a href="javascript:;" onclick="publicar(<?php echo $biblioteca_documento->id;?>)" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_despublicar_tooltip'); ?>"><i class="fa fa-check-circle"></i></a>
                            <?php   
                        }
                        else
                        {
                            ?>
                            <a href="javascript:;" onclick="publicar(<?php echo $biblioteca_documento->id;?>)" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_publicar_tooltip');?>"><i class="fa fa-times-circle"> </i></a>
                            <?php
                        }
                        ?>
                        </div>                                 
                    </td>
                    <td style="text-align: center;">                      
                        <div class="btn-group">
                            <a href="<?php echo base_url('index.php/intranet/biblioteca_documento/editar/'.$biblioteca_documento->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
                            <a href="javascript:;" onclick="eliminar(<?php echo $biblioteca_documento->id; ?>,'<?php echo $biblioteca_documento->titulo; ?>')" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_eliminar_tooltip'); ?>"><i class="fa fa-trash-o"></i></a>
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
        </div>
      </div> 


      </section>

    </div>

  </div>

<!-- inicio del pie -->
<?php
    $this->load->view('intranet/comunes/pie');
?> 
<!-- fin del pie -->
  
</div>
<script src="<?php echo base_url('assets/plugins/jQuery/jquery-2.2.3.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/plugins/fastclick/fastclick.js')?>"></script>
<script src="<?php echo base_url('assets/js/app.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/demo.js')?>"></script>
<script src="<?php echo base_url('assets/js/intranet.js')?>"></script>
<script>$(document).ready(function() {$('#showhidehelp').click(function() {$('#help').toggle("show");});});</script>
</body>
</html>
