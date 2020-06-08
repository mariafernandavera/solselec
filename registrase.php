<?PHP
 extract($_POST);
include("conectarse.php"); 
 $conn=conectarse(); 
$sql2="insert into empleado (codigoempleado,cedula,nombre,apellido1,apellido2,fechanacimiento,email,usuario,
contra,edad,rh,cargo,fechaingreso,horario,salario,observaciones,escolarizacion,nivelinterno,estado,fknombresucursal,fknitseguro,
fknitfondo,direccion,telefono,genero ) 
values ('$codigo1','$cedula1','$nombre1','$apellido1','$apellido2',
'$fecha_nacimiento1','$email1','$usuario1','$contra1','$edad1','$rh1',
'$cargo1','$fecha_Ingreso1','$horario1','$salario1','$observaciones','$escolarizacion',
'$nivel_interno','$estado1','$sucursal1','$nit_seguro1','$nit_fondo1','$direccion1','$telefono1','$genero1')";
$result = pg_query($conn, $sql2);			
?>