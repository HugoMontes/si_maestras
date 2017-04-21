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
                <p><?php echo $this->lang->line('maestras_centros_eliminar_confirmacion');?></p>
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
            <?php echo $this->lang->line('maestras_centros');?>
            <a href="<?php echo base_url('index.php/administrador/centro/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nuevo'); ?></a>
            <small></small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <!-- inicio cuadro mensaje -->  
                <input type="hidden" name="accion_eliminar" id="accion_eliminar" value="<?php echo base_url('index.php/administrador/centro/eliminar');?>" />
                <input type="hidden" name="accion_publicar" id="accion_publicar" value="<?php echo base_url('index.php/administrador/centro/publicar');?>" />
                <input type="hidden" name="accion_publicar_mensaje" id="accion_publicar_mensaje" value="<?php echo base_url('index.php/administrador/centro/publicar_mensaje');?>" />
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
                                            <input type="text" class="form-control" id="centro" name="centro" value="<?php echo $buscar; ?>" placeholder="<?php echo $this->lang->line('score_buscar');?>"/>
                                            <span class="input-group-btn">
                                                <a id="buscar-centro" href="" class="btn btn-primary" onclick="buscar_centros('<?php echo base_url('index.php/administrador/centro');?>');"><i class="fa fa-search"></i>&nbsp; Buscar</a>
                                            </span>
                                            <span class="input-group-btn">
                                                <a href="<?php echo base_url('index.php/administrador/centro'); ?>" class="btn btn-default" style="margin-left: 10px;"> Limpiar</a>
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
                                        <!--
                                        <th class="first" scope="col"><div>centro<ul class="sort"><li class="up"><?=$this->page->create_sort_link('descripcion', 'asc'); ?></li></ul></div></th>
                                        -->
                                        <th scope="col">Centro de formacion</th>
                                        <th scope="col">Autor</th>
                                        <th scope="col">Creado</th>
                                        <th scope="col">ID</th>
                                        <th scope="col" class="col-estado" style="text-align: center;">Estado</th>
                                        <th scope="col" class="col-opciones" style="text-align: center;">Opciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    if(count($centros)>0){
                                        foreach ($centros as $centro):
                                            $centro = (object) $centro;
                                            $sw_user=es_item_usuario($centro->creado_por);
                                    ?>
                                    <tr class="<?php echo $sw_user?'':'not-active-row'; ?>">
                                        <td class="row-title"><a href="<?php echo base_url('index.php/administrador/centro/editar/'.$centro->id);?>" class="<?php echo $sw_user?'':'not-active-link'; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $centro->descripcion; ?></a></td>
                                        <td class="row-title">
                                            <?php
                                              $autor = get_autor($centro->creado_por); 
                                              if(!empty($autor)){
                                            ?>
                                              <a href="<?php echo base_url('index.php/administrador/usuario/editar/'.$centro->creado_por);?>" class="<?php echo $sw_user?'':'not-active-link'; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_autor'); ?>"><?php echo $autor?></a>
                                            <?php } ?>
                                        </td>
                                        <td class="row-title"><?php echo $centro->creado?></td>
                                        <td class="row-title"><a href="<?php echo base_url('index.php/administrador/centro/editar/'.$centro->id);?>" class="<?php echo $sw_user?'':'not-active-link'; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $centro->id; ?></a></td>                          
                                        <td style="text-align: center;"> 
                                            <div id="contenido_ajax_<?php echo $centro->id; ?>">
                                                <?php 
                                                  if($centro->estado == PUBLICADO){
                                                ?>
                                                    <a href="javascript:;" onclick="publicar(<?php echo $centro->id;?>)" class="btn btn-success btn-xs <?php echo $sw_user?'':'not-active-link'; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_despublicar_tooltip'); ?>"><i class="fa fa-check-circle"></i></a>
                                                <?php   
                                                  }else{
                                                ?>
                                                    <a href="javascript:;" onclick="publicar(<?php echo $centro->id;?>)" class="btn btn-danger btn-xs <?php echo $sw_user?'':'not-active-link'; ?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_publicar_tooltip');?>"><i class="fa fa-times-circle"> </i></a>
                                                <?php } ?>
                                            </div>                                 
                                        </td>
                                        <td style="text-align: center;">                      
                                            <div class="btn-group">
                                                <a href="<?php echo base_url('index.php/administrador/centro/editar/'.$centro->id);?>" class="btn btn-default <?php echo $sw_user?'':'not-active-link'; ?>" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
                                                <a href="javascript:;" onclick="eliminar(<?php echo $centro->id; ?>,'<?php echo $centro->descripcion; ?>')" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_eliminar_tooltip'); ?>"><i class="fa fa-trash-o"></i></a>
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
<?php $this->load->view('backend/template/footer'); ?>