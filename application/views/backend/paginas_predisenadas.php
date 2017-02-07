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
                <?php echo $this->lang->line('score_paginas_predisenadas'); ?>
                <small></small>
              </h1>
            </section>
    
            <!-- Main content -->
            <section class="content">
              <div class="row">
                <div class="col-md-12">
                <!-- inicio cuadro mensaje -->  
                <input type="hidden" name="accion_publicar" id="accion_publicar" value="<?php echo base_url('index.php/administrador/pagina_predisenada/publicar');?>" />
                <input type="hidden" name="accion_publicar_mensaje" id="accion_publicar_mensaje" value="<?php echo base_url('index.php/administrador/pagina_predisenada/publicar_mensaje');?>" />
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
                }elseif(!isset($mensaje) AND !isset($error)){
                ?>
                <div class="callout callout-info">
                    <h4>Mensaje</h4>
                
                    <p><?php echo $this->lang->line('score_pagina_predisenada_informacion');?></p>
                </div>
                <?php    
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
                                        <a id="buscar-titulo" href="" class="btn btn-primary" onclick="buscar_titulo('<?php echo base_url('index.php/administrador/pagina_predisenada');?>');"><i class="fa fa-search"></i>&nbsp; Buscar</a>
                                    </span>
                                    <span class="input-group-btn">
                                        <a href="<?php echo base_url('index.php/administrador/pagina_predisenada'); ?>" class="btn btn-default" style="margin-left: 10px;"> Limpiar</a>
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
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr class="headers">
                          <th class="first" scope="col"><div>Título<ul class="sort"><li class="up"><?=$this->page->create_sort_link('titulo', 'asc'); ?></li><li class="down"><?=$this->page->create_sort_link('titulo', 'desc'); ?></li></ul></div></th>
                          <th scope="col">Enlace</th> 
                          <th scope="col">Veces visto</th>
                          <th scope="col" class="col-id" style="text-align: center;">ID</th>
                          <th scope="col" class="col-estado" style="text-align: center;">Estado</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        if(count($paginas)>0)
                        {
                        foreach ($paginas as $pagina):
                        $pagina = (object) $pagina;
                        ?>
                        <tr>
                            <td class="row-title">
                                <?php echo $pagina->titulo?>
                            </td>
                            <td>
                                <a href="<?php echo base_url('index.php/'.$pagina->alias);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_ver_pagina_tooltip'); ?>" target="_blank"><?php echo 'index.php/'.$pagina->alias;?></a>
                            </td>
                            <td><?php echo $pagina->hits?></td>
                            <td style="text-align: center;"><?php echo $pagina->id?></td>
                            <td style="text-align: center;"> 
                                <div id="contenido_ajax_<?php echo $pagina->id; ?>">
                                <?php 
                                if($pagina->estado == PUBLICADO)
                                {
                                    ?>
                                    <a href="javascript:;" onclick="publicar(<?php echo $pagina->id;?>)" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_despublicar_tooltip'); ?>"><i class="fa fa-check-circle"></i></a>
                                    <?php   
                                }
                                else
                                {
                                    ?>
                                    <a href="javascript:;" onclick="publicar(<?php echo $pagina->id;?>)" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_publicar_tooltip');?>"><i class="fa fa-times-circle"> </i></a>
                                    <?php
                                }
                                ?>
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
  </body>
</html>