<?php $usuario_sesion = get_user_session(); ?>
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
    <link href="<?php echo base_url('assets/plugins/ionicons/css/ionicons.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/AdminLTE.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/skins/_all-skins.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/backend.css')?>" rel="stylesheet"/>
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
                <?php echo $this->lang->line('score_escritorio_titulo');?>
                <small>Panel de control</small>
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

                </div>
                <!-- /.col-->
              </div>
              <!-- ./row -->
              
              <!-- inicio vistas de escritorio -->
              <!-- inicio cuadros informativos -->
              <div class="row">
                
                <div class="col-lg-3 col-xs-6">
                  <div class="small-box bg-aqua">
                    <div class="inner">
                      <h3><?php echo get_contactos(); ?></h3>
                      <p>Nuevos contactos</p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-email"></i>
                    </div>
                    <a href="<?php echo base_url('index.php/administrador/contacto');?>" class="small-box-footer">Ver contactos <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>
                
                <div class="col-lg-3 col-xs-6">
                  <div class="small-box bg-green">
                    <div class="inner">
                      <h3><?php echo $noticias_publicadas_generales;?></h3>
                      <p>Noticias generales</p>
                    </div>
                    <div class="icon">
                      <i class="ion ion-ios-paper"></i>
                    </div>
                    <a href="<?php echo base_url('index.php/administrador/noticia/1');?>" class="small-box-footer">Ver noticias <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                  <div class="small-box bg-yellow">
                    <div class="inner">
                      <h3><?php echo $especialistas_publicados; ?></h3>
                      <p>Maestras Constructoras</p>
                    </div>
                    <div class="icon">
                      <i class="fa fa-users"></i>
                    </div>
                    <a href="<?php echo base_url('index.php/administrador/especialista');?>" class="small-box-footer">Ver maestras constructoras <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>

                <div class="col-lg-3 col-xs-6">
                  <div class="small-box bg-red">
                    <div class="inner">
                      <h3><?php echo $centros_formacion; ?></h3>
                      <p>Centros de Formación</p>
                    </div>
                    <div class="icon">
                      <i class="fa fa-suitcase"></i>
                    </div>
                    <a href="<?php echo base_url('index.php/administrador/centro');?>" class="small-box-footer">Ver centros de formación <i class="fa fa-arrow-circle-right"></i></a>
                  </div>
                </div>

              <!-- inicio cuadros informativos --> 
              <div class="row">
                <!-- inicio paginas visitadas -->
                <div class="col-md-6">
                    <div class="box box-info">
                        <div class="box-header with-border">
                          <h3 class="box-title">Páginas populares <small>creadas</small></h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                          </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                          <div class="table-responsive">
                            <table class="table no-margin">
                              <thead>
                              <tr>
                                <th>Página</th>
                                <th>Creado</th>
                                <th>Visitas</th>
                              </tr>
                              </thead>
                              <tbody>
                              <?php
                              //var_dump($paginas_visitadas);
                              foreach($paginas_visitadas as $pagina_visitada):
                              $pagina_visitada = (object)$pagina_visitada;
                              ?>
                              <tr>
                                <td><a href="<?php echo base_url('index.php/administrador/pagina/editar/'.$pagina_visitada->id)?>"><?php echo $pagina_visitada->titulo;?></a></td>
                                <td><?php echo $pagina_visitada->creado;?></td>
                                <td><span class="badge bg-blue"><?php echo $pagina_visitada->hits;?></span></td>
                              </tr>                              
                              <?php
                              endforeach;
                              ?>
                              </tbody>
                            </table>
                          </div>
                          <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <a href="<?php echo base_url('index.php/administrador/pagina');?>" class="uppercase">Ver todas las páginas</a>
                        </div>                        
                        <!-- /.box-footer -->
                      </div>                
                </div>

                <div class="col-md-6">
                    <div class="box box-info">
                        <div class="box-header with-border">
                          <h3 class="box-title">Páginas populares <small>prediseñadas</small></h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                          </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                          <div class="table-responsive">
                            <table class="table no-margin">
                              <thead>
                              <tr>
                                <th>Página</th>
                                <th>Creado</th>
                                <th>Visitas</th>
                              </tr>
                              </thead>
                              <tbody>
                              <?php
                              //var_dump($paginas_visitadas);
                              foreach($paginas_predisenadas_visitadas as $pagina_predisenada_visitada):
                              $pagina_predisenada_visitada = (object)$pagina_predisenada_visitada;
                              ?>
                              <tr>
                                <td><?php echo $pagina_predisenada_visitada->titulo;?></td>
                                <td><?php echo $pagina_predisenada_visitada->creado;?></td>
                                <td><span class="badge bg-blue"><?php echo $pagina_predisenada_visitada->hits;?></span></td>
                              </tr>                              
                              <?php
                              endforeach;
                              ?>
                              </tbody>
                            </table>
                          </div>
                          <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <a href="<?php echo base_url('index.php/administrador/pagina_predisenada');?>" class="uppercase">Ver todas las páginas</a>
                        </div>
                        <!-- /.box-footer -->
                      </div>                
                </div>                
                <!-- fin paginas visitadas -->               
              </div> 

              <div class="row">
                <!-- inicio ultimas paginas -->
                <div class="col-md-12">
                    <div class="box box-info">
                        <div class="box-header with-border">
                          <h3 class="box-title">Páginas agregadas recientemente</small></h3>
            
                          <div class="box-tools pull-right">
                            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                            </button>
                          </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                          <div class="table-responsive">
                            <table class="table no-margin">
                             <thead>
                                <tr>
                                  <th>Titulo</th>
                                  <th>Autor</th>
                                  <th>Creado</th>
                                  <th>Estado</th>
                                </tr>
                              </thead>
                              <tbody>
                                <?php
                                //var_dump($paginas);
                                foreach ($paginas_recientes as $pagina_reciente):
                                $pagina_reciente = (object) $pagina_reciente;
                                ?>
                                <tr>
                                    <td><a href="<?php echo base_url('index.php/administrador/pagina/editar/'.$pagina_reciente->id); ?>"><?php echo $pagina_reciente->titulo?></a></td>
                                    <td><?php echo get_autor($pagina_reciente->creado_por);?></td>
                                    <td><?php echo $pagina_reciente->creado?></td>
                                    <td> 
                                        <?php 
                                        if($pagina_reciente->estado == PUBLICADO)
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
                                </tr>
                                <?php
                                endforeach;
                                ?>
                              </tbody>
                            </table>
                          </div>
                          <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <a href="<?php echo base_url('index.php/administrador/pagina');?>" class="uppercase">Ver todas las páginas</a>
                        </div>
                        <!-- /.box-footer -->
                      </div>                
                </div>
                <!-- fin ultimas páginas -->              
              </div>                                                
              <!-- fin vistas de escritorio -->

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