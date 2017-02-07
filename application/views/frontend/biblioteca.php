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
    <link href="<?php echo base_url('assets/plugins/venobox/venobox.css')?>" rel="stylesheet" media="screen"/>   
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
<div class="contenido"> 
<div class="col-xs-12 col-lg-12 col-md-12 sin-padding-lr">
<?php
echo $biblioteca->descripcion;
?>
<!-- inicio categorias y documentos de biblioteca -->
<div id="biblioteca"  class="mostrarCaja hide">
<?php //var_dump($biblioteca_categorias);?>
<?php
$colores_fondo = array('#026698','#317931','#990000','#026698','#317931','#990000','#026698','#317931','#990000','#026698','#317931','#990000','#026698','#317931','#990000');
$color = 0;
foreach($biblioteca_categorias as $biblioteca_categoria):  
?>
<div class="row" style="padding:20px;background-color:#f6f6f6;">
    <div class="col-lg-12" style="background-color: <?php echo $colores_fondo[$color];?>">
         <h2 style="padding:5px;color:#fff;"><?php echo $biblioteca_categoria->nombre;?></h2>
         <div style="padding:5px;color:#f4f4f4;"><p><?php echo $biblioteca_categoria->descripcion; ?></p></div>
    </div>
</div>
<?php
    $subcategorias = array();
    $subcategorias = get_biblioteca_categorias($biblioteca_categoria->id,$biblioteca->id);
    //var_dump($subcategorias);
    $i = 0;
    if(count($subcategorias)>=4){
        $class_col = 'col-lg-3';
        $limite_col = 4;
    }elseif(count($subcategorias)<4 AND count($subcategorias>0)){
        $class_col = 'col-lg-4';
        $limite_col = 3;
    }   
     
    foreach($subcategorias as $subcategoria):
        if($i == 0)
        {
            // row
        ?>
         <div class="row" style="padding:20px;background-color:#fff;">
        <?php           
        }
        ?>
            <div class="<?php echo $class_col;?>">
              <table class="herr-lista" style="width: 100%">
                <tbody>
                    <tr>
                      <?php
                      if(empty($subcategoria->icono))
                        $img = base_url('assets/img/documentos/categorias/icono-informacion.png');
                      else
                        $img = base_url('assets/img/documentos/categorias/'.$subcategoria->icono);                          
                      ?>
                      <td style="width: 60px;"><img src="<?php echo $img;?>"/></td>
                      <td style="padding-left: 10px;"><h3> <?php echo $subcategoria->nombre;?></h3></td>
                    </tr>
                    
                    <?php
                    $documentos = get_biblioteca_documentos($subcategoria->id);
                    foreach($documentos as $documento):
                    $documento = (object)$documento;
                    ?>
    				<tr>
                        <?php 
                        if(!empty($documento->documento))
                        {
                        ?>
                        <td>
                            <a href="<?php echo base_url('assets/documentos/'.$documento->documento); ?>" target="blank"><img class="icon-documento-biblioteca" src="<?php echo base_url('assets/img/documentos/frontend/'.get_icono_archivo($documento->documento)); ?>"/></a>
                        </td>                        
                        <?php    
                        }elseif(!empty($documento->url))
                        {
                        ?>
                        <td>
                        <?php            
                            if (strpos($documento->url, 'youtube') > 0) {
                                parse_str( parse_url( $documento->url, PHP_URL_QUERY ), $my_array_of_vars );                                
                            ?>
                                <a class="venobox" onclick="cambiar_menu();" data-autoplay="true" data-type="youtube" href="https://www.youtu.be/<?php echo $my_array_of_vars['v']; ?>"><img class="icon-documento-biblioteca"  src="<?php echo base_url('assets/img/documentos/frontend/icon_video.png');?>"/></a>
                            <?php    
                            } elseif (strpos($documento->url, 'vimeo') > 0) {
                            ?>
                                <a class="venobox" onclick="cambiar_menu();" data-type="vimeo" data-autoplay="true" href="http://vimeo.com/<?php echo substr(parse_url($documento->url, PHP_URL_PATH), 1);?>"><img class="icon-documento-biblioteca"  src="<?php echo base_url('assets/img/documentos/frontend/icon_video.png');?>"/></a>
                            <?php    
                            } else {
                            ?>
                                <a href="<?php echo $documento->url;?>" target="blank"><img class="icon-documento-biblioteca"  src="<?php echo base_url('assets/img/documentos/frontend/icon_link.png');?>"/></a>                            
                            <?php                            
                            }                            
                        ?>                         
                        </td>
                        <?php    
                        }                        
                        ?>
                        <td>
                            <h4><?php echo $documento->descripcion ?></h4>
                            <?php echo $documento->titulo;?>
                        </td>
                    </tr>                        
                    <?php    
                    endforeach;                        
                    ?>
                    
                    <?php
                    $subcategoria_otros = array();
                    $subcategoria_otros = get_biblioteca_categorias($subcategoria->id, $biblioteca->id, FALSE);
                    //var_dump($subcategoria_otros);
                    foreach($subcategoria_otros as $subcategoria_otro):
                        if($subcategoria_otro->id != $subcategoria->id)
                        {                                
                    ?>
                        <tr><td colspan="2"><h3><?php echo $subcategoria_otro->nombre; ?></h3></td></tr>  
                        <?php
                        $documentos = get_biblioteca_documentos($subcategoria_otro->id);
                        foreach($documentos as $documento):
                        $documento = (object)$documento;
                        ?>
        				<tr>
                            <td>
                                <a href="<?php echo base_url('assets/documentos/'.$documento->documento); ?>" target="blank"><img src="<?php echo base_url('assets/img/documentos/frontend/'.get_icono_archivo($documento->documento)); ?>"/></a>
                            </td>
                            <td>
                                <h4><?php echo $documento->descripcion ?></h4>
                                <?php echo $documento->titulo;?>
                            </td>
                        </tr>                        
                        <?php    
                        endforeach;                        
                        ?>                                                                            
                        <tr><td colspan="2"></td></tr>                           
                    <?php        
                        }                                                   
                    endforeach;                                                                     
                    ?>                                                             
                </tbody>
              </table>
           </div>            
        
        <?php                     
        $i= $i+1;
        if($i == $limite_col)
        {
            // cerramos el row
        ?>
         </div> 
        <?php    
            $i = 0;
            // nuevo row
        }        
    endforeach;  
    if($i > 0)
    {
        ?>
        </div>
        <?php
    } 
    $color = $color + 1;                 
endforeach;
?>
</div>
<!-- fin categorias y documentos de biblioteca -->
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
<script src="<?php echo base_url('assets/plugins/fancybox/source/jquery.fancybox.js')?>"></script>
<script src="<?php echo base_url('assets/js/frontend.js')?>"></script>
<script src="<?php echo base_url('assets/plugins/venobox/venobox.js')?>"></script>
<script src="<?php echo base_url('assets/js/venobox_setup.js')?>"></script>
<script>
function mostrar_biblioteca(){
    $( "#biblioteca" ).removeClass("hide");
}
</script>
<!-- fin scripts -->
</body>
</html>