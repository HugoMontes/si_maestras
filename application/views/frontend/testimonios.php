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
    <link href="<?php echo base_url('assets/plugins/fancybox/source/jquery.fancybox.css"')?>" rel="stylesheet" media="screen"/>
    <link href="<?php echo base_url('assets/css/score-content.css')?>" rel="stylesheet"/>
    <link href="<?php echo base_url('assets/css/score.css')?>" rel="stylesheet"/>    
    <link href="<?php echo base_url('assets/css/frontend.css')?>" rel="stylesheet"/> 
    <link href="<?php echo base_url('assets/css/custom.css')?>" rel="stylesheet"/>        
</head>
<body>
<!-- inicio menu -->
<?php  $this->load->view('frontend/comunes/menu',array('menus'=>$menus,'navbar_transparente'=>FALSE));?>  
<!-- fin menu -->

<!-- inicio contenido-->
<main style="padding-left: 0px;padding-right: 0px;">
    <div class=""><div class="testi-contenido">
	 <div class="col-xs-12 score-content">
	 	<h3 style="padding-left:10px;"><?php echo $this->lang->line('score_sitio_testimonios_empresas'); ?></h3>
	 </div>

     <?php
        if(count($testimonios_empresas)>0)
        {
        foreach ($testimonios_empresas as $testimonio):
        $testimonio = (object) $testimonio;       

        if(!empty($testimonio->url_video))
            $url_video = $testimonio->url_video;
        else
            $url_video = 'javascript:;';     

        if(!empty($testimonio->thumb))
            $url_imagen = base_url('assets/img/testimonios/thumb/'.$testimonio->thumb);
        else
            $url_imagen = '';              
    ?>
 	<!-- inicio testimonio empresa-->
	<div class="">
		<div class="col-xs-12 col-md-3">
		     <div class="testi-panel">
		        <div class="noti-titulo" style="background-color: #fff;border-left: 1px solid #ccc;border-right: 1px solid #ccc;padding: 1px 20px;height:65px;">
		            <a class="video" href="<?php echo $url_video;?>">
		        		<h4 class=""><?php echo $testimonio->titulo;?></h4>
		         	</a>
		        </div>
		        <a class="video" title="<?php echo $testimonio->titulo;?>" href="<?php echo $url_video;?>">
			     	<div class="testi-image" style="background-image: url('<?php echo $url_imagen; ?>')">
			        </div>
		        </a>
		        <div class="testi-text">
		            <p class="">
						<?php echo get_palabras($testimonio->contenido,55);?>
		            </p>
		        </div>
		   	 </div>
	 	</div>
 	</div>
    <!-- fin testimonio empresa --> 
    <?php
        endforeach;
        }
        else
        {
    ?>
	<div class="">
		<div class="col-xs-12 col-sm-6 col-md-4">
        <p style="padding-left:10px;">Lo sentimos, no hay registros.</p>  
	 	</div>
 	</div>                      
    <?php    
        }
    ?>   

	 <div class="col-xs-12 score-content">
	 	<h3 style="padding-left:10px;"><?php echo $this->lang->line('score_sitio_testimonios_personal'); ?></h3>
	 </div>

     <?php
        if(count($testimonios_personal)>0)
        {
        foreach ($testimonios_personal as $testimonio):
        $testimonio = (object) $testimonio;     
     ?>
 	<!-- inicio testimonio personal-->
	<div class="">
		<div class="col-xs-12 col-sm-6 col-md-4">
			<div class="brief-panel">
	 			<div class="col-xs-4">
		 			<div class="centered-parent"> 
                        <?php
                        if(!empty($testimonio->thumb))
                            $url_imagen = base_url('assets/img/testimonios/thumb/'.$testimonio->thumb);
                        else
                            $url_imagen = '';     
                        ?>
		 				<div class="testi-foto h centered-child centered-parent" style="background-image: url('<?php echo $url_imagen; ?>');">
		 				</div>
		 				
		 			</div>
		 			<div class="testi-titulo">
		 				<p class=""><?php echo $testimonio->titulo;?></p>
		 			</div>
	 			</div>
	 			<div class="col-xs-8 testi-content ">
                    <?php
                    if(!empty($testimonio->contenido))
                    {
                        $contenido = $testimonio->contenido;
                        $contenido = preg_replace("/<p[^>]*?>/", "", $contenido);
                        $contenido = str_replace("</p>", "<br/>", $contenido);
                        $array = explode('<br/>',$contenido);
                        $array_ = array();
                        for($i = 0; $i<count($array)-1;$i++)
                        {
                            $array_[] = $array[$i];
                        }
                        //var_dump($array_);
                        $contenido = implode('<br/>',$array_);                     
                    }
                    else
                        $contenido = '';
                    ?>
                    
	 				<img class="inicio" src="<?php echo base_url('assets/img/comilla_abrir.png');?>"><?php echo $contenido;?><img class="fin" src="<?php echo base_url('assets/img/comilla_cerrar.png');?>">
		 		</div>
	 		</div>
	 	</div>
 	</div>
    <!-- fin testimonio personal --> 
    <?php
        endforeach;
        }
        else
        {
    ?>
	<div class="">
		<div class="col-xs-12 col-sm-6 col-md-4">
        <p style="padding-left:10px;">Lo sentimos, no hay registros.</p>  
	 	</div>
 	</div>                   
    <?php    
        }
    ?>   

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
<script src="<?php echo base_url('assets/plugins/fancybox/source/jquery.fancybox.js')?>"></script>
<script src="<?php echo base_url('assets/js/frontend.js')?>"></script>
<!-- fin scripts -->
</body>
</html>