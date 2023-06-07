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

function getReceiveDataDetailsById($id){
    global $conn;
    $receieves      =   "";
    $receiveDetails =   "";
    
    // get receive data
    $sql1           = "SELECT * FROM inv_receive where id=".$id;
    $result1        = $conn->query($sql1);

    if ($result1->num_rows > 0) {
        $receieves = $result1->fetch_object();
        // get receive details data
        $table                  =   'inv_receivedetail where mrr_no='."'$receieves->mrr_no'";
        $order                  =   'DESC';
        $column                 =   'receive_qty';
        $dataType               =   'obj';
        $receiveDetailsData     = getTableDataByTableName($table, $order, $column, $dataType);
        if(isset($receiveDetailsData) && !empty($receiveDetailsData)){
            $receiveDetails     =   $receiveDetailsData;
        }
    }
    $feedbackData   =   [
        'receiveData'           =>  $receieves,
        'receiveDetailsData'    =>  $receiveDetails
    ];
    
    return $feedbackData;
}

/*******************************************************************************
 * The following code will
 * Update Receive entry data.
 * There are 4 table to keet track on receive data. The are following:
 * 1. inv_receive (Update single row)      
 * 2. inv_receivedetail (First Delete all rows then Store Multiple row)
 * 3. inv_materialbalance (First Delete all rows then Store Multiple row)
 * 4. inv_supplierbalance (Update single row)
 * *****************************************************************************
 */

if(isset($_POST['receive_update_submit']) && !empty($_POST['receive_update_submit'])){
    $receive_total      =   0;
    $no_of_material     =   0;
    $edit_id            =   $_POST['edit_id'];
    $mrr_no             =   $_POST['mrr_no'];
    
	
	$queryedit	= "SELECT `approval_status` FROM `inv_receive` WHERE `mrr_no`='$mrr_no'";
    $result		=	$conn->query($queryedit);
	$row		=	mysqli_fetch_assoc($result);
	if($row['approval_status'] == 0){
		
		// first delete all from inv_receivedetail; 
		$delsql    = "DELETE FROM inv_receivedetail WHERE mrr_no='$mrr_no'";
		$conn->query($delsql);
		// first delete all from inv_materialbalance; 
		$delsq2    = "DELETE FROM inv_materialbalance WHERE mb_ref_id='$mrr_no'";
		$conn->query($delsq2);
		
		for ($count = 0; $count < count($_POST['quantity']); $count++) {
			$mrr_date           = $_POST['mrr_date'];        
			$purchase_id        = $_POST['purchase_id'];
			$Purchase_date      = $_POST['Purchase_date'];
			$challan_no         = $_POST['challan_no'];
			$challan_date       = $_POST['challan_date'];
			$requisition_no     = $_POST['requisition_no'];
			$requisition_date   = $_POST['requisition_date'];
			$supplier_name      = $_POST['supplier_name'];
			$supplier_id        = $_POST['supplier_id'];
			$project_id			= $_POST['project_id'];
			$warehouse_id		= $_POST['warehouse_id'];


			$material_name      = $_POST['material_name'][$count];
			$material_id        = $_POST['material_id'][$count];
			$unit               = $_POST['unit'][$count];
			$part_no            = $_POST['part_no'][$count];
			$quantity           = $_POST['quantity'][$count];
			$no_of_material     = $no_of_material+$quantity;
			$unit_price         = $_POST['unit_price'][$count];
			$totalamount        = $_POST['totalamount'][$count];
			$receive_total      = $receive_total+$totalamount;
			$project_id         = $_POST['project_id'];
			$vat_challan_no     = $_POST['vat_challan_no'];
			$remarks            = $_POST['remarks'];
			
			
			if (is_uploaded_file($_FILES['sn_prt_image']['tmp_name'])) 
			{
				$temp_file=$_FILES['sn_prt_image']['tmp_name'];
				$mrr_image=time().$_FILES['sn_prt_image']['name'];
				$q = move_uploaded_file($temp_file,"images/".$mrr_image);
			}
			else
			{
			 $mrr_image = $_POST["sn_old_image"];
			}
			

			$query = "INSERT INTO `inv_receivedetail` (`mrr_no`,`material_id`,`material_name`,`unit_id`,`receive_qty`,`unit_price`,`sl_no`,`total_receive`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$mrr_no','$material_id','$material_name','$unit','$quantity','$unit_price','1','$totalamount','$part_no','$project_id','$warehouse_id')";
			$conn->query($query);
			/*
			 *  Insert Data Into inv_materialbalance Table:
			*/
			$mb_ref_id      = $mrr_no;
			$mb_materialid  = $material_id;
			$mb_date        = $mrr_date;
			$mbin_qty       = $quantity;
			$mbin_val       = $totalamount;
			$mbout_qty      = 0;
			$mbout_val      = 0;
			$mbprice        = $unit_price;
			$mbtype         = 'Receive';
			$mbserial       = '1.1';
			$mbunit_id      = $project_id;
			$mbserial_id    = 0;
			$jvno           = $mrr_no;
			$part_no        = $part_no;        
			
			$query_inmb = "INSERT INTO `inv_materialbalance` (`mb_ref_id`,`mb_materialid`,`mb_date`,`mbin_qty`,`mbin_val`,`mbout_qty`,`mbout_val`,`mbprice`,`mbtype`,`mbserial`,`mbserial_id`,`mbunit_id`,`jvno`,`part_no`,`project_id`,`warehouse_id`) VALUES ('$mb_ref_id','$mb_materialid','$mb_date','$mbin_qty','$mbin_val','$mbout_qty','$mbout_val','$mbprice','$mbtype','$mbserial','$mbunit_id','$mbserial_id','$jvno','$part_no','$project_id','$warehouse_id')";
			$conn->query($query_inmb);
		}
		/*
			*  Update Data Into inv_receive Table:
		*/
		$query2    = "UPDATE `inv_receive` SET `mrr_no`='$mrr_no',`mrr_date`='$mrr_date',`purchase_id`='$purchase_id',`receive_acct_id`='16-001-001',`supplier_id`='$supplier_id',`postedtogl`='0',`vat_challan_no`='$vat_challan_no',`remarks`='$remarks',`receive_type`='Credit',`project_id`='$project_id',`warehouse_id`='$warehouse_id',`receive_unit_id`='1',`receive_total`='$receive_total',`no_of_material`='$no_of_material',`challanno`='$challan_no',`challan_date`='$challan_date',`requisitionno`='$requisition_no',`requisition_date`='$requisition_date' ,`mrr_image`='$mrr_image' WHERE `id`='$edit_id'";
		$result2 = $conn->query($query2);
		
		
		
		
		/*
			*  Update Data Into inv_supplierbalance Table:
		*/
		$query4    = "UPDATE `inv_supplierbalance` SET `sb_ref_id`='$mrr_no',`warehouse_id`='$warehouse_id',`sb_date`='$mrr_date',`sb_supplier_id`='$supplier_id',`sb_dr_amount`='0',`sb_cr_amount`='$receive_total',`sb_remark`='$remarks',`sb_partac_id`='$mrr_no' WHERE `sb_ref_id`='$mrr_no'";
		$result2 = $conn->query($query4);
		
		$_SESSION['success']    =   "Receive UPDATE process have been successfully updated.";
		header("location: receive_edit.php?edit_id=".$edit_id);
		exit();
	}else{
		$_SESSION['error']    =   "Sorry..! This MRR is not able to edit anymore.";
		header("location: receive_edit.php?edit_id=".$edit_id);
		exit();
	}
	
}


