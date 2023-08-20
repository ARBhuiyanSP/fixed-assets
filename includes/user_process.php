<?php

  if (isset($_POST['user_submit']) && !empty($_POST['user_submit'])) {
    if (empty($_POST["first_name"])) {
        $emailErr = "email is required";
      } else {
        $first_name = $_POST["first_name"]; 
      }

      if (empty($_POST["last_name"])) {
        $emailErr = "email is required";
      } else {
        $last_name = $_POST["last_name"]; 
      }


      if (empty($_POST["email"])) {
        $emailErr = "email is required";
      } else {
        $email = $_POST["email"]; 
      }

    if (empty($_POST["password"])) {
        $passwordErr = "password is required";
      } else {
        $password    = (isset($_POST['password']) && !empty($_POST['password']) ? md5($_POST['password']) : md5('123456')); 
      }

    $role_id = $_POST["role_id"];
    $warehouse_id = $_POST["warehouse_id"];

    //insert
    $queryUser = "INSERT INTO `users` (`first_name`,`last_name`,`warehouse_id`,`role_id`,`email`,`password`,`status`) VALUES ('$first_name','$last_name','$warehouse_id','$role_id','$email','$password','1')";
    $result = $conn->query($queryUser);
   

    $_SESSION['success']    =   "Process have been successfully done.";

		

}



  if (isset($_POST['user_update_submit']) && !empty($_POST['user_update_submit'])) {
    if (empty($_POST["first_name"])) {
        $emailErr = "email is required";
      } else {
        $first_name = $_POST["first_name"]; 
      }

      if (empty($_POST["last_name"])) {
        $emailErr = "email is required";
      } else {
        $last_name = $_POST["last_name"]; 
      }


      if (empty($_POST["email"])) {
        $emailErr = "email is required";
      } else {
        $email = $_POST["email"]; 
      }

    

    $role_id = $_POST["role_id"];
    $warehouse_id = $_POST["warehouse_id"];
    $id = $_POST["id"];

    //insert
    $queryUser = "UPDATE `users` SET `first_name`='$first_name',`last_name`='$last_name',`warehouse_id`='$warehouse_id',`role_id`='$role_id',`email`='$email' WHERE `id`='$id'";
    $result = $conn->query($queryUser);


    
   

    $_SESSION['success']    =   "Process have been successfully updated.";

    

}
