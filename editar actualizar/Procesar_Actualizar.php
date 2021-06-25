<?php
include("cn.php");

$id= $_POST['Id'];
$Nombre = $_POST['Nombre'];
$Apellidos = $_POST['Apellidos'];
$Direccion = $_POST['Direccion'];
$Telefono = $_POST['Telefono'];

$actualizar = "UPDATE usuarios SET Nombre='$Nombre', Apellidos='$Apellidos', Direccion='$Direccion',Telefono='$Telefono' WHERE Id='$id'";

$resultado=mysqli_query($conexion, $actualizar);

if($resultado){
    echo "<script>alert('Datos guardados con exito, actualice la pagina para ver los cambios.');window.location='/2da nota multimedios'</script>";
}
else {
    echo "<script>alert('No se pudieron actualizar los datos');window.history.go(-1);</script>";
}
