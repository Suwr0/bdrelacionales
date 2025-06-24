<?php
    header("Content-Type: application/json");


    require 'conexionDulceria.php';

    $sql = "SELECT * FROM productos";
    $result = $conn->query($sql);

    $dulces = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $dulces[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($dulces);
?>