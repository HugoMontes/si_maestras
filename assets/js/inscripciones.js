function afiliado_si_no_checked() {
    if (document.getElementById('afiliado_si').checked) {
        document.getElementById('div_afiliado_si').style.display = 'block';
    }
    else{
        document.getElementById('div_afiliado_si').style.display = 'none';
        document.getElementById('nombre_afiliado').value = '';
    } 
}

function medio_aviso_checked() {
    if (document.getElementById('medio_aviso_5').checked) {
        document.getElementById('div_formador').style.display = 'block';
        document.getElementById('div_otro').style.display = 'none'; 
        document.getElementById('medio_nota_6').value = '';
    }else if(document.getElementById('medio_aviso_6').checked){
        document.getElementById('div_otro').style.display = 'block';
        document.getElementById('div_formador').style.display = 'none';
        document.getElementById('medio_nota_5').value = '';
    }else{
        document.getElementById('div_formador').style.display = 'none';
        document.getElementById('div_otro').style.display = 'none';
        document.getElementById('medio_nota_5').value = ''; 
        document.getElementById('medio_nota_6').value = '';        
    } 
}