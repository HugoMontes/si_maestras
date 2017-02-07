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
    <link href="<?php echo base_url('assets/plugins/image-picker/image-picker.css')?>" rel="stylesheet"/>   
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
        <?php echo $this->lang->line('score_biblioteca_categoria_nuevo_titulo');?>
        <button id="showhidehelp" class="btn btn-default btn-sm pull-right"><i class="fa fa-question-circle"></i>&nbsp;&nbsp;Ayuda</button>
        <small></small>
      </h1>
      <!-- inicio de ayuda -->
      <div id="help" class="contextual-help-simple col-md-12" style="display: none;">
      <?php echo $this->lang->line('score_biblioteca_categoria_nuevo_ayuda');?>
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
            <form method="post" action="<?php echo base_url('index.php/intranet/biblioteca_categoria/guardar');?>">
              <div class="box-body">

                <div class="form-group">
                  <label for="nombre" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_cat_nombre');?>">Nombre <span class="required">*</span></label>
                  <?php echo form_error('nombre', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control input-large-text" id="nombre" name="nombre" value="<?php echo set_value('nombre');?>" placeholder="Ingrese el nombre"/>
                    </div>
                  </div>      
                </div>
                
                <!--<div class="form-group">
                  <label for="descripcion">Descripción</label>
                  <textarea name="descripcion" id="descripcion"><?php echo set_value('descripcion');?></textarea>
                </div>-->
                
                <div class="form-group">
                  <label for="descripcion" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_cat_descripcion');?>">Descripción </label>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="descripcion" name="descripcion" value="<?php echo set_value('descripcion');?>" placeholder="Ingrese la descripción"/>
                    </div>
                  </div>      
                </div>
                
                <?php //var_dump($iconos);?>
                <div class="form-group">
                  <label for="icono" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_cat_icono');?>">Icono </label>
                    <div class="row">
                      <div class="col-lg-3">
                        <select id="icono" name="icono" class="form-control selectpicker image-picker show-labels show-html" data-style="btn-default">
                            <option value="">Sin icono</option>
                        <?php
                        if(set_value('icono')== null)
                            $icono_seleccionado = '';
                        else
                            $icono_seleccionado = set_value('icono');
                                
                        for($i=0; $i<count($iconos);$i++)
                        {
                            if($icono_seleccionado == $iconos[$i])
                                $selected = 'selected';
                            else
                                $selected = '';
                        ?>
                            <option <?php echo $selected; ?> data-img-label="<?php echo $iconos[$i];?>" data-img-src="<?php echo base_url('assets/img/documentos/categorias/'.$iconos[$i]);?>" value="<?php echo $iconos[$i]?>"><?php echo $iconos[$i]?></option>
                        <?php     
                        }                                        
                        ?>    
                        </select> 
                        <p class="help-block" style="margin-top: -15px;">Generalmente solo las categorías de segundo nivel tienen iconos</p>                            
                      </div>
                    </div>                  
                </div>  
                                                                
                <div class="form-group">
                  <label for="biblioteca_id" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_cat_biblioteca');?>">Biblioteca <span class="required">*</span></label>
                  <?php echo form_error('biblioteca_id', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                      <div class="col-lg-3">    
                          <?php
                          $data = array(
                              'name'  => 'biblioteca_id',
                              'id'    => 'biblioteca_id',
                              'class' => 'form-control selectpicker',
                              'data-style' => 'btn-primary'
                            );
                             
                          $opciones = $bibliotecas;
                          $categoria_padre = $this->biblioteca_categoria_model->get(1);
                          
                          $onChange = "listar_opciones('biblioteca_id','padre_id','".$categoria_padre->nombre."',".$categoria_padre->id.")";
                           
                          echo form_dropdown($data, $opciones, set_value('biblioteca_id'),'onChange="'.$onChange.'"');  
                          
                          //listamos las categorias de la biblioteca
                                                
                          ?>
                      </div>
                  </div>        
                </div>

                <div class="form-group">
                  <label for="padre_id" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_cat_categoria_principal');?>">Categoría principal</label>
                  <?php echo form_error('padre_id', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                      <div class="col-lg-3">    
                          <?php
                          $data = array(
                              'name'  => 'padre_id',
                              'id'    => 'padre_id',
                              'class' => 'form-control selectpicker',
                              'data-style' => 'btn-default'
                            );
 
                          if(set_value('biblioteca_id') == 0 OR set_value('biblioteca_id')== null)
                              $opciones = array($categoria_padre->id=>$categoria_padre->nombre);
                          else
                              $opciones = get_biblioteca_categorias_select(set_value('biblioteca_id'));                            

                          echo form_dropdown($data, $opciones, set_value('padre_id'));                               
                          ?> 
                      </div>
                  </div>        
                </div>
                 
                <div class="form-group">
                  <label for="orden" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_cat_orden');?>">Orden</label>
                  <p><?php echo $this->lang->line('score_orden'); ?></p>
                </div>                                                                         
    
                <div class="form-group">
                  <label for="estado" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_biblioteca_cat_estado');?>">Estado</label>
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
                $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>BIBLIOTECA_CATEGORIAS)); 
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
<script src="<?php echo base_url('assets/plugins/image-picker/image-picker.min.js')?>"></script>  
<script>$("#icono").imagepicker({hide_select:  false,show_label:   false,});</script>
<script>$(document).ready(function() {$('#showhidehelp').click(function() {$('#help').toggle("show");});});</script>

</body>
</html>
