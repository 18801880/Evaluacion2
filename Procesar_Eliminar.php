<?php
include("cn.php");

$id= $_GET['id'];
$eliminar = "DELETE FROM usuarios WHERE Id = '$id'";

$resultadoEliminar = mysqli_query($conexion, $eliminar);

if($resultadoEliminar){
    header("Location: Edicion.php");
} else {
    echo"<script>alert('No se pudo eliminar'); window.history.go(-1);</script>";
}