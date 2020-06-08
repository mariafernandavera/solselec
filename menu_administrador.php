<!DOCTYPE html>
<html lang="es" >
<head>
     <title>SOLSELEC</title>
     <meta charset="utf-8"/>
<link rel="STYLESHEET" type="text/css" href="CSS/estilomenu1.css">	
<link rel="STYLESHEET" type="text/css" href="CSS/estilo.css">	 
<link rel="STYLESHEET" type="text/css" href="CSS/slide.css">	 
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	  <meta name="viewport" content="width=device-width, initial-scale=1.0 user-scalable=no, maximun-scale=1.0, minimum-scale=1.0">
 

</head>

<body style="background-image:url(Imagenes/13.jpg);
	background-repeat:repeat;
	background-size:400px 200px;
	width:100%;">

<?php
include("menuadministrador.php");
menu();
?>

</br></br>

	<div class="social">
		<ul>
			<li><a href="https://es-la.facebook.com/" target="_blank" class="facebook"><img src="Imagenes/fac.png" ></a></li>
			<li><a href="http://www.twitter.com/" target="_blank" class="twitter"><img src="Imagenes/tw.png" ></a></li>
			<li><a href="https://www.instagram.com/?hl=es-la" target="_blank" class="instagram"><img src="Imagenes/instagram.png" ></a></li>
			<li><a href="https://www.youtube.com/?gl=CO&hl=es-419" target="_blank" class="youtube"><img src="Imagenes/youtube.png" ></a></li>
			<li><a href="https://web.whatsapp.com/%F0%9F%8C%90/es"  target="_blank" class="ws"><img src="Imagenes/ws.png" ></a></li>
		</ul>
	</div>


  <div class="conta">
  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="Imagenes/exterior.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="Imagenes/celcam.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="Imagenes/alarmaslide.jpg" style="width:100%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="Imagenes/dvr.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="Imagenes/CCTV1-1.jpg" style="width:100%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="Imagenes/cam.jpg" style="width:100%">
  </div>
    
  <a class="prev" onclick="plusSlides(-1)"><span class="icon-circle-left"></span></a>
  <a class="next" onclick="plusSlides(1)"><span class="icon-circle-right"></span></a>

  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <div class="row">
    <div class="column">
      <img class="demo cursor" src="Imagenes/exterior.jpg" style="width:100%" onclick="currentSlide(1)" alt="Seguridad en Exteriores">
    </div>
    <div class="column">
      <img class="demo cursor" src="Imagenes/celcam.jpg" style="width:100%" onclick="currentSlide(2)" alt="Supervisa tu casa desde la palma de tu mano">
    </div>
    <div class="column">
      <img class="demo cursor" src="Imagenes/alarmaslide.jpg" style="width:100%" onclick="currentSlide(3)" alt="Monitoreo de tu hogar 24 horas 7 días de la semana">
    </div>
    <div class="column">
      <img class="demo cursor" src="Imagenes/dvr.jpg" style="width:100%" onclick="currentSlide(4)" alt="Consigue los mejores equipos">
    </div>
    <div class="column">
      <img class="demo cursor" src="Imagenes/CCTV1-1.jpg" style="width:100%" onclick="currentSlide(5)" alt="Evita los puntos ciegos">
    </div>    
    <div class="column">
      <img class="demo cursor" src="Imagenes/cam.jpg" style="width:100%" onclick="currentSlide(6)" alt="Detección temprana de posibles intrusos">
    </div>
  </div>
</div>
<section id="header" align="center" >
</br></br>
</br></br>

<section id="header" align="center" >
<center><div class="bienvenida">
		
					<h1><b>SU SEGURIDAD ES PRIMORDIAL PARA NOSOTROS</b></br></br>
					
ofrecemos soluciones de calidad en </h1><br/>
					
				</div></center>

<div class="rowi"><center>
  <div class="coli">
  
    <div class="cardi">
	<h2>Sistemas de Alarmas electrónicos</h2>
      <img src="Imagenes/alarma.jpg" alt="Jane">
      <div class="contini">
        <h2>Prevenga, Detecte y Actúe</h2>
        <p>Cableados, Inalámbricos, Híbridos, Online para monitoreo o auto monitoreo. Sistemas Antirrobo con sensores y sistemas de notificaciones.</p>
        <p><button class="boti" onclick="location.href='contactocliente.php'">Contactanos</button></p>
      </div>
    </div></div>
	<div class="coli">
    <div class="cardi">
	<h2>Acceso Electronicos</h2>
      <img src="Imagenes/acceso.jpg" alt="Mike">
      <div class="contini">
        <h2>Proteja y Controle desde el ingreso</h2>
        <p>Lectores Biométricos (Huellas, rostros), proximidad, claves, lecturas de placas, reconocimiento de rostros y cerraduras biométricas.<br/></p>
        <p><button class="boti" onclick="location.href='contactocliente.php'">Contactanos</button></p>
      </div>
    </div>
  </div><div class="coli">
    <div class="cardi">
	<h2>Sistemas de Detección de Incendios</h2>
      <img src="Imagenes/incendio.jpg" alt="John" >
      <div class="contini">
        <h2>Mitigue el riesgo</h2>
        
        <p>Sistemas con Sensores y detectores de temperatura, monóxido de carbono, humo, luces de emergencia, 
equipos, sirenas de alerta, estaciones manuales de incendio para edificios y empresas.</p>
      
        <p><button class="boti" onclick="location.href='contactocliente.php'">Contactanos</button></p>
      </div>
    </div>
  </div>
  <div class="coli">
    <div class="cardi">
	<h2>Monitoreo De Alarmas para Tu Hogar </h2>
      <img src="Imagenes/camara.jpg" alt="John">
      <div class="contini">
        <h2>Proteja y Cuide su seguridad</h2>
       
        <p>Cuidamos tu hogar y brindamos tranquilidad a tu familia por medio de sistemas electrónicos de seguridad y de nuestro servicio de monitoreo de alarmas.
Con nosotros, tu hogar siempre estará protegido.</p>
        <p><button class="boti" onclick="location.href='contactocliente.php'">Contact</button></p>
      </div>
    </div>
  </div><center>
</div>
</section>

<div class="cotizacion"><br/>
<p><img src='imagenes/logo1 (1).png' ></img></br>
<h2 style="color:#1A5276;text-align:center;"><font size=8 >¡SOLICITE UNA COTIZACIÓN</font></h2></br></br><font size=5>
SOLSELEC | Seguridad Electrónica le ayuda a estar protegido en su hogar y sitio de trabajo</font></br></br>
<button width="100" height="30" onclick="location.href='contactocliente.php'" style="color:white; background-color:grey	">CONTACTANOS!</button><br/>
</p></br></br></div>
</br></br>
<?php
include("piepagina.php");
pie();
?>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="JS/main.js"></script>
<script src="JS/slide.js"></script>
	</body>
	</html>