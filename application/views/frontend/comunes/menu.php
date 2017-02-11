<div class="navbar navbar-default navbar-top">
	<a class="navbar-brand" href="<?php echo base_url('/');?>">
		<img alt="" style="margin-left: 20px;" src="<?php echo base_url('assets/img/logo/'.$mod_logo->contenido);?>">
	</a>
	<div class="container-fluid" style="height: 85px;">
		<div class="navbar-header">
			<!-- Stat Toggle Nav Link For Mobiles -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<i class="fa fa-bars"></i>
			</button>
			<!-- End Toggle Nav Link For Mobiles -->			
		</div>
		<div class="navbar-collapse collapse">
			<!-- Start Navigation List -->
			<ul class="nav navbar-nav navbar-right">
				<?php echo $menus;?>
				<li class="navbar-brand">
					<img alt="" src="<?php echo base_url('assets/img/logo_caboco.png');?>" id="logo-caboco" style="max-height: 70px; margin-left: 40px; margin-right: 10px;">
				</li>
				<!--
				<li class="navbar-brand">
					<img alt="" src="<?php echo base_url('assets/img/logo_oit.png');?>" id="logo-oit" style="max-height: 63px; margin-top: 4px">
				</li>
				-->
			</ul>
			<!-- End Navigation List -->
		</div>
	</div>
	
	
	<!-- Mobile Menu Start -->
	<ul class="wpb-mobile-menu">
		<?php echo $menus;?>
		<li style="text-align: center;">
			<img alt="" src="<?php echo base_url('assets/img/logo_caboco.png');?>" style="max-height: 70px; margin: 10px;">
		</li>
		<!--
		<li style="text-align: center;">
			<img alt="" src="<?php echo base_url('assets/img/logo_oit.png');?>" style="max-height: 70px; margin: 10px;">
		</li>
		-->
	</ul>
	<!-- Mobile Menu End -->
</div>