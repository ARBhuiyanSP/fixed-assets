<?php
include "phpqrcode/qrlib.php";
/*******************************************************************************
 * The following code will
 * Store Receive entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_receive (Store single row)      
 * 2. inv_receivedetail (Store Multiple row)
 * 3. inv_materialbalance (Store Multiple row)
 * 4. inv_supplierbalance (Store single row)
 * *****************************************************************************
 */
if (isset($_POST['asset_submit']) && !empty($_POST['asset_submit'])) {
       
        // how to save PNG codes to server 
		//$inventory_sl_no 	= $_POST['inventory_sl_no'];
		$purchase_date 			= $_POST['purchase_date'];
		$owner 					= $_POST['owner'];
		$user 					= $_POST['requested_id'];
		
		$parent_id 					= $_POST['parent_id'];
			$sqlpr	= "select id,parent_category from parentcategories WHERE id=$parent_id";
			$resultpr = mysqli_query($conn, $sqlpr);
			$rowpr=mysqli_fetch_array($resultpr);
			$parent = $rowpr['parent_category'];
				$parentstr = substr($parent,  0, 3);
		
		
		$grade_id 					= $_POST['grade_id'];
			$gradestr = substr($grade_id,  0, 3);
		
		// generate inventory serial no
		$quality 				= $_POST['quality'];
		$qstr					= $quality[0];
			$purchase_date 		= $_POST['purchase_date'];
			$datestr = substr($purchase_date, -2);
				$category_id 	= $_POST['category_id'];
				$catstr = substr($category_id,  0, 2);
				
				
		$rowcount 	=	mysqli_query($conn, "SELECT * FROM assets WHERE parent_id=$parent_id");
		$totalrow	=	mysqli_num_rows($rowcount);
		$astno 		=	sprintf("%03d", $totalrow + 1); 
		
		$inventory_sl_no 		= 'INV-'.$parentstr.'-'.$gradestr.'-'.$astno;
		 
		$tempDir = "images/qr_images/"; 
		$todaysDate = date('Ymd');
		$model = "M".$_POST['model'];
		$id    = $_POST['id'];
		$codeContents = 'INV SL :'.$inventory_sl_no.'  Purchase Date :'.$purchase_date.'  Owner Division :'.$owner.'  User :'.$user; 
		 
		// we need to generate filename somehow,  
		// with md5 or with database ID used to obtains $codeContents... 
		$fileName = time().'qrimage.png'; 
		 
		$pngAbsoluteFilePath = $tempDir.$fileName; 
		$urlRelativeFilePath = EXAMPLE_TMP_URLRELPATH.$fileName; 
		 
		// generating 
		if (!file_exists($pngAbsoluteFilePath)) { 
			QRcode::png($codeContents, $pngAbsoluteFilePath); 
			 
		}
		$category_id 			= $_POST['category_id'];
		$brand 					= $_POST['brand'];
		$model 					= $_POST['model'];
		$quality 				= $_POST['quality'];
		$warrenty 				= $_POST['warrenty'];
		$owner 					= $_POST['owner'];
		$dept 					= $_POST['dept'];
		$floor 					= $_POST['floor'];
		$location 				= $_POST['location'];
		$user 					= $_POST['requested_id'];
		$user_name 				= $_POST['request_person'];
		$inventory_sl_no 		= $inventory_sl_no;
		$purchase_date 			= $_POST['purchase_date'];
		$ins_date 				= $_POST['purchase_date'];
		$year_manufacture 		= $_POST['year_manufacture'];
		$price 					= $_POST['price'];
		$bill_note_req_rlp_no 	= $_POST['bill_note_req_rlp_no'];
		$origin 				= $_POST['origin'];
		
		
		$parent_id 				= $_POST['parent_id'];
		$grade_id 				= $_POST['grade_id'];
		$asset_description 		= $_POST['asset_description'];
		
		if($_POST['requested_id']!=''){
			$assign_status 		= 'Assigned';
		}
			else
		{
			$assign_status 		= '';
		}
		
		
		
		if (is_uploaded_file($_FILES['file']['tmp_name'])) 
		{
			$temp_file=$_FILES['file']['tmp_name'];
			$asset_image=time().$_FILES['file']['name'];
			$q = move_uploaded_file($temp_file,"images/".$asset_image);
		}
		
		
		/* Insert data into assets table */	      
        $query = "INSERT INTO `assets` (`purchase_date`,`user`,`user_name`,`owner`,`dept`,`floor`,`location`,`category`,`price`,`brand`,`model`,`bill_note_req_rlp_no`,`inventory_sl_no`,`quality`,`warrenty`,`year_manufacture`,`origin`,`parent_id`,`grade_id`,`asset_description`,`assign_status`,`qr_image`,`asset_image`) VALUES ('$purchase_date','$user','$user_name','$owner','$dept','$floor','$location','$category_id','$price','$brand','$model','$bill_note_req_rlp_no','$inventory_sl_no','$quality','$warrenty','$year_manufacture','$origin','$parent_id','$grade_id','$asset_description','$assign_status','$pngAbsoluteFilePath','$asset_image')";
        $conn->query($query);
		
		/* get last iserted id*/
		$lastinsertedId =  mysqli_insert_id($conn);
		
		/**/
		if($_POST['requested_id']!=''){
			$product_id 	= $lastinsertedId;
			$employee_id 	= $_POST['requested_id'];
			$assign_date 	= $_POST['purchase_date'];
			$remarks 		= 'Assign to User';
			$status 		= 'Active';
			$create 		= date('Y-m-d');
			$queryAssign	=	"INSERT INTO `product_assign`(`product_id`, `employee_id`, `assign_date`, `remarks`, `status`, `created_at`) values('$product_id','$employee_id','$assign_date','$remarks','$status','$create')";
			$conn->query($queryAssign);
		}
		
    $_SESSION['success']    =   "New Asset has been successfully completed.";
    header("location: assets_list.php");
    exit();
	
		

}

