<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
    }



    require 'conexionDulceria.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $NOMBRE = $data['NOMBRE'];
    $PRECIO = intval($data["PRECIO"]);
    $DESCRIPCION = $data['DESCRIPCION'];
    $PROVEEDORES = $data["PROVEEDORES"];


    $query = $conn->prepare("INSERT INTO productos (NOMBRE, DESCRIPCION, PRECIO, PROVEEDORES) VALUES (?, ?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ssis", $NOMBRE, $DESCRIPCION, $PRECIO, $PROVEEDORES);

    if($query->execute()){
        echo json_encode(["mensaje" => "Producto insertado correctamente", "ID" => $query->insert_id]);
    } else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la insercion" . $query->error]);
    }
    $query->close();
    $conn->close();

?>