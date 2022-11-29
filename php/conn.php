<?php

    //$server = 'localhost';
    //$svname = 'root';
    //$svpass = 'rootroot';
    //$dbname = 'gymapp';
    //$conn = mysqli_connect($server, $svname, $svpass, $dbname);
	$conexion = new mysqli("localhost", "root", "rootroot", "shop");
	

    if (!$conexion)
    {
        echo 'Error en la conexión con la Base de Datos'.mysqli_connect_error();
    }

?>
