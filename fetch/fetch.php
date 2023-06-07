<?php
//DB Connection
//include 'conn.php';
include('../connection/connect.php');
$column = array("inv_material.id", "inv_material.material_description", "inv_material.spec",  "inv_material.part_no", "inv_materialcategory.material_sub_description");

$query = "SELECT inv_material.id,inv_material.material_description,inv_material.spec,inv_material.part_no, inv_materialcategory.material_sub_description FROM inv_material INNER JOIN inv_materialcategory 
 ON inv_materialcategory.id = inv_material.material_sub_id";
 
$query .= " WHERE ";

if (isset($_POST["search"]["value"])) {
    $query .=
        'inv_material.id LIKE "%' .
        $_POST["search"]["value"] .
        '%" 
	OR inv_materialcategory.material_sub_description LIKE "%' .
        $_POST["search"]["value"] .
        '%"
		
	OR inv_material.material_description LIKE "%' .
        $_POST["search"]["value"] .
        '%"
 OR inv_material.spec LIKE "%' .
        $_POST["search"]["value"] .
        '%" 
 OR inv_material.part_no LIKE "%' .
        $_POST["search"]["value"] .
        '%" 
 ';
}

if (isset($_POST["order"])) {
    $query .= 'ORDER BY ' . $column[$_POST['order']['0']['column']] . ' ' . $_POST['order']['0']['dir'] . ' ';
} else {
    $query .= 'ORDER BY inv_material.id ASC ';
}

$query1 = '';

if ($_POST["length"] != -1) {
    $query1 = 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}
$number_filter_row = mysqli_num_rows(mysqli_query($conn, $query));
$result = mysqli_query($conn, $query . $query1);
//$data = array();

$data = [];

foreach ($result as $row) {
    $sub_array = [];
    $sub_array[] = $row['id'];
    $sub_array[] = $row['material_sub_description'];
    $sub_array[] = $row['material_description'];
    $sub_array[] = $row['spec'];
    $sub_array[] = $row['part_no'];
    $data[] = $sub_array;
}

$output = [
    'draw' => intval($_POST['draw']),
    'recordsTotal' => $number_filter_row,
    'recordsFiltered' => $number_filter_row,
    'data' => $data,
];

echo json_encode($output);

?>