<?php $this->load->view('backend/template/header'); ?>   
 
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            <?php echo $titulo;?>
            <small></small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <!-- inicio cuadro mensaje -->  
                <div id="contenido_ajax">
                    <?php if (isset($mensaje)) { ?>
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
                </div>              
                <!-- fin cuadro mensaje  -->
                <form role="form" enctype="multipart/form-data" action="<?php echo base_url('index.php/administrador/especialista/importar/csv');?>" method="post">
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="clr"></div>
                        <h3>Paso 1</h3> 
                        <p>Descargar el documento CSV con el respectivo formato.</p>
                        <a href="<?php echo base_url(); ?>assets/csv/maestras_constructoras.csv" style="font-size: 14px;" class="btn btn-info btn-sm title-action"><span class="glyphicon glyphicon-download"></span> Descargar documento CSV</a>
                        <h3>Paso 2</h3> 
                        <p>Llenar el documento CSV.</p>
                        <h3>Paso 3</h3> 
                        <p>Seleccionar documento CSV debidamente llenado.</p>
                        <div class="form-group">
                          <input type="file" name="txtcsv" accept=".csv" />                
                          <p class="help-block">Formato aceptado: csv (Tamaño máximo 128 kb)</p>
                        </div>
                         <h3>Paso 4</h3> 
                        <p>Subir el documento CSV seleccionado.</p>
                        <button type="submit" style="font-size: 14px;" class="btn btn-success btn-sm title-action"><span class="glyphicon glyphicon-upload"></span> Subir documento CSV</button>
                    </div>
                </div>
                <!-- /.box -->
                </form>
            </div>
            <!-- /.col-->
        </div>
        <!-- ./row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php $this->load->view('backend/template/footer'); ?>