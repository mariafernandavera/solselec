<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8"/>
<link rel="STYLESHEET" type="text/css" href="CSS/estilomenu1.css">	
<link rel="STYLESHEET" type="text/css" href="CSS/estilo.css">	 
<link rel="STYLESHEET" type="text/css" href="CSS/1.css">	 
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no, maximun-scale=1.0, minimum-scale=1.0">
 
</head>
<body style="background-image:url(Imagenes/13.jpg);
	background-repeat:repeat;
	background-size:400px 200px;
	width:100%;" >

<?php
include("menuadministrador.php");
menu();
?><br><br><br>
</br></br>


<h2 class="team">NUESTRO EQUIPO ESTA CONFORMADO POR</h2>
<div class=personas">
<br>
<br><br>

<div class="social">
		<ul>
			<li><a href="https://es-la.facebook.com/" target="_blank" class="facebook"><img src="Imagenes/fac.png" ></a></li>
			<li><a href="http://www.twitter.com/" target="_blank" class="twitter"><img src="Imagenes/tw.png" ></a></li>
			<li><a href="https://www.instagram.com/?hl=es-la" target="_blank" class="instagram"><img src="Imagenes/instagram.png" ></a></li>
			<li><a href="https://www.youtube.com/?gl=CO&hl=es-419" target="_blank" class="youtube"><img src="Imagenes/youtube.png" ></a></li>
			<li><a href="https://web.whatsapp.com/%F0%9F%8C%90/es"  target="_blank" class="ws"><img src="Imagenes/ws.png" ></a></li>
		</ul>
	<center>
	</div>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="imagenes/h1.png"  style="width:100%">
      <div class="container">
        <h2>Jorge Vera Fuentes </h2>
        <p class="title" ><b>Fundador</b></p>
        <p>Teléfono :3102645203</p>
        <p>jorge@gmail.com</p>
        <p><button class="button" onclick="location.href='https://www.google.com/gmail/'"  target="_blank" >Contactar</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="imagenes/ceo.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Jhon Jairo Zambrano</h2>
        <p class="title"><b>Técnico</b></p>
        <p>Teléfono :3102045203</p>
        <p>jhon@gmail.com</p>
        <p><button class="button"onclick="location.href='https://www.google.com/gmail/'"  target="_blank" >Contactar</button></p>
      </div>
    </div>
  </div>
  <div class="column">
    <div class="card">
      <img src="imagenes/mujer.png" alt="John" style="width:100%">
      <div class="container">
        <h2>Daniela Alviarez</h2>
        <p class="title"><b>Contador</b></p>
        <p>Teléfono :3102045203</p>
        <p>daniela@gmail.com</p>
        <p><button class="button" onclick="location.href='https://www.google.com/gmail/'"  target="_blank">Contactar</button></p>
      </div>
    </div>
  </div>
</div>
  </div></center>
  </br></br>
<?php
include("piepagina.php");
pie();
?>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="JS/main.js"></script>

</body>
</html>

