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
        <?php echo $this->lang->line('score_inscripcion_empresa_editar_titulo');?>      
        <button id="showhidehelp" class="btn btn-default btn-sm pull-right"><i class="fa fa-question-circle"></i>&nbsp;&nbsp;Ayuda</button>
        <small></small>
      </h1>
      <!-- inicio de ayuda -->
      <div id="help" class="contextual-help-simple col-md-12" style="display: none;">
      <?php echo $this->lang->line('score_inscripcion_empresa_editar_ayuda');?>
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
            <form method="post" action="<?php echo base_url('index.php/intranet/inscripcion_empresa/guardar');?>">
              <div class="box-body">
              <!-- inicio campos a editar -->  
        
                
                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-primary">
                          <div class="panel-heading">
                            <h3 class="panel-title" style="font-size: 16px;"><strong>CONVOCATORIA</strong></h3>
                          </div>
                          <div class="panel-body">
                            <div class="form-group">
                              <label for="convocatoria_id" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_convocatoria');?>">Convocatoria a la que pertenece la inscripción</label>
                              <?php echo form_error('convocatoria_id', '<span class="error-form">', '</span><br/>'); ?>  
                              <div class="row">
                                <div class="col-lg-9">
                                  <?php                              
                                  $data = array(
                                      'name'  => 'convocatoria_id',
                                      'id'    => 'convocatoria_id',
                                      'class' => 'form-control'
                                    );
                                   $opciones = $convocatorias;
                                   echo form_dropdown($data, $opciones, set_value('convocatoria_id',$inscripcion->convocatoria_id));                               
                                  ?>
                                </div>
                              </div> 
                            </div>                             
                          </div>
                        </div>            
                    </div>
                </div>
                                           
                <div class="row">
                    <div class="col-lg-6">
                        <div class="callout callout-info">
                            <p style="font-size: 16px;"><strong>1. INFORMACIÓN DE LA EMPRESA</strong></p>
                        </div>                
                    </div>
                </div>
                                              
                <div class="form-group">                
                  <label for="nombre_empresa" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_nombre');?>">Nombre <span class="required">*</span></label>
                  <?php echo form_error('nombre_empresa', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control input-large-text" id="nombre_empresa" name="nombre_empresa" value="<?php echo set_value('nombre_empresa', $inscripcion->nombre_empresa);?>" placeholder="Ingrese el nombre de la empresa"/>
                    </div>
                  </div>      
                </div>        
                <div class="form-group">
                  <label for="nit" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_nit');?>">NIT <span class="required">*</span></label>
                  <?php echo form_error('nit', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="nit" name="nit" value="<?php echo set_value('nit', $inscripcion->nit);?>" placeholder="Ingrese el nit de la empresa"/>
                    </div>
                  </div>      
                </div>  
                 
                <div class="form-group">
                  <label for="telefono" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_telefono');?>">Teléfono <span class="required">*</span></label>
                  <?php echo form_error('telefono', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="telefono" name="telefono" value="<?php echo set_value('telefono', $inscripcion->telefono);?>" placeholder="Ingrese el teléfono de la empresa"/>
                    </div>
                  </div>      
                </div> 
                
                <div class="form-group">
                  <label for="nombre_gerente" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_nombre_gerente');?>">Apellidos y Nombres del Gerente <span class="required">*</span></label>
                  <?php echo form_error('nombre_gerente', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="nombre_gerente" name="nombre_gerente" value="<?php echo set_value('nombre_gerente', $inscripcion->nombre_gerente);?>" placeholder="Ingrese los Apellidos y Nombres del Gerente "/>
                    </div>
                  </div>      
                </div> 

                <div class="form-group">
                  <label for="ciudad_id" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_ciudad');?>">Ciudad</label>
                  <?php echo form_error('ciudad_id', '<span class="error-form">', '</span><br/>'); ?>  
                  <div class="row">
                    <div class="col-lg-3">
                      <?php                              
                      $data = array(
                          'name'  => 'ciudad_id',
                          'id'    => 'ciudad_id',
                          'class' => 'form-control'
                        );
                       $opciones = $ciudades_inscripcion;
                       echo form_dropdown($data, $opciones, set_value('ciudad_id',$inscripcion->ciudad_id));                               
                      ?>
                    </div>
                  </div> 
                </div> 

                <div class="form-group">
                  <label for="direccion_gerencia" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_direccion_gerencia');?>">Dirección de la gerencia</label>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="direccion_gerencia" name="direccion_gerencia" value="<?php echo set_value('direccion_gerencia', $inscripcion->direccion_gerencia);?>" placeholder="Ingrese la Dirección de la gerencia "/>
                    </div>
                  </div>      
                </div>                 

                <?php
                $afiliado = set_value('afiliado',$inscripcion->afiliado);
                if($afiliado == AFILIADO_SI){
                    $afiliado_si = TRUE;
                    $afiliado_no = FALSE;                        
                }elseif($afiliado == AFILIADO_NO){
                    $afiliado_si = FALSE;
                    $afiliado_no = TRUE;                      
                }                    
                ?>    
                <div class="form-group">
                   <label for="" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_afiliado');?>">¿Se encuentra afiliado a algún gremio empresarial?</label>
                    <div class="checkbox" style="margin-top: 0px;">
                		<label><input class="" name="afiliado"  value="<?php echo AFILIADO_SI;?>" type="radio"  <?php echo set_radio('afiliado', AFILIADO_SI,$afiliado_si); ?>/> Si</label>
                		<label style="padding-left:20px;"><input class="" name="afiliado"  value="<?php echo AFILIADO_NO;?>" type="radio" <?php echo set_radio('afiliado', AFILIADO_NO, $afiliado_no); ?>/> No</label>  
                    </div>  
                </div>                
                                
                <div class="form-group">
                  <label for="nombre_afiliado" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_nombre_afiliado');?>">Nombre del Gremio Empresarial</label>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="nombre_afiliado" name="nombre_afiliado" value="<?php echo set_value('nombre_afiliado', $inscripcion->nombre_afiliado);?>" placeholder="Ingrese en nombre del gremio empresarial al que esta afiliada la empresa "/>
                        <p class="help-block">Solo se usa si la empresa está afiliada a algún gremio empresarial</p>                         
                    </div>
                  </div>      
                </div>   

                <div class="row">
                    <div class="col-lg-6">
                        <div class="callout callout-info">
                            <p style="font-size: 16px;"><strong>2. INFORMACIÓN BÁSICA DE LA EMPRESA</strong></p>
                        </div>                
                    </div>
                </div> 

                <div class="row">
                    <div class="col-lg-6">
                        <div class="callout callout-info">
                            <p style="font-size: 16px;"><strong>3. INTERÉS DE LA EMPRESA POR OTROS MÓDULOS DE SCORE</strong></p>
                        </div>                
                    </div>
                </div>
                
                <?php
                $modulos_score = array();
                $modulos_score[MODULO_1] = FALSE;
                $modulos_score[MODULO_2] = FALSE;
                $modulos_score[MODULO_3] = FALSE;
                $modulos_score[MODULO_4] = FALSE;
                $modulos_score[MODULO_5] = FALSE;
                
                $modulos_interes = array();
                $modulos_interes = explode(',',$inscripcion->modulos_interes);
                for($i=0;$i<count($modulos_interes);$i++)
                {
                    if($modulos_interes[$i]==MODULO_1)
                        $modulos_score[MODULO_1] = TRUE;
                    if($modulos_interes[$i]==MODULO_2)
                        $modulos_score[MODULO_2] = TRUE;
                    if($modulos_interes[$i]==MODULO_3)
                        $modulos_score[MODULO_3] = TRUE;
                    if($modulos_interes[$i]==MODULO_4)
                        $modulos_score[MODULO_4] = TRUE;
                    if($modulos_interes[$i]==MODULO_5)
                        $modulos_score[MODULO_5] = TRUE;                            
                }                  
                ?>    
                <div class="form-group">
                  <label for="modulos_interes" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_modulos_interes');?>">¿Que módulos adicionales al 1 estaría interesado en tomar?</label>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <table>
                		  <tbody>
                            <tr><td><i class="fa fa-check-square-o"></i></td><td style="width:99%;padding-left:5px;">Módulo 1: La cooperación en el lugar de trabajo.</td></tr>
                			<tr><td><input name="modulo_2" id="modulo_2" value="<?php echo MODULO_2;?>" class="" type="checkbox" <?php echo set_checkbox('modulo_2', MODULO_2, $modulos_score[MODULO_2]);?>/></td><td style="width:99%;padding-left:5px;">Módulo 2: Calidad: gestión del mejoramiento contínuo.</td></tr>
                			<tr><td><input name="modulo_3" id="modulo_3" value="<?php echo MODULO_3;?>" class="" type="checkbox" <?php echo set_checkbox('modulo_3', MODULO_3, $modulos_score[MODULO_3]);?>/></td><td style="width:99%;padding-left:5px;">Módulo 3: La productividad mediante una producción más limpia.</td></tr>
                			<tr><td><input name="modulo_4" id="modulo_4" value="<?php echo MODULO_4;?>" class="" type="checkbox" <?php echo set_checkbox('modulo_4', MODULO_4, $modulos_score[MODULO_4]);?>/></td><td style="width:99%;padding-left:5px;">Módulo 4: Administración del recurso humano para la cooperación y éxito empresarial.</td></tr>
                			<tr><td><input name="modulo_5" id="modulo_5" value="<?php echo MODULO_5 ?>" class="" type="checkbox" <?php echo set_checkbox('modulo_5', MODULO_5, $modulos_score[MODULO_5]);?> /></td><td style="width:99%;padding-left:5px;">Módulo 5: La seguridad y la salud en el trabajo: una plataforma para la productividad.</td></tr>
                		  </tbody>
                        </table>                       
                    </div>
                  </div>      
                </div>
                 
                <div class="row">
                    <div class="col-lg-6">
                        <div class="callout callout-info">
                            <p style="font-size: 16px;"><strong>4. INFORMACIÓN DEL REPRESENTANTE LEGAL</strong></p>
                        </div>                
                    </div>
                </div>                  

                <div class="form-group">
                  <label for="nombre_representante_legal" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_nombre_representante_legal');?>">Nombres y Apellidos <span class="required">*</span></label>
                  <?php echo form_error('nombre_representante_legal', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="nombre_representante_legal" name="nombre_representante_legal" value="<?php echo set_value('nombre_representante_legal', $inscripcion->nombre_representante_legal);?>" placeholder="Ingrese los Nombres y Apellidos"/>
                    </div>
                  </div>      
                </div>

                <div class="form-group">
                  <label for="cargo_representante_legal" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_cargo_representante_legal');?>">Cargo <span class="required">*</span></label>
                  <?php echo form_error('cargo_representante_legal', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="cargo_representante_legal" name="cargo_representante_legal" value="<?php echo set_value('cargo_representante_legal', $inscripcion->cargo_representante_legal);?>" placeholder="Ingrese el Cargo"/>
                    </div>
                  </div>      
                </div>

                <div class="form-group">
                  <label for="email_representante_legal" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_email_representante_legal');?>">E-mail <span class="required">*</span></label>
                  <?php echo form_error('email_representante_legal', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="email_representante_legal" name="email_representante_legal" value="<?php echo set_value('email_representante_legal', $inscripcion->email_representante_legal);?>" placeholder="Ingrese el E-mail"/>
                    </div>
                  </div>      
                </div>   
                
                <div class="form-group">
                  <label for="celular_representante_legal" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_celular_representante_legal');?>">Celular <span class="required">*</span></label>
                  <?php echo form_error('celular_representante_legal', '<span class="error-form">', '</span><br/>'); ?>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="celular_representante_legal" name="celular_representante_legal" value="<?php echo set_value('celular_representante_legal', $inscripcion->celular_representante_legal);?>" placeholder="Ingrese el Celular"/>
                    </div>
                  </div>      
                </div>
                 
                <div class="row">
                    <div class="col-lg-6">
                        <div class="callout callout-info">
                            <p style="font-size: 16px;"><strong>5. ¿Cómo se enteró de la presente Convocatoria?</strong></p>
                        </div>                
                    </div>
                </div>  

                <?php
                $medio_aviso_id = set_value('medio_aviso_id',$inscripcion->medio_aviso_id);
                
                $medio_aviso_periodico = FALSE;
                $medio_aviso_revista = FALSE;
                $medio_aviso_radio = FALSE;
                $medio_aviso_email = FALSE;
                $medio_aviso_formador = FALSE;
                $medio_aviso_otros = FALSE;
                
                if($medio_aviso_id == ANUNCIO_PERIODICO)
                    $medio_aviso_periodico = TRUE;
                elseif($medio_aviso_id == ANUNCIO_REVISTA)
                    $medio_aviso_revista = TRUE;
                elseif($medio_aviso_id == SPOT_RADIAL)
                    $medio_aviso_radio = TRUE;
                elseif($medio_aviso_id == EMAIL_SCORE)
                    $medio_aviso_email = TRUE;
                elseif($medio_aviso_id == FORMADOR_SCORE)
                    $medio_aviso_formador = TRUE;
                elseif($medio_aviso_id == OTROS)
                    $medio_aviso_otros = TRUE;                    
                ?>   
                                
                <div class="form-group">
                  <div class="row">
                    <div class="col-lg-6">
                        <div class="checkbox" style="margin-top: 0px;"> 
        					<label><input class="" name="medio_aviso_id" value="<?php echo ANUNCIO_PERIODICO;?>" type="radio" <?php echo set_radio('medio_aviso_id', ANUNCIO_PERIODICO, $medio_aviso_periodico); ?>/> Anuncio en periódico</label><br/>
        					<label><input class="" name="medio_aviso_id" value="<?php echo ANUNCIO_REVISTA;?>" type="radio" <?php echo set_radio('medio_aviso_id', ANUNCIO_REVISTA, $medio_aviso_revista); ?>/> Anuncio en revista</label><br/>
        					<label><input class="" name="medio_aviso_id" value="<?php echo SPOT_RADIAL;?>" type="radio" <?php echo set_radio('medio_aviso_id', SPOT_RADIAL, $medio_aviso_radio); ?>/> Spot radial</label><br/>
        					<label><input class="" name="medio_aviso_id" value="<?php echo EMAIL_SCORE;?>" type="radio" <?php echo set_radio('medio_aviso_id', EMAIL_SCORE, $medio_aviso_email); ?>/> Correo electrónico enviado por el Proyecto SCORE</label><br/>                					
                            <label><input class="" name="medio_aviso_id" value="<?php echo FORMADOR_SCORE;?>" type="radio" <?php echo set_radio('medio_aviso_id', FORMADOR_SCORE, $medio_aviso_formador);?>/> Formadores SCORE</label><br/>
        					<label><input class="" name="medio_aviso_id" value="<?php echo OTROS;?>" type="radio" <?php echo set_radio('medio_aviso_id', OTROS, $medio_aviso_otros);?>/> Otros</label><br/>                
                        </div>
                    </div>
                  </div>      
                </div>  

                <div class="form-group">
                  <label for="medio_nota" data-html="true" data-toggle="tooltip" data-placement="top" title="<?php echo $this->lang->line('score_tp_inscripcion_empresa_medio_nota');?>">Nombre del formador SCORE o el otro medio por el cual se enteró de la convocatoria</label>
                  <div class="row">
                    <div class="col-lg-6"> 
                        <input type="text" class="form-control" id="medio_nota" name="medio_nota" value="<?php echo set_value('nombre_afiliado', $inscripcion->medio_nota);?>" placeholder="Ingrese el Nombre del formador SCORE o el otro medio por el cual se enteró de la convocatoria"/>
                        <p class="help-block">Solo se usa si la opción seleccionada es “Formadores SCORE ” o “Otros”</p>                         
                    </div>
                  </div>      
                </div>                                                                                                                                                                                                                   
                                     
              <!-- fin campos editar-->                             
              </div>
              <!-- /.box-body -->
              <input type="hidden" name="inscripcion_id" id="inscripcion_id" value="<?php echo $inscripcion->id;?>" />
              <input type="hidden" name="guardar" id="guardar" value="<?php echo EDICION; ?>" />  
              <div class="box-footer">
                <?php
                $navegacion = $this->navegacion_model->get_values('navegacion',array('vista'=>INSCRIPCION_EMPRESAS)); 
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
