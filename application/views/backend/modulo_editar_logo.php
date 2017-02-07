<?php $this->load->view('backend/template/header'); ?> 
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      <?php echo $titulo; ?>
      <small></small>
    </h1>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <!-- inicio cuadro mensaje -->                
        <?php if (isset($mensaje)) {  ?>
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
		  <div class="content">

          <!-- form start -->
		  <form role="form" enctype="multipart/form-data"  method="post" action="<?php echo base_url('index.php/administrador/modulo/editar/logo');?>">
		  	<?php
		  	  if(!empty($modulo->contenido)){
		  	  $label_logotipo = 'Cambiar Logotipo';  
		  	?>
		  	<div id="vista_previa" class="form-group">
		  		<label for="vista_previa">Logotipo</label>
		  		<br/>
		 		<div class="marco-logo">
			  		<div class="content-logo">
			  			<img id="img-out" class="img-responsive img-centro" src="<?php echo base_url('assets/img/logo/'.$modulo->contenido); ?>" />
			  		</div>
		  		</div>
		  	</div>
		  	<?php }else{
		  	  $label_logotipo = 'Logotipo';
		  	} ?>

		  	<div class="form-group">
		  		<label for="file-input"><?php echo $label_logotipo; ?></label>
		  		<input id="file-input" type="file" name="file-input" />                
		  		<p class="help-block"><?php echo $this->lang->line('score_imagen_upload').'&nbsp;&nbsp;'.$this->lang->line('score_formador_img_condiciones');?></p>
		  	</div>

		  	<div class="box-footer">
              <button type="submit" class="btn btn-primary">Guardar</button>
            </div>
		  </form>
          <!-- form end -->
          </div>                                 
        </div>

        <!-- /.box -->
      </div>
      <!-- /.col-->
    </div>
    <!-- ./row -->
  </section>
  <!-- /.content -->
</div>
<?php $this->load->view('backend/template/footer'); ?>
<script type="text/javascript">
 $(window).load(function(){
 	$(function() {
  		$('#file-input').change(function(e) {
      		addImage(e); 
     	});

     	function addImage(e){
      		var file = e.target.files[0],
      		imageType = /image.*/;
	      	if (!file.type.match(imageType)){
	       		return;
	      	}
	      	var reader = new FileReader();
	      	reader.onload = fileOnload;
	      	reader.readAsDataURL(file);
    	}
  
    	function fileOnload(e) {
      		var result=e.target.result;
      		$('#img-out').attr("src",result);
    	}
   	});
 });
</script>