/* Asset Assign Process Start */
if (isset($_POST['assign']) && !empty($_POST['employee_id'])) 
	{
       	$product_id 	= $_POST['product_id'];
		$employee_id 	= $_POST['employee_id'];
			/*get employee name by id*/
			$sqlEmp	= "select name FROM `inv_employee` WHERE `employeeid`='$employee_id'";
			$resultEmp = mysqli_query($conn, $sqlEmp);
			$rowEmp=mysqli_fetch_array($resultEmp);
			$employee_name = $rowEmp['name'];
			
		$assign_date 	= $_POST['assign_date'];
		$remarks 		= $_POST['remarks'];
		$status 		= 'Active';
		$create 		= date('Y-m-d');
		
		/* Inserta data into product_assign table */
		$query = "INSERT INTO `product_assign` (`product_id`,`employee_id`,`assign_date`,`remarks`,`status`,`created_at`) VALUES ('$product_id','$employee_id','$assign_date','$remarks','$status','$create')";
        $conn->query($query);
		
		/*  update assets table: */
		$queryUp = "UPDATE `assets` SET `user`='$employee_id',`user_name`='$employee_name', `assign_status`='Assigned' WHERE `id` = '$product_id'";
		$conn->query($queryUp);
		
		/* job done & Redirect*/
		$_SESSION['success']    =   "Asset S=uccessfully Assigned To User";
		header("location: assign.php?id=$product_id");
		exit();
	}
	
/* Asset Assign Process End */
/* Asset Transfer Process Start */
if (isset($_POST['transfer']) && !empty($_POST['employee_id'])) 
	{
       	$product_id 	= $_POST['product_id'];
		$employee_id 	= $_POST['employee_id'];
			/*get employee name by id*/
			$sqlEmp	= "select name FROM `inv_employee` WHERE `employeeid`='$employee_id'";
			$resultEmp = mysqli_query($conn, $sqlEmp);
			$rowEmp=mysqli_fetch_array($resultEmp);
			$employee_name = $rowEmp['name'];
			
		$transfer_date 	= $_POST['transfer_date'];
		$remarks 		= $_POST['remarks'];
		$status 		= 'Active';
		$create 		= date('Y-m-d');
		$id 			= $_POST['id'];
		
		/* Inserta data into product_assign table */
		$query = "INSERT INTO `product_assign` (`product_id`,`employee_id`,`assign_date`,`remarks`,`status`,`created_at`) VALUES ('$product_id','$employee_id','$transfer_date','$remarks','$status','$create')";
        $conn->query($query);
		
		/*  update assets table: */
		$queryUp = "UPDATE `assets` SET `user`='$employee_id',`user_name`='$employee_name', `assign_status`='Assigned' WHERE `id` = '$product_id'";
		$conn->query($queryUp);
		
		
		/*  update assign table: */
		$queryUpAs = "UPDATE `product_assign` SET `refund_date`='$transfer_date' WHERE `id`='$id'";
		$conn->query($queryUpAs);
		
		/* job done & Redirect*/
		$_SESSION['success']    =   "Asset Successfully Transfered To User";
		header("location: transfer.php?id=$product_id");
		exit();
	}
	
