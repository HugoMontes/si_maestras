<?php $this->load->view('backend/template/header'); ?>   
<!-- Inicio Modal -->
<div class="modal fade" id="modal-eliminar" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel">Mensaje</h3>
            </div>
            <div class="modal-body">
                <p><?php echo $this->lang->line('caboco_especialista_eliminar_confirmacion');?></p>
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
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php echo $this->lang->line('caboco_especialistas');?>
            <a href="<?php echo base_url('index.php/administrador/especialista/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nuevo'); ?></a>
            <small></small>
            <!--div style="float: right;">
                <a href="<?php echo base_url('index.php/administrador/especialista/exportar/excel');?>" class="btn btn-info btn-sm title-action"><span class="glyphicon glyphicon-download-alt"></span> Descargar archivo excel</a>
                <button type="button" class="btn btn-success btn-sm title-action" data-toggle="modal" data-target="#mdl-upload-excel">
                    <span class="glyphicon glyphicon-upload"></span> Subir archivo excel
                </button>
            </div-->
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <!-- inicio cuadro mensaje -->  
                <input type="hidden" name="accion_eliminar" id="accion_eliminar" value="<?php echo base_url('index.php/administrador/especialista/eliminar');?>" />
                <input type="hidden" name="accion_publicar" id="accion_publicar" value="<?php echo base_url('index.php/administrador/formador/publicar');?>" />
                <input type="hidden" name="accion_publicar_mensaje" id="accion_publicar_mensaje" value="<?php echo base_url('index.php/administrador/formador/publicar_mensaje');?>" />
                <div id="contenido_ajax">
                    <?php if (isset($mensaje)) { ?>
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
                                            <input type="text" class="form-control" id="apellidos" name="apellidos" value="<?php echo $buscar; ?>" placeholder="<?php echo $this->lang->line('score_buscar');?>"/>
                                            <span class="input-group-btn">
                                                <a id="buscar-apellidos" href="" class="btn btn-primary" onclick="buscar_apellidos('<?php echo base_url('index.php/administrador/especialista');?>');"><i class="fa fa-search"></i>&nbsp; Buscar</a>
                                            </span>
                                            <span class="input-group-btn">
                                                <a href="<?php echo base_url('index.php/administrador/especialista'); ?>" class="btn btn-default" style="margin-left: 10px;"> Limpiar</a>
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
                                        <th scope="col">CI</th>
                                        <th class="first" scope="col"><div>Apellidos<ul class="sort"><li class="up"><?=$this->page->create_sort_link('apellidos', 'asc'); ?></li><li class="down"><?=$this->page->create_sort_link('apellidos', 'desc'); ?></li></ul></div></th>
                                        <th scope="col">Nombres</th>
                                        <th scope="col">Fec. Nac.</th>
                                        <th scope="col">Dirección</th>
                                        <th scope="col">Telf. Contacto</th>
                                        <th scope="col">Correo</th>
                                        <th scope="col" class="col-estado" style="text-align: center;">Estado</th>
                                        <th scope="col" class="col-opciones" style="text-align: center;">Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    if(count($trabajadores)>0){
                                        foreach ($trabajadores as $trabajador):
                                            $trabajador = (object) $trabajador;
                                    ?>
                                    <tr>
                                        <td class="row-title"><a href="<?php echo base_url('index.php/administrador/especialista/editar/'.$trabajador->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $trabajador->ci; ?></a></td>
                                        <td class="row-title"><a href="<?php echo base_url('index.php/administrador/especialista/editar/'.$trabajador->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $trabajador->apellidos; ?></a></td>                          
                                        <td class="row-title"><a href="<?php echo base_url('index.php/administrador/especialista/editar/'.$trabajador->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $trabajador->nombres; ?></a></td>                         
                                        <td><?php echo $trabajador->fecha_nacimiento; ?></td>
                                        <td><?php echo $trabajador->direccion; ?></td>
                                        <td><?php echo $trabajador->telefono_contacto; ?></td>
                                        <td><?php echo $trabajador->correo; ?></td>

                                        <td style="text-align: center;"> 
                                            <div id="contenido_ajax_<?php echo $trabajador->id; ?>">
                                                <?php 
                                                  if($trabajador->estado == PUBLICADO){
                                                ?>
                                                    <a href="javascript:;" onclick="publicar(<?php echo $trabajador->id;?>)" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_despublicar_tooltip'); ?>"><i class="fa fa-check-circle"></i></a>
                                                <?php   
                                                  }else{
                                                ?>
                                                    <a href="javascript:;" onclick="publicar(<?php echo $trabajador->id;?>)" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_publicar_tooltip');?>"><i class="fa fa-times-circle"> </i></a>
                                                <?php } ?>
                                            </div>                                 
                                        </td>
                                        <td style="text-align: center;">                      
                                            <div class="btn-group">
                                                <a href="<?php echo base_url('index.php/administrador/especialista/editar/'.$trabajador->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:;" onclick="eliminar(<?php echo $trabajador->id; ?>,'<?php echo $trabajador->nombres." ".$trabajador->apellidos; ?>')" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_eliminar_tooltip'); ?>"><i class="fa fa-trash-o"></i></a>
                                            </div>
                                        </td>               
                                    </tr>
                                    <?php 
                                        endforeach;
                                    }else{ 
                                    ?>
                                        <tr>
                                            <td colspan="8">Lo sentimos, no hay registros.</td>
                                        </tr>                       
                                    <?php } ?>
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


<!-- begin : Modal Importar-->
<div class="modal fade" id="mdl-upload-excel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header bg-primary">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Subir archivo excel</h4>
      </div>
      <form role="form" enctype="multipart/form-data" action="<?php echo base_url('index.php/administrador/especialista/importar/excel');?>" method="post">
            <div class="modal-body">
                <!-- inicio cuadro mensaje -->  
                <!--div id="contenido_ajax">
                    <?php if (isset($mensaje)) { ?>
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
                </div-->       
                <!-- fin cuadro mensaje  -->
                <div class="form-group">
                  <label>Seleccionar archivo excel debidamente llenado:</label>
                  <!--input type="file" name="txtcsv" accept=".csv" /-->
                  <input type="file" name="txtcsv" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" />
                  <p class="help-block">Seleccionar un archivo con extension .xlsx (Tamaño máximo 128 kb)</p>
                </div>
            </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            <button type="submit"  class="btn btn-primary">Guardar cambios</button>
          </div>
      </form>
    </div>
  </div>
</div>
<!-- end : Modal Importar -->

<?php $this->load->view('backend/template/footer'); ?>