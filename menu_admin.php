
<!DOCTYPE html>
<html lang="es">
<head>
     <title>SOLSELEC</title>
     <meta charset="utf-8"/>
<link rel="STYLESHEET" type="text/css" href="estilomenu.css">	 
 
	 
</head>
<body class="d" >

<?php
include('encabezado.php');
encabezado();

?>
<div  class="b" >  <img src="1.jpg" ></img></div>

<div  id="header" class="c" >

<ul class="nav">
<li><a href="1.home.html" target="_blank"><span class=""><i class="glyphicon glyphicon-home"> </i></span>INICIO</a></li>
<li><a href="nosotros.html"><span class=""><i class="icon icon-users"> </i></span>NOSOTROS</a></li>
<li><a href=""><span class=""><i class="icon icon-lock"> </i></span>INGRESO</a>
<ul >
<li class="m"><a href="#" target="_blank"> EMPLEADO</a></li>
<li class="m"><a href="#" target="_blank">CLIENTE</a></li>
<li class="m"><a href="#" target="_blank">PROVEEDOR</a></li>
<li class="m"> <a href="#" target="_blank">FAMILIAR</a></li>
<li class="m"><a href="#" target="_blank">CALIFICACION</a></li>
<li class="m"><a href="#" target="_blank">ENVIO</a></li>
<li class="m"><a href="#" target="_blank">POSTVENTA</a></li>
<li class="m"><a href="#"target="_blank">PRODUCTO</a></li>
<li class="m"><a href="#" target="_blank">REPRESENTANTE</a></li>
<li class="m"><a href="#" target="_blank">SERVICIO</a></li>

</ul></li>

<li><a href=""><span class=""><i class="icon icon-cogs"> </i></span>ELIMINAR</a>
<ul>
<li class="m"><a href="eliminaempleado.php" target="_blank"> EMPLEADO</a></li>
<li class="m"><a href="eliminacliente.php" target="_blank">CLIENTE</a></li>
<li class="m"><a href="eliminaproveedor.php" target="_blank">PROVEEDOR</a></li>
<li class="m"> <a href="eliminafamiliar.php" target="_blank">FAMILIAR</a></li>
<li class="m"><a href="eliminacalificacion.php" target="_blank">CALIFICACION</a></li>
<li class="m"><a href="eliminaenvio.php" target="_blank">ENVIO</a></li>
<li class="m"><a href="eliminapostventa.php" target="_blank">POSTVENTA</a></li>
<li class="m"><a href="eliminaproducto.php"target="_blank">PRODUCTO</a></li>
<li class="m"><a href="eliminarepresentante.php" target="_blank">REPRESENTANTE</a></li>
<li class="m"><a href="eliminaservicio.php" target="_blank">SERVICIO</a></li>
</ul></li>
</ul>
</div>
<div class="d" >
<br/>

  <img class="mySlides" src="8.png" >


  <img class="mySlides" src="6.jpg" >


<script>
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1} 
    x[slideIndex-1].style.display = "block"; 
    setTimeout(carousel, 2000); 
}


</script>
</div>
<br/><a href="salir.php">Salir</a>
</body>
</html>