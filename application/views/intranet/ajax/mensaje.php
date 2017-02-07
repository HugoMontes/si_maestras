<?php if (isset($mensaje)) {
?>
<div class="callout callout-success">
    <h4>Mensaje</h4>

    <p><?php echo $mensaje;?></p>
</div>
<?php    
} elseif (isset($error)) {
?>                
<div class="callout callout-danger">
    <h4>Error</h4>

    <p><?php echo $error;?></p>
</div>          
<?php
}?>