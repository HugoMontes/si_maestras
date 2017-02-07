 $(document).ready(function(){
      //$('#wizard_verticle').smartWizard();
      $('#wizard_verticle').smartWizard({transitionEffect:'slide',onLeaveStep:leaveAStepCallback,onFinish:onFinishCallback,enableFinishButton:true,labelNext:'Siguiente', labelPrevious:'Anterior', labelFinish:'Enviar inscripción'});
      $('.buttonNext').addClass('btn btn-success');
      $('.buttonPrevious').addClass('btn btn-primary');
      $('.buttonFinish').addClass('btn btn-default');
      $('.close').addClass('btn btn-warning');
      
            
      function leaveAStepCallback(obj){
        var step_num= obj.attr('rel');
        return validateSteps(step_num);
        //return true;
      }
      
      function onFinishCallback(){
       if(validateAllSteps()){
        $('form').submit();
       }
       //$('form').submit();
      }
            
		});
	   
    function validateAllSteps(){
       var isStepValid = true;
       
       if(validateStep1() == false){
         isStepValid = false;
         $('#wizard_verticle').smartWizard('setError',{stepnum:1,iserror:true});         
       }else{
         $('#wizard_verticle').smartWizard('setError',{stepnum:1,iserror:false});
       }
       
       if(validateStep4() == false){
         isStepValid = false;
         $('#wizard_verticle').smartWizard('setError',{stepnum:3,iserror:true});         
       }else{
         $('#wizard_verticle').smartWizard('setError',{stepnum:3,iserror:false});
       }
       
       if(!isStepValid){
          $('#wizard_verticle').smartWizard('showMessage','Por favor, corrija los errores para poder continuar');
       }
              
       return isStepValid;
    } 	
		
		
		function validateSteps(step){
		  var isStepValid = true;
      // validando paso 1
      if(step == 1){
        if(validateStep1() == false){
          isStepValid = false; 
          $('#wizard_verticle').smartWizard('showMessage','Por favor, corrija los errores en el paso '+step);
          $('#wizard_verticle').smartWizard('setError',{stepnum:step,iserror:true});         
        }else{
          $('#wizard_verticle').smartWizard('hideMessage');
          $('#wizard_verticle').smartWizard('setError',{stepnum:step,iserror:false});
        }
      }
      
      // validando paso 4
      if(step == 4){
        if(validateStep4() == false ){
          isStepValid = false; 
          $('#wizard_verticle').smartWizard('showMessage','Por favor, corrija los errores en el paso '+step);
          $('#wizard_verticle').smartWizard('setError',{stepnum:step,iserror:true});         
        }else{
          $('#wizard_verticle').smartWizard('hideMessage');
          $('#wizard_verticle').smartWizard('setError',{stepnum:step,iserror:false});
        }
      }
      
      return isStepValid;
    }
		
	function validateStep1(){
       var isValid = true; 
       // Validando el nombre de la empresa
       var nombre_empresa = $('#nombre_empresa').val();
       if(!nombre_empresa && nombre_empresa.length <= 0){
         isValid = false;
         $('#msg_nombre_empresa').html('Por favor, introduzca el nombre de la empresa').show();
       }else{
         $('#msg_nombre_empresa').html('').hide();
       }
       
       // validando nit
       var nit = $('#nit').val();
       if(!nit && nit.length <= 0){
         isValid = false;
         $('#msg_nit').html('Por favor, introduzca el nit').show();         
       }else{
         if(isNaturalNumber(nit)){
             $('#msg_nit').html('').hide();
         }
         else
         {
             isValid = false;
             $('#msg_nit').html('El NIT debe contener solo números').show();               
         }       
       }
       
       // validando telefono
       var telefono = $('#telefono').val();
       if(!telefono && telefono.length <= 0){
         isValid = false;
         $('#msg_telefono').html('Por favor, introduzca el teléfono').show();         
       }else{
         if(isNaturalNumber(telefono)){
             $('#msg_telefono').html('').hide();
         }
         else
         {
             isValid = false;
             $('#msg_telefono').html('El teléfono debe contener solo números').show();               
         }   
       }  
       
       // validando el nombre del gerente
       var nombre_gerente = $('#nombre_gerente').val();
       if(!nombre_gerente && nombre_gerente.length <= 0){
         isValid = false;
         $('#msg_nombre_gerente').html('Por favor, introduzca los apellidos y nombres del gerente').show();         
       }else{
         $('#msg_nombre_gerente').html('').hide();  
       } 
       return isValid; 
    }
    
    function validateStep4(){
        var isValid = true;    
        // validando el nombre del representante legal
        var nombre_representante_legal = $('#nombre_representante_legal').val();
        if(!nombre_representante_legal && nombre_representante_legal.length <= 0){
         isValid = false;
         $('#msg_nombre_representante_legal').html('Por favor, introduzca los nombres y apellidos').show();         
        }else{
         $('#msg_nombre_representante_legal').html('').hide();  
        } 

        // validando el cargo del representante legal
        var cargo_representante_legal = $('#cargo_representante_legal').val();
        if(!cargo_representante_legal && cargo_representante_legal.length <= 0){
         isValid = false;
         $('#msg_cargo_representante_legal').html('Por favor, introduzca el cargo').show();         
        }else{
         $('#msg_cargo_representante_legal').html('').hide();  
        } 

        // validando celular
        var celular_representante_legal = $('#celular_representante_legal').val();
        if(!celular_representante_legal && celular_representante_legal.length <= 0){
          isValid = false;
          $('#msg_celular_representante_legal').html('Por favor, introduzca el celular').show();         
        }else{
          if(isNaturalNumber(celular_representante_legal)){
              $('#msg_celular_representante_legal').html('').hide();
          }
          else
          {
              isValid = false;
              $('#msg_celular_representante_legal').html('El celular debe contener solo números').show();               
          }   
        }          
            
        //validando email
        var email_representante_legal = $('#email_representante_legal').val();
        if(email_representante_legal && email_representante_legal.length > 0){
            if(!isValidEmailAddress(email_representante_legal)){
                isValid = false;
                $('#msg_email_representante_legal').html('E-mail invalido').show();           
            }else{
                $('#msg_email_representante_legal').html('').hide();
            }
        }else{
            isValid = false;
            $('#msg_email_representante_legal').html('Por favor, introduzca el E-mail').show();
        }       
        
        // validando acepto terminos
        if(!document.getElementById('acepto_terminos').checked){
          isValid = false;
          $('#msg_acepto_terminos').html('Por favor, lea y acepte los términos y condiciones').show();             
        }
        else{
          $('#msg_acepto_terminos').html('').hide();   
        }
                
        return isValid;
    }
    
    // Email Validation
    function isValidEmailAddress(emailAddress) {
      var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
      return pattern.test(emailAddress);
    }     

    function isNaturalNumber(n) {
        n = n.toString(); // force the value incase it is not
        var n1 = Math.abs(n),
            n2 = parseInt(n, 10);
        return !isNaN(n1) && n2 === n1 && n1.toString() === n;
    }    