<?php

    include('../php/conn.php');

    $exid = $_GET['id'];
    $del = "DELETE FROM food3 WHERE food_id = '$exid'";
    $res = mysqli_query($conexion, $del);

    if ($res)
    {
        header('location: /t2/merienda.php');
    }
    else
    {
	    echo "<script>alert('No se pudo eliminar')</script>";
    }

?>