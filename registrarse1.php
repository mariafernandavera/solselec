<?PHP
  
ini_set('display_errors',true);
   include("conectarse.php"); 
     $conn=conectarse();  
	 extract($_POST);
$sql2="insert into usuario(usuario,contra) values ('$usuario','$clave')";
$result1 = pg_query($conn, $sql2);	

						
				if  ($result1==true) 
					{


					header("location: menu_cliente.php");
  }
 else
 {
	 header("location: registronull.php");						
 }

 pg_free_result($result1); 
  pg_close($conn);		
 ?>