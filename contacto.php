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
<body  >

<?php
include("menu.php");
menu();
?><br><br><br>
</br></br>


<center><h2 >NUESTRO EQUIPO ESTA CONFORMADO POR</h2></center>
<div class="personas">
<br>
<br><br>


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

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="JS/main.js"></script>

</body>
</html>
