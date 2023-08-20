<?php

if(isset($_GET['id'])){

$id = $_GET['id'];
$queryRole = "SELECT * FROM `roles` WHERE `id`='$id'";
$resultRole = $conn->query($queryRole);
 $roleData = $resultRole->fetch_object();


$queryPermissions = "SELECT * FROM `permission_role` WHERE `role_id`='$id'";
$resultPermissions = $conn->query($queryPermissions);
$assignPermissions = [];
 while ($row = $resultPermissions->fetch_assoc()) {
                $assignPermissions[] = $row["permission_id"];
}



// if ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST['role_create']=='role_update') {
      if (isset($_POST['role_update']) && !empty($_POST['role_update'])) {
    if (empty($_POST["name"])) {
        $nameErr = "Name is required";
      } else {
        $name = $_POST["name"]; 
      }

      if (empty($_POST["id"])) {
        $idErr = "ID is required";
      } else {
        $id = $_POST["id"]; 
      }

    $permissions= $_POST['permissions']; //array data

    //   echo "<pre>";
    // print_r($permissions);
    // echo "</pre>";

    //Get Data From Roles
    $queryRole = "UPDATE `roles` SET `name`='$name' WHERE `id`='$id'";
    $resultRole = $conn->query($queryRole);

    $deletePermission = array_diff($assignPermissions, $permissions);
            
   

    foreach($permissions as $permission){

        if(in_array($permission, $assignPermissions)){
            //Update
            $queryPermission = "UPDATE `permission_role` SET `permission_id`='$permission',`role_id`='$id' WHERE `permission_id`='$permission' AND `role_id`='$id'";
            $resultPermission = $conn->query($queryPermission);

        }else{
            //insert
            $queryPermission = "INSERT INTO `permission_role` (`permission_id`,`role_id`) VALUES ('$permission','$id')";
            $resultPermission = $conn->query($queryPermission);
        }
        
    }

     foreach($deletePermission as $delPermission){
       //delete
        $queryDeletePermission = "DELETE FROM `permission_role` WHERE `permission_id`='$delPermission' AND `role_id`='$id'";
        $resultDeletePermission = $conn->query($queryDeletePermission);
    }





}
    
    $_SESSION['success']    =   "role process have been successfully updated.";
   
	
		

}

if(isset($_GET['process_type']) && $_GET['process_type'] == "role_delete"){
    session_start();
    include '../connection/connect.php';
    include '../helper/utilities.php'; 
    $id         =   $_GET['delete_id'];

			//delete
            $roleDelete = "DELETE FROM `roles` WHERE `id`='$id'";
            $resultDelRolePermission = $conn->query($roleDelete);


            $rolePerDelete = "DELETE FROM `permission_role` WHERE `role_id`='$id'";
            $resultDelRolePermission = $conn->query($rolePerDelete);

    
   
             $status                 =   "Success";
             $message                =   "Su Deleted .";
       
    $feedback   =   [
        'status'    => $status,
        'message'   => $message,
    ];
    
    echo json_encode($feedback);
}