/* Asset Transfer Process End */

/* Asset Return Process Start */
if (isset($_POST['return']) && !empty($_POST['return_date'])) 
	{
       	$product_id 	= $_POST['product_id'];
		$employee_id 	= $_POST['employee_id'];
			/*get employee name by id*/
			$sqlEmp	= "select name FROM `inv_employee` WHERE `employeeid`='$employee_id'";
			$resultEmp = mysqli_query($conn, $sqlEmp);
			$rowEmp=mysqli_fetch_array($resultEmp);
			$employee_name = $rowEmp['name'];
			
		$return_date 	= $_POST['return_date'];
		$remarks 		= $_POST['remarks'];
		$status 		= 'Refund';
		$create 		= date('Y-m-d');
		$id 			= $_POST['id'];
		
		
		/*  update assets table: */
		$queryUp = "UPDATE `assets` SET `user`='',`user_name`='', `assign_status`='' WHERE `id` = '$product_id'";
		$conn->query($queryUp);
		
		
		/*  update assign table: */
		$queryUpAs = "UPDATE `product_assign` SET `refund_date`='$return_date' WHERE `id`='$id'";
		$conn->query($queryUpAs);
		
		/* job done & Redirect*/
		$_SESSION['success']    =   "Asset Successfully Return From User";
		header("location: asset_details.php?id=$product_id");
		exit();
	}
	
/* Asset Return Process End */

/* Asset Inspection Process Start */
if (isset($_POST['inspection']) && !empty($_POST['inspaction_date'])) 
	{
       	$product_id 	= $_POST['product_id'];
		$inspaction_date 	= $_POST['inspaction_date'];
		$remarks 		= $_POST['remarks'];
		$status 		= $_POST['status'];
		$create 		= date('Y-m-d');
		
		/* Inserta data into product_assign table */
		$query = "INSERT INTO `inspaction` (`assets_id`,`ins_date`,`status`,`remarks`) VALUES ('$product_id','$inspaction_date','$status','$remarks')";
        $conn->query($query);
		
		
		/*  update assets table: */
		$queryUp = "UPDATE `assets` SET `inspaction_date`='$inspaction_date',`status`='$status' WHERE `id` = '$product_id'";
		$conn->query($queryUp);
		
		
		/* job done & Redirect*/
		$_SESSION['success']    =   "Asset Successfully Return From User";
		header("location: inspection.php?id=$product_id");
		exit();
	}
	
/* Asset Inspection Process End */



