<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'PUT') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    exit();
}

require 'conexionDulceria.php';

$input = json_decode(file_get_contents('php://input'), true);
$ID = intval($input['ID']);
$NOMBRE = $conn->real_escape_string($input['NOMBRE']);
$PRECIO = intval($input['PRECIO']);
$DESCRIPCION = $conn->real_escape_string($input['DESCRIPCION']);
$PROVEEDORES = $conn->real_escape_string($input['PROVEEDORES']);

$query = "UPDATE productos SET NOMBRE = ?, PRECIO = ?, DESCRIPCION = ?, PROVEEDORES = ?, ID = ?";

$st = $conn->prepare($query);

if (!$st) {
    http_response_code(500);
    echo json_encode(["error" => "Error en la consulta: " . $conn->error]);
    exit();
}

$st->bind_param("sissi", $NOMBRE, $PRECIO, $DESCRIPCION, $PROVEEDORES, $ID);

if ($st->execute()) {
    if ($st->affected_rows > 0) {
        echo json_encode(["message" => "Dulce actualizado correctamente"]);
    } else {
        http_response_code(404);
        echo json_encode(["error" => "No se encontró el dulce con id: $ID"]);
    }
} else {
    http_response_code(500);
    echo json_encode(["error" => "ERROR al ejecutar: " . $st->error]);
}

$st->close();
$conn->close();
?>
