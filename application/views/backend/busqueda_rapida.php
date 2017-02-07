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
                <?php echo $this->lang->line('score_busqueda_rapida_titulo'); ?>
                <small>resultados para "<?php echo $busqueda_rapida;?>" </small>
              </h1>
            </section>
    
            <!-- Main content -->
            <section class="content">
              <div class="row">
              <!-- inicio primera columna -->
               <div class="col-md-6">
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Páginas</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                    <!-- inicio tabla -->                
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr class="headers">
                          <th class="first" scope="col">Título</th>
                          <th scope="col">Autor</th>
                          <th scope="col">Creado</th>
                          <th scope="col">ID</th>
                          <th scope="col">Estado</th>
                          <th scope="col">Opciones</th>
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
                            <td class="row-title"><a href="<?php echo base_url('index.php/administrador/pagina/editar/'.$pagina->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $pagina->titulo?></a></td>
                            <td><?php echo $pagina->creado_por?></td>
                            <td><?php echo $pagina->creado?></td>
                            <td><?php echo $pagina->id?></td>
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
                            <td>
                                <div class="btn-group">
                                    <a href="<?php echo base_url('index.php/administrador/pagina/editar/'.$pagina->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
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
                    <!-- fin tabla -->                     
                    </div>
                    <!-- /.box-body -->
                  </div>
                  <!-- /.box -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Noticias</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                    <!-- inicio tabla -->                
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr class="headers">
                          <th class="first" scope="col">Título</th>
                          <th scope="col">Autor</th>
                          <th scope="col">Creado</th>
                          <th scope="col">ID</th>
                          <th scope="col">Estado</th>
                          <th scope="col">Opciones</th>
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
                            <td class="row-title"><a href="<?php echo base_url('index.php/administrador/noticia/editar/'.$noticia->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $noticia->titulo?></a></td>
                            <td><?php echo $noticia->creado_por?></td>
                            <td><?php echo $noticia->creado?></td>
                            <td><?php echo $noticia->id?></td>
                            <td> 
                                <?php 
                                if($noticia->estado == PUBLICADO)
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
                            <td>
                                <div class="btn-group">
                                    <a href="<?php echo base_url('index.php/administrador/noticia/editar/'.$noticia->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
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
                    <!-- fin tabla -->                     
                    </div>
                    <!-- /.box-body -->
                  </div>                        
                </div>              
              <!-- fin primera columna -->

              <!-- inicio segunda columna -->
               <div class="col-md-6">
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Formadores</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                    <!-- inicio tabla -->                
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr class="headers">
                          <th class="first" scope="col">Apellidos</th>
                          <th scope="col">Nombres</th>
                          <th scope="col">Creado</th>
                          <th scope="col">ID</th>
                          <th scope="col">Estado</th>
                          <th scope="col">Opciones</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        if(count($formadores)>0)
                        {
                        foreach ($formadores as $formador):
                        $formador = (object) $formador;
                        ?>
                        <tr>
                            <td class="row-title"><a href="<?php echo base_url('index.php/administrador/formador/editar/'.$formador->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $formador->apellidos?></a></td>
                            <td class="row-title"><a href="<?php echo base_url('index.php/administrador/formador/editar/'.$formador->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $formador->nombres?></a></td>                            
                            <td><?php echo $pagina->creado?></td>
                            <td><?php echo $pagina->id?></td>
                            <td> 
                                <?php 
                                if($formador->estado == PUBLICADO)
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
                            <td>
                                <div class="btn-group">
                                    <a href="<?php echo base_url('index.php/administrador/formador/editar/'.$formador->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
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
                    <!-- fin tabla -->                     
                    </div>
                    <!-- /.box-body -->
                  </div>
                  <!-- /.box -->
                  <div class="box box-info">
                    <div class="box-header with-border">
                      <h3 class="box-title">Testimonios</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                    <!-- inicio tabla -->                
                    <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                      <thead>
                        <tr class="headers">
                          <th class="first" scope="col">Título</th>
                          <th scope="col">Autor</th>
                          <th scope="col">Creado</th>
                          <th scope="col">ID</th>
                          <th scope="col">Estado</th>
                          <th scope="col">Opciones</th>
                        </tr>
                      </thead>
                      <tbody>
                        <?php
                        if(count($testimonios)>0)
                        {
                        foreach ($testimonios as $testimonio):
                        $testimonio = (object) $testimonio;
                        ?>
                        <tr>
                            <?php
                            if($testimonio->tipo == TESTIMONIO_EMPRESA)
                            {
                            ?>
                                <td><a class="row-title" href="<?php echo base_url('index.php/administrador/testimonio_empresa/editar/'.$testimonio->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $testimonio->titulo?></a></td>
                            <?php    
                            }
                            if($testimonio->tipo == TESTIMONIO_PERSONAL)
                            {
                            ?>
                                <td><a class="row-title" href="<?php echo base_url('index.php/administrador/testimonio_personal/editar/'.$testimonio->id);?>" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><?php echo $testimonio->titulo?></a></td>                      
                            <?php    
                            }
                            ?>
                            <td><?php echo $testimonio->creado_por?></td>
                            <td><?php echo $testimonio->creado?></td>
                            <td><?php echo $testimonio->id?></td>
                            <td> 
                                <?php 
                                if($testimonio->estado == PUBLICADO)
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
                            <td>                      
                                <div class="btn-group">
                                <?php
                                if($testimonio->tipo == TESTIMONIO_EMPRESA)
                                {
                                ?>
                                    <a href="<?php echo base_url('index.php/administrador/testimonio_empresa/editar/'.$testimonio->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>                                
                                <?php
                                }
                                if($testimonio->tipo == TESTIMONIO_PERSONAL)
                                {
                                ?>
                                    <a href="<?php echo base_url('index.php/administrador/testimonio_personal/editar/'.$testimonio->id);?>" class="btn btn-default" data-container="body" data-toggle="tooltip"  data-placement="top" title="<?php echo $this->lang->line('score_editar_tooltip'); ?>"><i class="fa fa-pencil"></i></a>
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
                    <!-- fin tabla -->                     
                    </div>
                    <!-- /.box-body -->
                  </div>
                  <!-- /.box -->        
                  
                </div>              
              <!-- fin segunda columna -->
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