if (isset($_POST['approve_submit']) && !empty($_POST['approve_submit'])) {
 
        /*
         *  Update Data Into inv_receive Table:
        */ 
       
        $mrr_no					= $_POST['mrr_no']; 
        $approval_status		= $_POST['approval_status'];       
        $approved_by            = $_SESSION['logged']['user_id'];       
        $approved_at            = $_POST['approved_at'];        
        $approval_remarks		= $_POST['approval_remarks'];       
               
        $query = "UPDATE `inv_receive` SET `approval_status`='$approval_status',`approved_by`='$approved_by',`approved_at`='$approved_at',`approval_remarks`='$approval_remarks' WHERE `mrr_no`='$mrr_no'";
        $conn->query($query);
		
		
		/*
         *  Update Data Into inv_receivedetail Table:
        */      
        $query2 = "UPDATE `inv_receivedetail` SET `approval_status`='$approval_status' WHERE `mrr_no`='$mrr_no'";
        $conn->query($query2);
		
		/*
         *  Update Data Into inv_materialbalance Table:
        */      
        $query3 = "UPDATE `inv_materialbalance` SET `approval_status`='$approval_status' WHERE `mb_ref_id`='$mrr_no'";
        $conn->query($query3);
		
		/*
         *  Update Data Into inv_supplierbalance Table:
        */      
        $query3 = "UPDATE `inv_supplierbalance` SET `approval_status`='$approval_status' WHERE `sb_ref_id`='$mrr_no'";
        $conn->query($query3);
		
		

    $_SESSION['success']    =   "MRR Approve have been successfully completed.";
    header("location: receive-list.php");
    exit();
}

?>