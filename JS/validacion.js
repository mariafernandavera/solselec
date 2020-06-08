//cliente
function solotexto(e) { // 1
    tecla = (document.all) ? e.keyCode : e.which; // 2
    if (tecla==8) return true; // 3
    patron =/[A-Za-z\s]/; // 4
    te = String.fromCharCode(tecla); // 5
    return patron.test(te); // 6
}
function solonumero(e){
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla==8 ){
        return true;
    }
        
    // Patron de entrada, en este caso solo acepta numeros
    patron =/[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
	
}
function validar() {
 //obteniendo el valor que se puso en el campo text del formulario
 var miCampoTexto = document.getElementById("miCampo").value;
 //la condición
 if (miCampoTexto.length == 0 || /^\s+$/.test(miCampoTexto) & miCampoTexto.length > 10) {
     alert('El campo de texto esta vacio!');
     return false;
 }
    
 //Validando el combo select
var miCombo = document.getElementById("micombo").value;
 if(miCombo == "0"){
     alert('Debe Elegir una opcion en el combo!');
     return false;
 }

 
 var miFecha = document.getElementById("fecha").value;
 //Test fecha
		if(!isNaN(miFecha)){
			alert('ERROR: Debe elegir una fecha');
			return false;
		}
		
return true;

 }
  function validarSiNumero(numero){
    if (!/^([0-9])*$/.test(numero))
      alert("El valor " + numero + " no es un número");
  }
function noVacio(){
 
		var txtDir = document.getElementById("dir").value
 
		//Test campo obligatorio
		if(txtDir == null || txtDir.length == 0 || /^\s+$/.test(txtDir)){
			alert('ERROR: El campo nombre no debe ir vacío o lleno de solamente espacios en blanco');
			return false;
		}
}	
function validarEmail( email ) {
    expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    if ( !expr.test(email) )
        alert("Error: La dirección de correo " + email + " es incorrecta.");
}
//busca caracteres que no sean espacio en blanco en una cadena  
function vacio(q) {  
        for ( i = 0; i < q.length; i++ ) {  
                if ( q.charAt(i) != " " ) {   
                        return true  
                }  
        }  
        return false  
}  
  
//valida que el campo no este vacio y no tenga solo espacios en blanco  
function valida(F) {  
          
        if( vacio(F.value) == false ) {  
                alert("El campo esta vacio debe llenarlo.")  
                return false  
        } else {  
                
				form.submit()				
        }  
          
}  
function validateDecimal(valor) {
    var RE = /^\d*\.?\d*$/;
    if (RE.test(valor)) {
        return true;
    } else {
        return false;
    }
}
function solonumerodecimal(e){
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla==8 ){
        return true;
    }
        
    // Patron de entrada, en este caso solo acepta numeros
    patron =/[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
	
}