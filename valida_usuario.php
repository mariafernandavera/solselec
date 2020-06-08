<?PHP

session_start();
 include("conectarse.php"); 
 $conn=conectarse(); 
 extract($_POST);
 $sql1="Select * from cliente where contra='$clave' and usuario ='$usuario'" ;
 $sql2="Select * from empleado where contra='$clave' and usuario ='$usuario'" ;
 $sql3="Select * from usuario where contra='$clave' and usuario ='$usuario'" ;
 $result1=pg_query($conn,$sql1);
 $result2=pg_query($conn,$sql2);
 $result3=pg_query($conn,$sql3);
 $numrows1=pg_numrows($result1);
 $numrows2=pg_numrows($result2);
 $numrows3=pg_numrows($result3);
 $rows1=pg_fetch_array($result1);
 $rows2=pg_fetch_array($result2);
 $rows3=pg_fetch_array($result3);
	
		
		
		
		
		
if($numrows1!=0||$numrows3!=0){
	$codigo=$rows1["codigocliente"];
	$nombre=$rows1["nombre"];
	$_SESSION["tipo1"]='Cliente';
	header("Location:  menu_cliente.php");
}
else{
	if($numrows2!=0){
		$codigo=$rows2["codigoempleado"];
        $nombre=$rows2["nombre"];
	    $char=substr($codigo,0,1);
		
		if($char==1){
			$_SESSION["tipo1"]='Administrador';
			header("Location:  menu_administrador.php");
			
		}
		else{
			$_SESSION["tipo1"]='Empleado';
			header("Location:  menu_empleado.php");
			
		}
	}
	else{
		header("Location: usuarioincorrecto.php");
	}
}
$_SESSION["codigo1"]=$codigo; 
$_SESSION["nombre1"]=$nombre; 
pg_close($conn); pg_free_result($result1);pg_free_result($result2);pg_free_result($result3)
?>
