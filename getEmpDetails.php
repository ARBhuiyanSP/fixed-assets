<?php
include "connection/connect.php";

$request = $_POST['request'];   // request

// Get employeeid list
if($request == 1){
    $search 	= $_POST['search'];

    $query 		= "SELECT * FROM inv_employee WHERE employeeid like'%".$search."%' OR name like'%".$search."%'";
    $result 	= mysqli_query($conn,$query);
    
    while($row 	= mysqli_fetch_array($result) ){
        $response[] = array("value"=>$row['id'],"label"=>$row['employeeid']);
    }

    // encoding array to json format
    echo json_encode($response);
    exit;
}

// Get details
if($request == 2){
    $userid = $_POST['userid'];
    $sql = "SELECT * FROM inv_employee WHERE id=".$userid;

    $result = mysqli_query($conn,$sql);

    $users_arr = array();

    while( $row = mysqli_fetch_array($result) ){
        $userid 		= $row['id'];
        $name 			= $row['name'];
        $designation	= $row['designation'];
        $department		= $row['department'];
        $division		= $row['division'];
        $group			= $row['group'];

        $users_arr[] 	= array("id" => $userid,"name" => $name,"designation" => $designation,"department" => $department,"division" => $division,"group" => $group);
    }

    // encoding array to json format
    echo json_encode($users_arr);
    exit;
}
