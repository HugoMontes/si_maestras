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
        <?php echo $this->lang->line('score_convocatoria_formador_editar_titulo');?>
        <a href="<?php echo base_url('index.php/intranet/convocatoria_formador/nuevo');?>" class="btn btn-default btn-sm title-action"><?php echo $this->lang->line('score_nueva'); ?></a>         
        <button id="showhidehelp" class="btn btn-default btn-sm pull-right"><i class="fa fa-question-circle"></i>&nbsp;&nbsp;Ayuda</button>
        <small></small>
      </h1>
      <!-- inicio de ayuda -->
      <div id="help" class="contextual-help-simple col-md-12" style="display: none;">
      <?php echo $this->lang->line('score_convocatoria_formador_editar_ayuda');?>
      </div>        
      <!-- fin de ayuda --> 
    </section>

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
         <div class="box box-primary">
           <div class="box-header">
             <h3 class="box-title">
               <small><?php echo $this->lang->line('score_campo_obligatorio');?></small>
             </h3>
           </div>
           <!-- /.box-header -->
            <!-- form start -->
            <form method="post" action="<?php echo base_url('index.php/intranet/convocatoria_formador/guardar');?>">
              <div class="box-body">

                <div class="form-group">
                  <label for="titulo" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_convocatoria_formador_nombre');?>">Nombre <span class="required">*</span></label>
                  <?php echo form_error('nombre', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control input-large-text" id="nombre" name="nombre" value="<?php echo set_value('nombre', $convocatoria->nombre);?>" placeholder="Ingrese el nombre"/>
                    </div>
                  </div>      
                </div>
                <div class="form-group">
                  <label for="descripcion" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_convocatoria_formador_descripcion');?>">Descripción</label>
                  <?php echo form_error('descripcion', '<span class="error-form">', '</span><br/>'); ?>
                  <textarea name="descripcion" id="descripcion"><?php echo set_value('descripcion',$convocatoria->descripcion);?></textarea>
                </div>
                                                                     
    
                <div class="form-group">
                  <label for="estado" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_convocatoria_formador_estado');?>">Estado</label>
                  <?php echo form_error('estado', '<span class="error-form">', '</span><br/>'); ?>  
                  <div class="row">
                    <div class="col-lg-3">
                      <?php
                      if(set_value('estado', $convocatoria->estado) == PUBLICADO)
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
                       
                       echo form_dropdown($data, $opciones, set_value('estado',$convocatoria->estado));                               
                      ?>
                    </div>
                  </div> 
                </div>                        
    
              </div>
              <!-- /.box-body -->
              <input type="hidden" name="convocatoria_id" id="convocatoria_id" value="<?php echo $convocatoria->id;?>" />
              <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
              <div class="box-footer">
                <?php
                $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>CONVOCATORIA_FORMADORES)); 
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
<script>CKEDITOR.replace('descripcion' ,{filebrowserImageBrowseUrl : '<?php echo base_url('assets/filemanager/index.html');?>', customConfig: 'config_principal.js'});</script> 
<script>$(document).ready(function() {$('#showhidehelp').click(function() {$('#help').toggle("show");});});</script>
</body>
</html>
