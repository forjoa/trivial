<?php
include ('database.php');

$query =  'SELECT * FROM Preguntas';

try {
    $result = $conn->query($query);
    $resultArray = array();

    while ($row = $result->fetch_assoc()) {
        $resultArray[] = array(
            'id' => $row['id'],
            'pregunta' => $row['pregunta'],
            'respuesta' => $row['respuesta'],
            'ayuda' => $row['ayuda']
        );
    }
} catch (Exception $e) {
    echo $e->getMessage();
}