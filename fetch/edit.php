<?php
//DB Connection
include 'conn.php';

if ($_POST['action'] == 'edit') {
    $data = [
        ':material_description' => $_POST['material_description'],
        ':spec' 				=> $_POST['spec'],
        ':part_no' 				=> $_POST['part_no'],
        ':id' 					=> $_POST['id'],
    ];

    $query = "
		UPDATE inv_material 
		SET material_description = :material_description, 
		spec = :spec, 
		part_no = :part_no 
		WHERE id = :id
		";
    $statement = $connect->prepare($query);
    $statement->execute($data);
    echo json_encode($_POST);
}

/* if ($_POST['action'] == 'delete') {
    $query = "
		DELETE FROM inv_material 
		WHERE id = '" .
        $_POST["id"] .
        "'
		";
    $statement = $connect->prepare($query);
    $statement->execute();
    echo json_encode($_POST);
} */

?>