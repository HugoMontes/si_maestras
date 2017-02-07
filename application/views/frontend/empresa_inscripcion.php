<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><?php echo $titulo; ?></title>
    <meta name="Description" content="<?php echo $metadescripcion;?>"/>
    <meta name="keywords" content="<?php echo $metapalabras_clave;?>"/>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <link rel="icon" href="<?=base_url()?>/favicon.png" type="image/png"/>
    <link href="<?php echo base_url('assets/css/bootstrap.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/fonts/css/font-awesome.min.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/score-content.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/score.css')?>" rel="stylesheet"/>    
    <link href="<?php echo base_url('assets/css/frontend.css')?>" rel="stylesheet"/>   
    <link href="<?php echo base_url('assets/css/forms.css')?>" rel="stylesheet"/>  
    <link href="<?php echo base_url('assets/css/custom.css')?>" rel="stylesheet"/> 
</head>
<body>
<!-- inicio menu -->
<?php 
//echo $numero;
//var_dump($menu);
//echo $menus;
?>
<?php  $this->load->view('frontend/comunes/menu',array('menus'=>$menus,'navbar_transparente'=>FALSE));?>  
<!-- fin menu -->

<!-- inicio contenido-->
<main style="padding-left: 0px;padding-right: 0px;">
<div class="container">
<div class="row contenido" style="padding-left:10px;padding-right:10px;margin-top:15px;">
    
    <div class="col-xs-12 col-sm-12 col-md-12" style="margin-top: 20px;">
    <!-- inicio cuadro mensaje -->                
    <?php if (isset($mensaje)) {
    ?>
    
    <div class="alert alert-success alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4>Mensaje</h4> 
      <p><?php echo $mensaje; ?></p>
    </div>
    
    <?php    
    $this->session->unset_userdata('mensaje');
    } elseif (isset($error)) {
    ?>                

    <div class="alert alert-warning alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <h4>La información es incompleta o incorrecta. Corrija los campos que a continuación se detallan e inténtelo de nuevo.</h4> 
      <p><?php echo $error; ?></p>
    </div>
                          
    <?php
    $this->session->unset_userdata('error');
    }?>
    <!-- fin cuadro mensaje  -->
    </div>

    <div class="col-md-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_content">                
                  <?php
                  if(!empty($convocatoria->descripcion))
                    echo $convocatoria->descripcion; 
                  ?>  
                  <!--<h3>CONVOCATORIA PARA PYMES</h3>-->
                  <!-- inicio del formulario-->                   
                  <form method="post" action="<?php echo base_url('index.php/empresa_inscripcion/guardar');?>"> 
                    <!-- Tabs -->
                    <div id="wizard_verticle" class="form_wizard wizard_verticle">
                      <ul class="list-unstyled wizard_steps">
                        <li>
                          <a href="#step-1">
                            <span class="step_no">1</span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-2">
                            <span class="step_no">2</span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-3">
                            <span class="step_no">3</span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-4">
                            <span class="step_no">4</span>
                          </a>
                        </li>
                        <li>
                          <a href="#step-5">
                            <span class="step_no">5</span>
                          </a>
                        </li>                        
                      </ul>

                          <div id="step-1">
                            <h3 class="step-title">Paso 1. INFORMACIÓN DE LA EMPRESA</h3>                          
                              <span class="section"></span>
                              <!-- inicio informacion de la empresa -->
                                <div class="row row-inscripcion">
                                	<div class="col-xs-12">
                                		<label>Nombre de la empresa: <span class="required">*</span></label>
                                        &nbsp;<span id="msg_nombre_empresa" class="error-form"></span>
                                        <?php echo form_error('nombre_empresa', '<span class="error-form">', '</span><br/><br/>'); ?>
                                		<input name="nombre_empresa" id="nombre_empresa" value="<?php echo set_value('nombre_empresa') ?>" class="form-control" type="text"/>
                                	</div>
                                </div>
                                
                                <div class="row row-inscripcion">
                                	<div class="col-xs-6">
                                		<label>NIT: <span class="required">*</span></label>
                                         &nbsp;<span id="msg_nit" class="error-form"></span>
                                        <?php echo form_error('nit', '<span class="error-form">', '</span><br/><br/>'); ?>
                                		<input name="nit" id="nit" value="<?php echo set_value('nit');?>" class="form-control" type="text"/>
                                	</div>
                                    
                                	<div class="col-xs-6">
                                		<label>Teléfono: <span class="required">*</span></label>
                                        &nbsp;<span id="msg_telefono" class="error-form"></span>
                                        <?php echo form_error('telefono', '<span class="error-form">', '</span><br/><br/>'); ?>
                                		<input name="telefono" id="telefono" value="<?php echo set_value('telefono');?>" class="form-control" type="text"/>
                                	</div>
                                </div>
                                
                                <div class="row row-inscripcion">
                                	<div class="col-xs-12">
                                		<label>Apellidos y Nombres del Gerente: <span class="required">*</span></label>
                                        &nbsp;<span id="msg_nombre_gerente" class="error-form"></span>
                                        <?php echo form_error('nombre_gerente', '<span class="error-form">', '</span><br/><br/>'); ?>
                                		<input name="nombre_gerente" id="nombre_gerente" value="<?php echo set_value('nombre_gerente'); ?>" class="form-control" type="text"/>
                                	</div>
                                </div>
                                
                                <div class="row row-inscripcion">
                                	<div class="col-xs-12 col-sm-6">
                                		<label>Ciudad</label>
                                      <?php
                                        $data = array(
                                          'name'  => 'ciudad_id',
                                          'id'    => 'ciudad_id',
                                          'class' => 'form-control'
                                        );
                                        
                                        $opciones = $ciudades_inscripcion;
                                       
                                        echo form_dropdown($data, $opciones, set_value('ciudad_id'));                               
                                      ?>
                                	</div>
                                    
                                	<div class="col-xs-6">
                                		<label>Dirección de la gerencia:</label>
                                		<input name="direccion_gerencia" id="direccion_gerencia" value="<?php echo set_value('direccion_gerencia');?>" class="form-control" type="text"/>
                                	</div>
                                </div>
                                
                                <div class="row row-inscripcion">
                                	<div class="col-xs-12">
                                		<label>¿Se encuentra afiliado a algún gremio empresarial?</label><br/>
                                		<label><input class="" name="afiliado" id="afiliado_si" value="<?php echo AFILIADO_SI;?>" type="radio" onclick="javascript:afiliado_si_no_checked();" <?php echo set_radio('afiliado', AFILIADO_SI); ?>/> Si</label>
                                		<label style="padding-left:20px;"><input class="" name="afiliado" id="afiliado_no" value="<?php echo AFILIADO_NO;?>" type="radio" onclick="javascript:afiliado_si_no_checked();" <?php echo set_radio('afiliado', AFILIADO_NO); ?>/> No</label>                                
                                        <?php
                                        if(set_value('afiliado')!=NULL)
                                        {                                           
                                            $afiliado = set_value('afiliado');
                                            if($afiliado == AFILIADO_SI)                                              
                                                $style_afiliado = 'display:block'; 
                                            else
                                                $style_afiliado = 'display:none';
                                        }
                                        else
                                        {
                                            $style_afiliado = 'display:none';     
                                        }                                            
                                        ?>
                                		<div id="div_afiliado_si" style="<?php echo $style_afiliado;?>">
                                			<label class="">Nombre del Gremio Empresarial:</label>
                                			<input name="nombre_afiliado" id="nombre_afiliado" maxlength="100" class="form-control" type="text" value="<?php echo set_value('nombre_afiliado');?>"/>
                                		</div>
                                        
                                	</div>
                                </div>
                                <div class="margen-abajo">&nbsp;</div>
                                <div class="margen-abajo">&nbsp;</div>               
                              <!-- fin informacion de la empresa-->      
                          </div>
                          <div id="step-2">
                            <h3 class="step-title">Paso 2. INFORMACIÓN BÁSICA DE LA EMPRESA</h3>
                              <!-- inicio informacion basica de la empresa -->              
                              <!-- fin informacion basica de la empresa-->                               
      
                          </div>
                          <div id="step-3">
                            <h3 class="step-title">Paso 3. INTERÉS DE LA EMPRESA POR OTROS MÓDULOS DE SCORE</h3>
                            <span class="section"></span>
                              <!-- inicio interes de la empresa por otros modulos --> 
                                <div class="row">
                                	<div class="col-xs-12">
                                		<p>¿Que módulos adicionales al 1 estaría interesado en tomar?</p>
                                	</div>
                                </div>
                                
                                <div class="row">
                                	<div class="col-xs-12">
                                		<table>
                                		  <tbody>
                                            <tr><td><i class="fa fa-check-square-o"></i></td><td style="width:99%;padding-left:5px;">Módulo 1: La cooperación en el lugar de trabajo.</td></tr>
                                			<tr><td><input name="modulo_2" id="modulo_2" value="<?php echo MODULO_2;?>" class="" type="checkbox" <?php echo set_checkbox('modulo_2', MODULO_2);?>/></td><td style="width:99%;padding-left:5px;">Módulo 2: Calidad: gestión del mejoramiento contínuo.</td></tr>
                                			<tr><td><input name="modulo_3" id="modulo_3" value="<?php echo MODULO_3;?>" class="" type="checkbox" <?php echo set_checkbox('modulo_3', MODULO_3);?>/></td><td style="width:99%;padding-left:5px;">Módulo 3: La productividad mediante una producción más limpia.</td></tr>
                                			<tr><td><input name="modulo_4" id="modulo_4" value="<?php echo MODULO_4;?>" class="" type="checkbox" <?php echo set_checkbox('modulo_4', MODULO_4);?>/></td><td style="width:99%;padding-left:5px;">Módulo 4: Administración del recurso humano para la cooperación y éxito empresarial.</td></tr>
                                			<tr><td><input name="modulo_5" id="modulo_5" value="<?php echo MODULO_5 ?>" class="" type="checkbox" <?php echo set_checkbox('modulo_5', MODULO_5);?> /></td><td style="width:99%;padding-left:5px;">Módulo 5: La seguridad y la salud en el trabajo: una plataforma para la productividad.</td></tr>
                                		  </tbody></table>
                                	</div>
                                </div>
                                <div class="margen-abajo">&nbsp;</div>                                           
                              <!-- fin interes de la empresa por otros modulos-->                               
    
                          </div>
                          <div id="step-4">
                            <h3 class="step-title">Paso 4. INFORMACIÓN DEL REPRESENTANTE LEGAL</h3>
                            <span class="section"></span>
                            <div class="row row-inscripcion">
                            	<div class="col-xs-6">
                            		<label>Nombres y Apellidos: <span class="required">*</span></label>
                                    &nbsp;<span id="msg_nombre_representante_legal" class="error-form"></span>
                                    <?php echo form_error('nombre_representante_legal', '<span class="error-form">', '</span><br/><br/>'); ?>
                            		<input name="nombre_representante_legal" id="nombre_representante_legal" class="form-control" type="text" value="<?php echo set_value('nombre_representante_legal');?>"/>
                            	</div>
                            	<div class="col-xs-6">
                            		<label>Cargo: <span class="required">*</span></label>
                                    &nbsp;<span id="msg_cargo_representante_legal" class="error-form"></span>
                                    <?php echo form_error('cargo_representante_legal', '<span class="error-form">', '</span><br/><br/>'); ?>
                            		<input name="cargo_representante_legal" id="cargo_representante_legal" class="form-control" type="text" value="<?php echo set_value('cargo_representante_legal');?>"/>
                            	</div>
                            </div>
                            
                            <div class="row row-inscripcion">
                            	<div class="col-xs-6">
                            		<label>E-mail: <span class="required">*</span></label>
                                    &nbsp;<span id="msg_email_representante_legal" class="error-form"></span>  
                                    <?php echo form_error('email_representante_legal', '<span class="error-form">', '</span><br/><br/>'); ?>
                            		<input name="email_representante_legal" id="email_representante_legal" class="form-control" type="email" value="<?php echo set_value('email_representante_legal');?>"/>
                            	</div>
                            	<div class="col-xs-6">
                            		<label>Celular: <span class="required">*</span></label>
                                    &nbsp;<span id="msg_celular_representante_legal" class="error-form"></span>
                                    <?php echo form_error('celular_representante_legal', '<span class="error-form">', '</span><br/><br/>'); ?>
                            		<input name="celular_representante_legal" id="celular_representante_legal" class="form-control" type="text" value="<?php echo set_value('celular_representante_legal');?>"/>
                            	</div>
                            </div>
                            
                            <div class="row row-inscripcion">
                            	<div class="col-xs-12">
                            		<label>Por medio de la presente inscripción manifiesto:</label>
                            	</div>
                            </div>
                            
                            <div class="row">
                            		<div class="col-xs-12">
                            			<ul>
                            				<li>El compromiso, por parte la empresa que represento, de 
                            participar en la implementación del Módulo 1 “La cooperación en el lugar
                             de trabajo” del Programa SCORE, el cual tiene una duración estimada de 2
                             a 3 meses.</li>  
                            				<li>Garantizo la asignación del tiempo para el proceso de formación, implementación y seguimiento del Módulo 1:</li>
                            					<ul>
                            					<li>Taller de formación presencial: garantizo mi tiempo y 
                            participación y el de otro representante de la gerencia y de dos 
                            trabajadores pertenecientes al área operativa (se mantendrá la equidad 
                            de género en la asignación).</li>
                            					<li>Visitas de seguimiento: garantizar el tiempo de los equipos de las áreas operativas involucradas.</li>
                            					<li>Diligenciar y enviar la tarjeta de indicadores empresariales 
                            SCORE para alimentar la Plataforma de Monitoreo y Evaluación de SCORE.</li>
                            					</ul>
                            				<li>La disposición de la empresa de asumir el costo de inversión por
                             la implementación de SCORE de acuerdo a la clasificación de pequeña o 
                            mediana empresa, explicitado en el “Compromiso de aporte al 
                            co-financiamiento”.</li>
                            			</ul>
                            		</div>
                            </div>
                            
                            <div class="col-xs-12 col-md-6">
                            	<label><input name="acepto_terminos" id="acepto_terminos" class="" type="checkbox" value="<?php echo ACEPTO_TERMINOS;?>" <?php echo set_checkbox('acepto_terminos', ACEPTO_TERMINOS, TRUE);?>/> Acepto</label>
                                &nbsp;<span id="msg_acepto_terminos" class="error-form"></span>
                                <?php echo form_error('acepto_terminos', '<span class="error-form">', '</span><br/><br/>'); ?>
                            </div>

                            <div class="margen-abajo">&nbsp;</div>
                            <div class="margen-abajo">&nbsp;</div> 
    
                          </div>
                          <div id="step-5">
                            <h3 class="step-title">Paso 5. ¿Cómo se enteró de la presente Convocatoria?</h3>
                            <span class="section"></span>
                            <div class="row">
                				<div class="col-lg-6 col-xs-6 col-md-6">
                					<input class="" name="medio_aviso_id" id="medio_aviso_1" value="<?php echo ANUNCIO_PERIODICO;?>" type="radio" onclick="medio_aviso_checked();" <?php echo set_radio('medio_aviso_id', ANUNCIO_PERIODICO); ?>/> Anuncio en periódico<br/>
                					<input class="" name="medio_aviso_id" id="medio_aviso_2" value="<?php echo ANUNCIO_REVISTA;?>" type="radio" onclick="medio_aviso_checked();" <?php echo set_radio('medio_aviso_id', ANUNCIO_REVISTA); ?>/> Anuncio en revista<br/>
                					<input class="" name="medio_aviso_id" id="medio_aviso_3" value="<?php echo SPOT_RADIAL;?>" type="radio" onclick="medio_aviso_checked();" <?php echo set_radio('medio_aviso_id', SPOT_RADIAL); ?>/> Spot radial<br/>
                					<input class="" name="medio_aviso_id" id="medio_aviso_4" value="<?php echo EMAIL_SCORE;?>" type="radio" onclick="medio_aviso_checked();" <?php echo set_radio('medio_aviso_id', EMAIL_SCORE); ?>/> Correo electrónico enviado por el Proyecto SCORE<br/>                					
                                    <?php
                                    if(set_value('medio_aviso_id')!=NULL)
                                    {                                           
                                        $medio_aviso_id = set_value('medio_aviso_id');
                                        if($medio_aviso_id == FORMADOR_SCORE)                                              
                                            $style_formador = 'display:block'; 
                                        else
                                            $style_formador = 'display:none';
                                        
                                        if($medio_aviso_id == OTROS)
                                            $style_otro = 'display:block';
                                        else
                                            $style_otro = 'display:none';       
                                    }
                                    else
                                    {
                                        $style_formador = 'display:none';
                                        $style_otro = 'display:none';                                                                                     
                                    }                                            
                                    ?>
                                    <input class="" name="medio_aviso_id" id="medio_aviso_5" value="<?php echo FORMADOR_SCORE;?>" type="radio" onclick="medio_aviso_checked();" <?php echo set_radio('medio_aviso_id', FORMADOR_SCORE);?>/> Formadores SCORE<br/>
                                    <div id="div_formador" style="<?php echo $style_formador; ?>">
                                        <label class="">Por favor, señale el nombre:</label>
                    					<input name="medio_nota_5" id="medio_nota_5" maxlength="100" class="form-control" type="text" value="<?php echo set_value('medio_nota_5');?>"/>                                    
                                    </div>
                					<input class="" name="medio_aviso_id" id="medio_aviso_6" value="<?php echo OTROS;?>" type="radio" onclick="medio_aviso_checked();" <?php echo set_radio('medio_aviso_id', OTROS);?>/> Otros<br/>
                                    <div id="div_otro" style="<?php echo $style_otro;?>">
             					        <input name="medio_nota_6" id="medio_nota_6" maxlength="100" class="form-control" type="text" value="<?php echo set_value('medio_nota_6');?>"/>                                    
                                    </div>
                				</div>           
                			</div>
                            
                            <div class="row">
                                <div class="col-xs-12 col-md-12" style="margin-top: 60px;">
                                  <?php echo $widget;?>
                                  <?php echo $script;?>
                                </div>
                            </div>
                            
                            <div class="margen-abajo">&nbsp;</div> 
                            <div class="margen-abajo">&nbsp;</div> 
                            <div class="margen-abajo">&nbsp;</div> 
                          </div>                          
                    </div>                    
                    <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO;?>" />
                  </form>                  
                  <!-- fin del formulario -->           
                  </div>
                </div>                
    </div>
           
