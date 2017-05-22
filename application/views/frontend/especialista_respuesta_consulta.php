<?php $this->load->view('frontend/template/header'); ?>
<!-- Start Page Banner -->
<div class="page-banner no-subtitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <h2>Lista de especialistas</h2>
      </div>
    </div>
  </div>
</div>
<!-- End Page Banner -->
<br/>
<div class="container">
	<div class="reporte-solicitud">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Apellidos</th>
					<th>Nombre</th>
					<th>Ciudad</th>
					<th>Direccion</th>
					<th>Especialidad</th>
					<th>Telefono de contacto</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($especialistas as $e) { ?>
				<tr>
					<td><?php echo $e['apellidos']; ?></td>
					<td><?php echo $e['nombres']; ?></td>
					<td><?php echo $e['ciudad']; ?></td>
					<td><?php echo $e['direccion']; ?></td>
					<td>
						<ul>
							<?php foreach ($e['especialidades'] as $esp) { ?>
							<li id="<?php echo $esp['id'] ?>" class="<?php // echo marcar_especialidad($esp['id'], $selecesp); ?> "><?php echo $esp['descripcion']; ?></li>
							<?php } ?>
						</ul>
					</td>
					<td><?php echo $e['telefono_contacto']; ?></td>
				</tr>
				<?php } ?>
			</tbody>		
		</table>
	</div>
</div>
<?php $this->load->view('frontend/template/footer'); ?>