if (isset($_POST['asset_update']) && !empty($_POST['asset_update'])) {
       
        $purchase_date 			= $_POST['purchase_date'];
		$owner 					= $_POST['owner'];
		$user 					= $_POST['requested_id'];
		
		$parent_id 					= $_POST['parent_id'];
			$sqlpr	= "select id,parent_category from parentcategories WHERE id=$parent_id";
			$resultpr = mysqli_query($conn, $sqlpr);
			$rowpr=mysqli_fetch_array($resultpr);
			$parent = $rowpr['parent_category'];
				$parentstr = substr($parent,  0, 3);
		
		
		$grade_id 					= $_POST['grade_id'];
			$gradestr = substr($grade_id,  0, 3);
		
		// generate inventory serial no
		$quality 				= $_POST['quality'];
		$qstr					= $quality[0];
			$purchase_date 		= $_POST['purchase_date'];
			$datestr = substr($purchase_date, -2);
				$category_id 	= $_POST['category_id'];
				$catstr = substr($category_id,  0, 2);
				
				
		$rowcount 	=	mysqli_query($conn, "SELECT * FROM assets WHERE parent_id=$parent_id");
		$totalrow	=	mysqli_num_rows($rowcount);
		$astno 		=	sprintf("%03d", $totalrow + 1); 
		//$inventory_sl_no 		= $_POST['inventory_sl_no'];
		$inventory_sl_no 		= 'INV-'.$parentstr.'-'.$gradestr.'-'.$astno;
		 
		$tempDir = "images/qr_images/"; 
		$todaysDate = date('Ymd');
		$model = "M".$_POST['model'];
		$id    = $_POST['id'];
		$codeContents = 'INV SL :'.$inventory_sl_no.'  Purchase Date :'.$purchase_date.'  Owner Division :'.$owner.'  User :'.$user; 
		 
		// we need to generate filename somehow,  
		// with md5 or with database ID used to obtains $codeContents... 
		$fileName = time().'qrimage.png'; 
		 
		$pngAbsoluteFilePath = $tempDir.$fileName; 
		$urlRelativeFilePath = EXAMPLE_TMP_URLRELPATH.$fileName; 
		 
		// generating 
		if (!file_exists($pngAbsoluteFilePath)) { 
			QRcode::png($codeContents, $pngAbsoluteFilePath); 
			 
		}
		// generating 
		//QRcode::png($codeContents, $pngAbsoluteFilePath); 
	
	
		$category_id 			= $_POST['category_id'];
		$brand 					= $_POST['brand'];
		$model 					= $_POST['model'];
		$quality 				= $_POST['quality'];
		$warrenty 				= $_POST['warrenty'];
		$owner 					= $_POST['owner'];
		$dept 					= $_POST['dept'];
		$floor 					= $_POST['floor'];
		$location 				= $_POST['location'];
		$user 					= $_POST['requested_id'];
		$user_name 				= $_POST['request_person'];
		$inventory_sl_no 		= $inventory_sl_no;
		$purchase_date 			= $_POST['purchase_date'];
		$ins_date 				= $_POST['purchase_date'];
		$year_manufacture 		= $_POST['year_manufacture'];
		$price 					= $_POST['price'];
		$bill_note_req_rlp_no 	= $_POST['bill_note_req_rlp_no'];
		$origin 				= $_POST['origin'];
		
		
		$parent_id 				= $_POST['parent_id'];
		$grade_id 				= $_POST['grade_id'];
		$asset_description 		= $_POST['asset_description'];
		
		if($_POST['requested_id']!=''){
			$assign_status 		= 'Assigned';
		}
			else
		{
			$assign_status 		= 'Not Assigned';
		}
		
		
		
		if (is_uploaded_file($_FILES['sn_prt_image']['tmp_name'])) 
			{
				$temp_file=$_FILES['sn_prt_image']['tmp_name'];
				$asset_image=time().$_FILES['sn_prt_image']['name'];
				$q = move_uploaded_file($temp_file,"images/".$asset_image);
			}
			else
			{
			 $asset_image = $_POST["sn_old_image"];
			}
		
		
		/* Insert data into assets table */	      
        $query = "UPDATE `assets` SET `purchase_date`='$purchase_date',`user`='$user',`user_name`='$user_name',`owner`='$owner',`dept`='$dept',`floor`='$floor',`category`='$category_id',`price`='$price',`brand`='$brand',`model`='$model',`bill_note_req_rlp_no`='$bill_note_req_rlp_no',`quality`='$quality',`parent_id`='$parent_id',`grade_id`='$grade_id',`asset_description`='$asset_description', `inspaction_date`='$ins_date',`warrenty`='$warrenty',`year_manufacture`='$year_manufacture',`origin`='$origin',`assign_status`='$assign_status',`qr_image`='$pngAbsoluteFilePath',`asset_image`='$asset_image' WHERE `id`=$id";
        $conn->query($query);
		
		/* get last iserted id*/
		if($_POST['requested_id']!=''){
			$product_id 	= $id;
			$employee_id 	= $_POST['requested_id'];
			$assign_date 	= $_POST['purchase_date'];
			$remarks 		= 'Assign to User';
			$status 		= 'Active';
			$create 		= date('Y-m-d');
			$sql	=	"insert into `product_assign` values('','$product_id','$employee_id','$assign_date','','$remarks','$status','$create','')";
			mysqli_query($conn, $sql);
		}
		
    $_SESSION['success']    =   "Asset has been successfully Updated.";
    header("location: assets-edit.php?edit=$id");
    exit();		

}
?>