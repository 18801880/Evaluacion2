<?php
include("cn.php");

$Nombre = $_POST["Nombre"];
$Apellidos = $_POST["Apellidos"];
$Direccion = $_POST["Direccion"];
$Telefono = $_POST["Telefono"];

$insertar = "INSERT INTO usuarios(Nombre, Apellidos, Direccion, Telefono) VALUES ('$Nombre', '$Apellidos', '$Direccion', '$Telefono')";

$resultado = mysqli_query($conexion, $insertar);
if($resultado){
    echo "<script>alert('Usuario registrado existosamente.');window.location='/2da nota multimedios'</script>";
}
else {
    echo "<script>alert('No se pudo registrar');window.history.go(-1);</script>";
}