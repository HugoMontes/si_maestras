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

<div class="row" style="margin-top: 20px;">
	<div class="col-xs-12">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12" style="margin-top: 20px;">
          <!-- inicio cuadro mensaje -->                
          <?php if (isset($mensaje)) { ?>       
            <div class="alert alert-success alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4>Mensaje</h4> 
              <p><?php echo $mensaje; ?></p>
            </div>
          <?php    
              $this->session->unset_userdata('mensaje');
            } elseif (isset($error)) {
          ?>                
            <div class="alert alert-danger alert-dismissible" role="alert">
              <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4>Error</h4> 
              <p><?php echo $error; ?></p>
            </div>                                  
          <?php
              $this->session->unset_userdata('error');
            }
          ?>
          <!-- fin cuadro mensaje  -->
        </div>
        <div class="col-xs-12 col-sm-12 col-md-6">
          <h2>Déjenos su mensaje</h2>
            <h3>
              <small style="font-size: 60%;">Todos los campos marcados con * son obligatorios</small>
            </h3>
            <form class="form-horizontal" method="post" action="<?php echo base_url('index.php/contacto/guardar'); ?>">
              <label for="nombre">Nombre <span class="required">*</span></label>
              <?php echo form_error('nombre', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="form-group">              
                <div class="col-xs-12 col-md-11">
                  <input class="form-control" name="nombre" id="nombre" placeholder="Nombre" type="text"/>
                </div>
              </div>
              <label for="email">Correo electrónico <span class="required">*</span></label>
              <?php echo form_error('email', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="form-group">
                <div class="col-xs-12 col-md-11">
                  <input class="form-control" name="email" id="email" placeholder="Correo electrónico"  type="email"/>
                </div>
              </div>
              <label for="mensaje">Mensaje <span class="required">*</span></label>
              <?php echo form_error('mensaje', '<span class="error-form">', '</span><br/><br/>'); ?>
              <div class="form-group">
                <div class="col-xs-12 col-md-11">
                  <textarea class="form-control" name="mensaje" id="mensaje" placeholder="Mensaje" rows="5"></textarea>
                </div>
              </div>
              <input type="hidden" name="guardar" id="guardar" value="<?php echo NUEVO;?>" />
              <div class="form-group">
                <div class="col-xs-12 col-md-11">
                  <?php echo $widget;?>
                  <?php echo $script;?>
                </div>
              </div>      
              <div class="form-group">
                <div class="col-xs-12 col-md-11">
                  <button class="btn btn-primary pull-right">Enviar</button>
                </div>
              </div>	
            </form>
            <hr/>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6">
              <h2>O contacte con nosotros en</h2>
              <div>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3825.2243722053763!2d-68.13051838453717!3d-16.514766488607044!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x915f20884cb255eb%3A0x16774838c16bce2b!2sConfederaci%C3%B3n+de+Empresarios+Privados+de+Bolivia!5e0!3m2!1ses!2ses!4v1475014786937" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
              </div>
              <div class="col-xs-12">
                <table class="table">
                  <tr>
                    <td><p><i class="fa  fa-map-marker" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><p>Calle Méndez Arcos #117, Sopocachi. La Paz, Bolivia</p></td>
                    <td><p><i class="fa fa-phone" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><p>(+591) 2 2420999</p></td>
                  </tr>
                  <tr>
                    <td><p><i class="fa fa-print" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><p>(+591) 2 2421272</p></td>
                    <td><p><i class="fa fa-envelope" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><p><a href="mailto:info@urse.org.bo">info@urse.org.bo</a></p></td>
                  </tr>
                  <tr>
                    <td><p><i class="fa fa-user" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><p>Lucia Sossa Aranibar</p></td>
                    <td><p><i class="fa fa-twitter" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><a href="javascript:;"><p>Twitter</a></p></td>
                  </tr>
                  <tr>
                    <td><p><i class="fa fa-linkedin" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><p><a href="javascript:;">Linkedin</a></p></td>
                    <td><p><i class="fa fa-facebook" style="color: #0099D2;margin-right: 0.8rem;"></i></p></td>
                    <td style="color: #666;"><p><a href="javascript:;">Facebook</a></p></td>
                  </tr>                                                                                                                
                </table>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>
<?php $this->load->view('frontend/template/footer'); ?>
