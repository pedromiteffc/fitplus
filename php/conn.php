<?php

    $server = 'localhost';
    $svname = 'root';
    $svpass = 'rootroot';
    $dbname = 'gymapp';
    $conn = mysqli_connect($server, $svname, $svpass, $dbname);

    if (!$conn)
    {
        echo 'Error en la conexión con la Base de Datos'.mysqli_connect_error();
    }

?>