</div>
</div>
</div>

</main>
<!-- fin contenido -->

<!-- inicio pie -->
<?php 
if(isset($mod_pie) AND !empty($mod_pie))
{
?>
<div class="col-xs-12" style="padding-right: 0px !important; padding-left: 0px !important; background-image: url('<?php echo base_url('assets/img/banner.png'); ?>');background-size: cover;">
<div>
<footer class="app-footer">
<?php echo $mod_pie->contenido; ?>
</footer>
</div>
</div>
<?php    
}
?>  
<!-- fin pie -->

<!-- inicio scripts -->
<script src="<?php echo base_url('assets/plugins/jQuery/jquery-2.2.3.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>
<script src="<?php echo base_url('assets/js/inscripciones.js')?>"></script>
<script src="<?php echo base_url('assets/plugins/jQuery-Smart-Wizard/js/jquery.smartWizard.js')?>"></script>
<script src="<?php echo base_url('assets/js/wizardstepempresa.js')?>"></script>
    <script>
      /*$(document).ready(function() {
        $('#wizard').smartWizard();

        $('#wizard_verticle').smartWizard({
          transitionEffect: 'slide'
        });

        $('.buttonNext').addClass('btn btn-success');
        $('.buttonPrevious').addClass('btn btn-primary');
        $('.buttonFinish').addClass('btn btn-default');
      });*/
    </script>
<!-- fin scripts -->
</body>
</html>