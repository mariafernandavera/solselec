<html lang="es">

<HEAD>
    <title>LOGIN</title>
     <meta charset="utf-8"/>

<link rel="STYLESHEET" type="text/css" href="CSS/estilomenu1.css">	
<link rel="STYLESHEET" type="text/css" href="CSS/estilo.css">	 
<link rel="STYLESHEET" type="text/css" href="CSS/slide.css">
	 
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no, maximun-scale=1.0, minimum-scale=1.0">
  <script type="text/javascript" src="JS/validacion.js">
  
		
		 </script>   
</HEAD>
<body style="background-image:url(Imagenes/13.jpg);
	background-repeat:repeat;
	background-size:400px 200px;
	width:100%;">
<?php
include("menu.php");
menu();

?>

<div class="doble">
<div class="imag">
<img src='Imagenes/videovi.jpg'>
</div>


<div class="formu">
</br>


	<div class="titulo">Usuario o contraseña incorrectos</div> 
<br/><br/>
	<form method="POST" action="login.php" >
	<center><table class="formul">
	
	<input type="SUBMIT" value="Retornar">
		</td>
	</tr>
	</table></center>
	</form>



</div>

</div>

</br></br></br></br></br>
</br></br>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="JS/main.js"></script>
<?php
include("piepagina.php");
pie();
?>
</body>
</html>