<?php $this->load->view('frontend/template/header'); ?>

<!-- Start Page Banner -->
<div class="page-banner no-subtitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h2><?php echo $titulo; ?></h2>
      </div>
    </div>
  </div>
</div>
<!-- End Page Banner -->
    
<div class="row publicaciones-caboco" style="background-color: #efefef">    
	<div class="col-xs-12">
        <?php
            if(count($publicaciones)>0){
                foreach ($publicaciones as $publicacion):
                    $publicacion = (object) $publicacion;     
        ?>
	 	<!-- inicio publicacion-->
        <div class="col-xs-12 col-md-12 col-lg-6" style="padding: 10px;" >
	 		<div class="row publicaciones" style="background-color: #fff;margin-right: 0px;margin-left: 0px;">
	 			<div class="col-xs-12 col-sm-12 col-md-5">
                    <div align="center">
                        <img style="margin-top: 20px;" src="<?php echo base_url('assets/img/publicaciones/thumb/'.$publicacion->thumb);?>" alt="<?php echo $publicacion->titulo;?>"/>                                  		 				
                        <?php if(!empty($publicacion->url_descarga)){ ?>
                            <p style="margin-top: 10px;"><a href="<?php echo $publicacion->url_descarga;?>" target="_blank">Descargar publicación <span class="fa fa-download"></span></a></p>                        
                        <?php } ?>                                                                
                    </div>            		 			    
	 			</div>
	 			<div class="col-xs-12 col-sm-12 col-md-7">
                	<div class="brief-text">
    		 			<a href="javascript:;" data-toggle="modal" data-target="#modal-publicacion-<?php echo $publicacion->id;?>">	
                           <h3><?php echo $publicacion->titulo; ?></h3>
                        </a>  
                        <h5>Fuente: <?php echo $publicacion->fuente;?></h5>
		 				<h5>Fecha de publicación: <?php echo date('d-m-Y',strtotime($publicacion->fecha_publicacion));?></h5>
                        <br/>      			
		 			</div>
                    <?php echo $publicacion->resumen; ?>   
		 		</div>
	 		</div>
	 	</div>        
        <!-- fin publicacion --> 

        <!-- inicio publicacion modal -->
        <div class="modal fade" id="modal-publicacion-<?php echo $publicacion->id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <span onclick="cerrar_modal('modal-publicacion-<?php echo $publicacion->id;?>')" class="fa fa-times-circle " style="float: right; font-size: 28px; cursor: pointer; margin-top: -15px; margin-right: -18px; color: rgb(255, 255, 255);"></span>
              <div class="modal-body" style="padding: 0 !important;">
                 <!-- inicio esquema publicacion -->
                 <div class="row panel centered-child " style="background-color: #fff;padding-top: 30px;">
                    <div class="col-xs-1"></div>
                    <div class="col-xs-10">
                        <div class="noti-panel" style="height: 100%;">
                            <div class="noti-image">
                                <?php 
                                    if(!empty($publicacion->imagen)){
                                        $img = base_url('assets/img/publicaciones/'.$publicacion->imagen);
                                    }else{
                                        $img = base_url('assets/img/publicaciones/default.png');
                                    }
                                ?>
                                <img src="<?php echo $img; ?>"  style="width: 100%;" alt="<?php echo $publicacion->titulo;?>"/>
                            </div>
                            <?php
                                $class_enlace = 'ng-hide';
                                $enlace = '';
                                if(!empty($publicacion->url_descarga)){
                                  $class_enlace = '';
                                  $enlace = $publicacion->url_descarga;  
                                }
                            ?>
                            <div class="noti-titulo" style="background-color: #fff;border-left: 1px solid #ccc;border-right: 1px solid #ccc;padding: 1px 20px;">
                                <a  href="<?php echo $enlace;?>" target="_blank">
                                    <h3 class=""><?php echo $publicacion->titulo; ?></h3>
                                </a>
                            </div>
                            <div class="noti-text" style="font-size: 14px;line-height: 1.42857143;color: #555;text-align: justify;">
                                <?php echo $publicacion->contenido; ?>
                            </div>
                            <div class="noti-refe">
                                <table style="width:100%">
                                    <tbody>
                                        <tr>
                                            <td class="" style="width:99%">
                                                <?php echo $publicacion->fuente;?><br/>
                                                <span class="">
                                                    <i class="fa fa-calendar-check-o"> </i> 
                                                    <?php echo $publicacion->fecha_publicacion; ?>
                                                </span>
                                            </td>
                                            <td class="<?php echo $class_enlace; ?>" style="width:1%">
                                                <a class="news-link-dark" target="blank" href="<?php echo $enlace; ?>">
                                                    <span class="fa fa-download"></span>
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                 </div>    
                 <!-- fin esquema publicacion -->
              </div>
            </div>
          </div>
        </div>     
        <!-- fin publicacion modal --> 
        <?php
                endforeach;
            }else{
        ?>
            <p style="text-align: center;">Lo sentimos, no hay registros.</p>                     
        <?php } ?>   
    </div>
</div>

<?php $this->load->view('frontend/template/footer'); ?>