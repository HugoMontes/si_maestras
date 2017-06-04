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
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Apellidos</th>
					<th>Nombres</th>
					<th>Especialidad</th>
					<th>Centro de formación</th>
					<th>Teléfono de contacto 1</th>					
					<th>Teléfono de contacto 2</th>
					<th>Correo</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach ($especialistas as $e) { ?>
				<tr>
					<td rowspan="<?php echo count($e['especialidades']); ?>">
						<?php echo $e['apellidos']; ?>
					</td>
					<td rowspan="<?php echo count($e['especialidades']); ?>">
						<?php echo $e['nombres']; ?>
					</td>
					<td><?php echo $e['especialidades'][0]['especialidad']; ?></td>
					<td><?php echo $e['especialidades'][0]['centro']; ?></td>
					<td rowspan="<?php echo count($e['especialidades']); ?>">
						<?php echo $e['telefono_contacto']; ?>
					</td>

					<td rowspan="<?php echo count($e['especialidades']); ?>">
						<?php echo $e['telefono_referencia']; ?>
					</td>
					<td rowspan="<?php echo count($e['especialidades']); ?>">
						<?php echo $e['correo']; ?>
					</td>
				</tr>
				<!--begin:especialidades_centros-->
				<?php for($i=1;$i<count($e['especialidades']);$i++) { ?>
					<tr>
						<td><?php echo $e['especialidades'][$i]['especialidad']; ?></td>
						<td><?php echo $e['especialidades'][$i]['centro']; ?></td>
					</tr>
				<?php } ?>
				<!--end:especialidades_centros-->
				<?php } ?>
			</tbody>		
		</table>
	</div>
</div>
<?php $this->load->view('frontend/template/footer'); ?>