<?PHP
function encabezado(){
session_start();
echo "<p align='right'>Bienvenido ", $_SESSION['nombre1'],"</br>",$_SESSION['tipo1']," <br/><p>"; 
}
?>