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
    <link href="<?php echo base_url('assets/css/bootstrap-select.min.css')?>" rel="stylesheet"/>   
</head>
<body class="hold-transition skin-blue layout-top-nav">
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
        <?php echo $this->lang->line('score_biblioteca_documento_nuevo_titulo');?>
        <button id="showhidehelp" class="btn btn-default btn-sm pull-right"><i class="fa fa-question-circle"></i>&nbsp;&nbsp;Ayuda</button>
        <small></small>
      </h1>
      <!-- inicio de ayuda -->
      <div id="help" class="contextual-help-simple col-md-12" style="display: none;">
      <?php echo $this->lang->line('score_biblioteca_documento_nuevo_ayuda');?>
      </div>        
      <!-- fin de ayuda --> 
    </section>

    <section class="content">
      <div class="row">      
        <div class="col-md-12">
        <!-- inicio cuadro mensaje --> 
        <input type="hidden" name="accion_listar_opciones" id="accion_listar_opciones" value="<?php echo base_url('index.php/intranet/biblioteca_categoria/listar_opciones_categorias');?>" />                       
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
            <form enctype="multipart/form-data" method="post" action="<?php echo base_url('index.php/intranet/biblioteca_documento/guardar');?>">
              <div class="box-body">

                <div class="form-group">
                  <label for="titulo" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_doc_titulo');?>">Título <span class="required">*</span></label>
                  <?php echo form_error('titulo', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control input-large-text" id="titulo" name="titulo" value="<?php echo set_value('titulo');?>" placeholder="Ingrese el título"/>
                    </div>
                  </div>      
                </div>
                

                <div class="form-group">
                  <label for="descripcion" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_doc_descripcion');?>">Descripción </label>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="descripcion" name="descripcion" value="<?php echo set_value('descripcion');?>" placeholder="Ingrese la descripción"/>
                    </div>
                  </div>      
                </div>                  
                
                <div class="form-group">
                  <label for="biblioteca_id" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_doc_biblioteca');?>">Biblioteca <span class="required">*</span></label>
                  <?php echo form_error('biblioteca_id', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                      <div class="col-lg-3">    
                          <?php
                          $data = array(
                              'name'  => 'biblioteca_id',
                              'id'    => 'biblioteca_id',
                              'class' => 'form-control selectpicker',
                              'data-style' => 'btn-default'
                            );
                             
                          $opciones = $bibliotecas;
                          
                          $onChange = "listar_opciones('biblioteca_id','categoria_id','- Seleccione categoría -',0)";
                           
                          echo form_dropdown($data, $opciones, set_value('biblioteca_id'),'onChange="'.$onChange.'"');                        
                          ?>
                      </div>
                  </div>        
                </div>

                <div class="form-group">
                  <label for="padre_id" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_doc_categoria');?>">Categoría <span class="required">*</span></label>
                  <?php echo form_error('categoria_id', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                      <div class="col-lg-3">    
                          <?php
                          $data = array(
                              'name'  => 'categoria_id',
                              'id'    => 'categoria_id',
                              'class' => 'form-control selectpicker',
                              'data-style' => 'btn-default'
                            );
                              
                          if(set_value('biblioteca_id') == 0 OR set_value('biblioteca_id')== null)
                              $opciones = array(0=>'- Seleccione categoría -');
                          else
                              $opciones = get_biblioteca_categorias_select(set_value('biblioteca_id'));                             

                          echo form_dropdown($data, $opciones, set_value('categoria_id'));                               
                          ?> 
                      </div>
                  </div>        
                </div>                                
                
                <div class="form-group">
                  <label for="documento" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_doc_cargar');?>">Seleccionar un archivo</label>
                  <?php echo form_error('documento', '<span class="error-form">', '</span><br/>'); ?>
                  <input type="file" name="documento" />                
                  <p class="help-block"><?php echo $this->lang->line('score_biblioteca_documento_upload').'&nbsp;&nbsp;'.$this->lang->line('score_biblioteca_documento_condiciones');?></p>
                </div>   

                <div class="form-group">
                  <label for="url" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_doc_insertar');?>">ó insertar la Url del archivo</label>
                  <div class="row">
                      <div class="col-lg-6">  
                        <input type="text" class="form-control" name="url" id="url" value="<?php echo set_value('url');?>" placeholder="https://www.youtube.com/watch?v=XXXX ó https://vimeo.com/XXXX ó https://soundcloud.com/XXXX/YYYY"/>
                        <p class="help-block"><?php echo $this->lang->line('score_biblioteca_documento_url');?></p>
                      </div>
                  </div>      
                </div>                            
                                                                     
                <div class="form-group">
                  <label for="estado" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_doc_estado');?>">Estado</label>
                  <?php echo form_error('estado', '<span class="error-form">', '</span><br/>'); ?>  
                  <div class="row">
                    <div class="col-lg-3">
                  <?php
                  if(set_value('estado') == PUBLICADO OR set_value('estado')== null)
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
                   
                   echo form_dropdown($data, $opciones, set_value('estado'));                               
                  ?>
                    </div>
                  </div> 
                </div>                        
    
              </div>
              <!-- /.box-body -->
              <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO; ?>" />  
              <div class="box-footer">
                <?php
                $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_DOCUMENTOS)); 
                ?>
                <a href="<?php echo base_url($navegacion->navegacion); ?>" class="btn btn-default"><?php echo $this->lang->line('score_cerrar'); ?></a>
                <button type="submit" class="btn btn-primary"><?php echo $this->lang->line('score_guardar');?></button>
              </div>
            </form>
            
            <!-- form end -->         
                         
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
<script src="<?php echo base_url('assets/js/bootstrap-select.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/intranet.js')?>"></script>
<script src="<?php echo base_url('assets/plugins/ckeditor/ckeditor.js')?>"></script>  
<script>$(document).ready(function() {$('#showhidehelp').click(function() {$('#help').toggle("show");});});</script>
</body>
</html>
