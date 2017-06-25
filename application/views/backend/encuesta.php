<?php $this->load->view('backend/template/header'); ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Resultados encuesta</h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="box box-primary">
            <div class="box-header" style="padding-bottom: 0px;">
                <div id="browse_table">
                    <table id="browse_table" class="table table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Desarrollo de la pregunta</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($preguntas as $pregunta) { ?>
                            <tr>
                                <td><?php echo $pregunta->codigo; ?></td>
                                <td><?php echo $pregunta->enunciado; ?></td> 
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="box-body">
                <div class="clr"></div>
                <!-- inicio tabla -->
                <div id="browse_table">
                    <!--button class="btn btn-success"><span class="fa fa-file-excel-o"></span> Descargar en formato excel</button-->

                    <p style="text-align: right;">Mostrando</p>
                    <table id="browse_table" class="table table-hover table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Nombre del encuestado</th>
                                <th>Correo</th>
                                <th>Dirección de las obras</th>
                                <?php foreach ($preguntas as $pregunta) { ?>
                                    <th><?php echo $pregunta->codigo; ?></th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>
                            <?php if(count($respuestas)>0){?>
                                <?php foreach ($respuestas as $respuesta) { ?>
                                <tr>
                                    <?php $encuestado = get_encuestado($respuesta->id_usuario); ?>
                                    <td><?php echo $encuestado->nombre; ?></td>
                                    <td><?php echo $encuestado->correo; ?></td>
                                    <td><?php echo $encuestado->direccion; ?></td>
                                    <?php // foreach ($preguntas as $pregunta) { ?>
                                        <td>
                                            <?php echo get_respuesta_p1($encuestado->id,3); ?>                                        </td>
                                        <td>
                                            <?php //echo get_respuesta($encuestado->id,3); ?>
                                            <?php echo get_respuesta_p2($encuestado->id,1); ?>
                                        </td>
                                        <td>
                                            <?php echo get_respuesta_p3($encuestado->id,2); ?>
                                        </td>
                                        <td>
                                            <?php echo get_respuesta_p4($encuestado->id,5); ?>
                                        </td>
                                        <td>
                                            <?php echo get_respuesta_p5($encuestado->id,6); ?>
                                        </td>
                                        <td>
                                            <?php echo get_respuesta_p5($encuestado->id,4); ?>
                                        </td>
                                    <?php // } ?>
                                </tr>
                                <?php } ?>                            
                            <?php }else{ ?>
                            <tr>
                                <td colspan="<?php echo count($preguntas)+3; ?>">Lo sentimos, no hay registros.</td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                    <?php // print_r($respuestas); ?>
                </div>
            </div>
        </div>
    </section>
</div>

<?php $this->load->view('backend/template/footer'); ?>