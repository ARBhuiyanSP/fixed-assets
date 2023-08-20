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
       
        $purchase_date 			= $_POST['purchase_date'];
		$owner 					= $_POST['owner'];
		$user 					= $_POST['user'];
		// generate inventory serial no
		$quality 				= $_POST['quality'];
		$qstr					= $quality[0];
			$purchase_date 		= $_POST['purchase_date'];
			$datestr = substr($purchase_date, -2);
				$category_id 	= $_POST['category_id'];
				$catstr = substr($category_id,  0, 2);
				
				
		$rowcount 	=	mysqli_query($conn, "SELECT * FROM assets WHERE category=$category_id");
		$totalrow	=	mysqli_num_rows($rowcount);
		$astno 		=	sprintf("%03d", $totalrow + 1); 
		
		$inventory_sl_no 		= $qstr.'-'.$datestr.'-'.$catstr.'-'.$astno;
		 
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
		$user 					= $_POST['user'];
		$inventory_sl_no 		= $inventory_sl_no;
		$purchase_date 			= $_POST['purchase_date'];
		$ins_date 				= $_POST['purchase_date'];
		$year_manufacture 		= $_POST['year_manufacture'];
		$price 					= $_POST['price'];
		$bill_note_req_rlp_no 	= $_POST['bill_note_req_rlp_no'];
		$origin 				= $_POST['origin'];


		
        //$received_by            = $_SESSION['logged']['user_id'];    
		
		/* if (is_uploaded_file($_FILES['file']['tmp_name'])) 
		{
			$temp_file=$_FILES['file']['tmp_name'];
			$mrr_image=time().$_FILES['file']['name'];
			$q = move_uploaded_file($temp_file,"images/".$mrr_image);
		} */
			      
        $query = "INSERT INTO `assets` (`purchase_date`,`user`,`owner`,`dept`,`floor`,`location`,`category`,`price`,`brand`,`model`,`bill_note_req_rlp_no`,`inventory_sl_no`,`quality`,`warrenty`,`year_manufacture`,`origin`,`assign_status`,`qr_image`) VALUES ('$purchase_date','$user','$owner','$dept','$floor','$location','$category_id','$price','$brand','$model','$bill_note_req_rlp_no','$inventory_sl_no','$quality','$warrenty','$year_manufacture','$origin','Assigned','$pngAbsoluteFilePath')";
        $conn->query($query);
		
		//$lastinsertedId =  mysqli_insert_id($conn);
		
		/* print_r($lastinsertedId);
		exit;  */
        
		
		/*
		*  update inv_material current_balance:
		*/
		/* $queryBal = "UPDATE `inv_material` SET `current_balance`=current_balance + $mbin_qty WHERE `material_id_code` = '$mb_materialid'";
		$conn->query($queryBal); */
    
    $_SESSION['success']    =   "New Asset has been successfully completed.";
    header("location: assets_list.php");
    exit();
	
		

}




?>