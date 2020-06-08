<?php function slide(){ 
?>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="STYLESHEET" type="text/css" href="slide.css">
<link rel="STYLESHEET" type="text/css" href="../CSS/estilo.css">	
<body>

<h2 style="text-align:center">Slideshow Gallery</h2>

<div class="container">
  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="exterior.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="celcam.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="alarmaslide.jpg" style="width:100%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="dvr.jpg" style="width:100%">
  </div>

  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="CCTV1-1.jpg" style="width:100%">
  </div>
    
  <div class="mySlides">
    <div class="numbertext"></div>
    <img class="m" src="cam.jpg" style="width:100%">
  </div>
    
  <a class="prev" onclick="plusSlides(-1)"><span class="icon-circle-left"></span></a>
  <a class="next" onclick="plusSlides(1)"><span class="icon-circle-right"></span></a>

  <div class="caption-container">
    <p id="caption"></p>
  </div>

  <div class="row">
    <div class="column">
      <img class="demo cursor" src="exterior.jpg" style="width:100%" onclick="currentSlide(1)" alt="The Woods">
    </div>
    <div class="column">
      <img class="demo cursor" src="celcam.jpg" style="width:100%" onclick="currentSlide(2)" alt="Cinque Terre">
    </div>
    <div class="column">
      <img class="demo cursor" src="alarmaslide.jpg" style="width:100%" onclick="currentSlide(3)" alt="Mountains and fjords">
    </div>
    <div class="column">
      <img class="demo cursor" src="dvr.jpg" style="width:100%" onclick="currentSlide(4)" alt="Northern Lights">
    </div>
    <div class="column">
      <img class="demo cursor" src="CCTV1-1.jpg" style="width:100%" onclick="currentSlide(5)" alt="Nature and sunrise">
    </div>    
    <div class="column">
      <img class="demo cursor" src="cam.jpg" style="width:100%" onclick="currentSlide(6)" alt="Snowy Mountains">
    </div>
  </div>
</div>

<script src="slide.js"></script>
    
</body>
</html><?php } 
?>