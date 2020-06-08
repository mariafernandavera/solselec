<?php

function menu(){
echo"

<header id='main' >
<div class='menubar'><a href='#' class='btmenu'><span class='icon-list2'> </span><img src='Imagenes/logo1 (1).png'></a></div>
		<nav class='contenedor'>
		
		<div class='logo'><img src='Imagenes/logo1 (1).png'></div>
			<ul>
				<li class='p'><a  href='menu_cliente.php'><span class='primero'><i class='icon icon-home'></i></span>Inicio</a></li><li class='s'>
				<a href='nosotroscliente.php'><span class='segundo'><i class='icon icon-users'></i></span>Nosotros</a>
					
				</li><li class='t'> 
				<a  href='contactocliente.php'><span class='tercero'><i class='icon icon-users'></i></span>Contacto</a></li><li class='lista c'>
				<a href=''><span class='cuarto'><i class='icon icon-cog'></i></span>Transaccion <i class='caret' > ▼</i></a>
				<ul class='desplegable'>
						<li><a href='Consultar/todaconsultacliente.php'>Consulta </a></li>
						<li><a href='Modificar/todamodificacliente.php'>Modificar datos</a></li>
						<li><a href='salir.php'><span class='icon icon-exit'></span>Salir</a></li>
				</ul>
				
				</li>
				
			</ul>
		</nav>
		<nav class='responde'>
		<ul>
				<li class='p'><a  href='menu_cliente.php'><span><i class='icon icon-home'></i></span>Inicio</a></li><li class='s'>
				<a href='nosotroscliente.php'><span><i class='icon icon-users'></i></span>Nosotros</a>
					
				</li><li class='t'> 
				<a  href='contactocliente.php'><span><i class='icon icon-users'></i></span>Contacto</a></li><li class='submenu'>
				<a class='menu' href='#'><span class='candado'><i class='icon icon-cog'></i></span>Transaccion <span class='caret' > ▼</span></a>
				<ul class='children'>
							<li><a href='Consultar/todaconsultacliente.php'>Consulta </a></li>
						<li><a href='Modificar/todamodificacliente.php'>Modificar datos</a></li>
						<li><a href='salir.php'><span class='icon icon-exit'></span>  Salir</a></li>
				</ul>
				
				</li>
				
			</ul>
		
		</nav>
	</header>
	
<br/>";
}
?>