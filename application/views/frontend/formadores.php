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
    <div class=""> 
    <div class="contenido">
	 <div class="col-xs-12 score-content">
	 	<h3 style="padding-left:10px;"><?php echo $titulo; ?></h3>
	 </div>
	 
	 <div class="col-xs-12">
     <?php
        if(count($formadores)>0)
        {
        foreach ($formadores as $formador):
        $formador = (object) $formador;     
     ?>
	 	<!-- inicio formador-->
        <div id="for_cont_<?php echo $formador->id;?>" class="animate col-xs-12 col-sm-6 col-md-4 col-lg-3">
	 		<div id="for_panel_<?php echo $formador->id;?>" class="brief-panel ">
	 			<div id="for_data_<?php echo $formador->id;?>" class="col-xs-12 ">
		 			<div class="centered-parent">                   
                    <?php
                    if(!empty($formador->thumb))
                    {
                    ?>
		 				<div onclick="mostrar_descripcion(<?php echo $formador->id ?>)" class="brief-foto h centered-child centered-parent" style="background-image: url('<?php echo base_url('assets/img/formadores/thumb/'.$formador->thumb); ?>');">
		 				</div>
                    <?php    
                    }
                    else
                    {
                       if($formador->genero == VARON)
                       {
                    ?>
		 				<div onclick="mostrar_descripcion(<?php echo $formador->id ?>)" class="brief-foto h centered-child centered-parent" style="background-image: url('<?php echo base_url('assets/img/formadores/thumb/sinfoto_varon.png'); ?>');">
		 				</div>
                    <?php    
                       } 
                       else
                       {
                    ?>   
		 				<div onclick="mostrar_descripcion(<?php echo $formador->id ?>)" class="brief-foto h centered-child centered-parent" style="background-image: url('<?php echo base_url('assets/img/formadores/thumb/sinfoto_mujer.png'); ?>');">  
                        </div>                          
                    <?php    
                       }   
                    }
                    ?>                    		 				
		 			</div>
		 			<div class="brief-text">
		 				<h3 class="ng-binding"><?php echo strtoupper($formador->apellidos).", ".$formador->nombres;?></h3>
		 				<h5><?php echo $formador->formador;?></h5><br>
		 				<span id="for_brief_<?php echo $formador->id;?>" onclick="mostrar_descripcion(<?php echo $formador->id ?>)" style="cursor:pointer;float:right;color:#369;">Ver brief <span class="fa fa-arrow-circle-right"></span></span>
		 			</div>
	 			</div>
	 			<div id="for_descrip_<?php echo $formador->id;?>" class="col-xs-12 col-md-7 brief-content expanded ng-hide">
                    <?php echo $formador->descripcion;?>    
		 		</div>
	 		</div>
	 	</div>
        <!-- fin formador --> 
    <?php
        endforeach;
        }
        else
        {
    ?>
        <p style="text-align: center;">Lo sentimos, no hay registros.</p>                     
    <?php    
        }
    ?>   
	 </div>
</div></div>
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
<script src="<?php echo base_url('assets/js/frontend.js')?>"></script>
<!-- fin scripts -->
</body>
</html>