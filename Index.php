<?php
    include("cn.php");
    $usuarios = "SELECT * FROM usuarios";
?>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Pagina principal</title>
        <meta name="viewport" content="width=device-width,user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0">
        <link rel="stylesheet" href="Estilo.css">
    </head>
    <body>
        <div class="archivos">
            <form action="subearchivo.php" method="post" enctype="multipart/form-data" class="Edit_form">
            <b>Nombre del archivo: </b> 
            <br>
            <input class="archivos_edit" type="text" name="cadenatexto" size="20" maxlength="100">
            <input class="archivos_edit" type="hidden" name="MAX_FILE_SIZE" value="100000">
            <br>
            <br>
            <b>Puedes seleccionar cualquier formato. </b>
            <br>
            <input name="userfile" type="file">
            <br>
            <input type="submit" value="Enviar">
            </form>
        </div>    



        <div class="container-add">
            <h2 class="container__title">Registrar nuevo usuario</h2>
            <form action="insertar.php" method="post"
            class="container__form">
                <label class="container__label" for="">Nombre:</label>
                <input class="container__input" name="Nombre" type="text"> 
                <label class="container__label" for="">Apellidos:</label>
                <input class="container__input" name="Apellidos" type="text"> 
                <label class="container__label" for="">Direccion:</label>
                <input class="container__input" name="Direccion" type="text"> 
                <label class="container__label" for="">Telefono:</label>
                <input class="container__input" name="Telefono" type="number">
                <input class="container__submit" type="submit"> 
            </form>
        </div>    

        <div class="container-table">
            <div class="table__title">Datos de usuario <a href="Edicion.php" class="title_edit">Editar</a></div>
            <div class="table__header">Nombre</div>
            <div class="table__header">Apellidos</div>
            <div class="table__header">Direccion</div>
            <div class="table__header">Telefono</div>
            <?php $resultado = mysqli_query($conexion, $usuarios);

            while($row=mysqli_fetch_assoc($resultado)) { ?>
            <div class="table__item"><?php echo $row["Nombre"]?></div>
            <div class="table__item"><?php echo $row["Apellidos"]?></div>
            <div class="table__item"><?php echo $row["Direccion"]?></div>
            <div class="table__item"><?php echo $row["Telefono"]?></div>
            <?php } mysqli_free_result($resultado);?>


        </div>
    </body>
</html>
