$(document).ready(function(){
	$('#docPdf').change(function(){		
		if($(this).val()!=''){
			$('#tipo').val('pdf');
			$('#urlaudio').attr('disabled','true');
			$('#urlvideo').attr('disabled','true');
		}else{
			$('#tipo').val('texto');
			$('#urlaudio').removeAttr('disabled');
			$('#urlvideo').removeAttr('disabled');
		}
	});
	$('#urlvideo').change(function(){
		if($(this).val()!=''){
			$('#tipo').val('video');
			$('#urlaudio').attr('disabled','true');
			$('#docPdf').attr('disabled','true');
		}else{
			$('#tipo').val('texto');
			$('#urlaudio').removeAttr('disabled');
			$('#docPdf').removeAttr('disabled');
		}
	});
	$('#urlaudio').change(function(){
		if($(this).val()!=''){
			$('#tipo').val('audio');
			$('#urlvideo').attr('disabled','true');
			$('#docPdf').attr('disabled','true');
		}else{
			$('#tipo').val('texto');
			$('#urlvideo').removeAttr('disabled');
			$('#docPdf').removeAttr('disabled');
		}
	});
});