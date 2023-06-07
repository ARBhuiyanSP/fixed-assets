<?php
//fetch.php
include('../connection/connect.php');
$column = array("id", "user", "owner", "category", "inventory_sl_no", "assign_status");
$query = "SELECT id, user, owner, category, inventory_sl_no, assign_status FROM assets";
$query .= " WHERE ";
if(isset($_POST["is_owner"]))
{
	$query .= "owner = '".$_POST["is_owner"]."' AND ";
}

if(isset($_POST["search"]["value"]))
	{
		$query .= '(id LIKE "%'.$_POST["search"]["value"].'%" ';
		$query .= 'OR user LIKE "%'.$_POST["search"]["value"].'%" ';
		$query .= 'OR owner LIKE "%'.$_POST["search"]["value"].'%" ';
		$query .= 'OR category LIKE "%'.$_POST["search"]["value"].'%" ';
		$query .= 'OR inventory_sl_no LIKE "%'.$_POST["search"]["value"].'%" ';
		$query .= 'OR assign_status LIKE "%'.$_POST["search"]["value"].'%") ';
	}

if(isset($_POST["order"]))
	{
		$query .= 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
	}
else
	{
		$query .= 'ORDER BY id ASC ';
	}

$query1 = '';

if($_POST["length"] != 1)
{
 $query1 .= 'LIMIT ' . $_POST['start'] . ', ' . $_POST['length'];
}

$number_filter_row = mysqli_num_rows(mysqli_query($conn, $query));

$result = mysqli_query($conn, $query . $query1);

$data = array();

while($row = mysqli_fetch_array($result))
{
	$actionData     =   get_receive_list_action_data($row);
 $sub_array = array();
 $sub_array[] = $row["id"];
 $sub_array[] = $row["user"];
 $sub_array[] = $row["owner"];
 $sub_array[] = $row["category"];
 $sub_array[] = $row["inventory_sl_no"];
 $sub_array[] = $row["assign_status"];
 $sub_array[] = $actionData;
 $data[] = $sub_array;
 
}

function get_receive_list_action_data($row){
	
    $qr_url	= 'qrprintview.php?id='.$row["id"];
    $edit_url	= 'assets-edit.php?edit='.$row["id"];
    $view_url 	= 'asset_details.php?id='.$row["id"];
    $assign_url = 'assign.php?id='.$row["id"];
    $action 	= "";
	
    $action.='<span><a class="action-icons c-delete" href="'.$edit_url.'" title="edit"><i class="fa fa-edit text-info mborder" style="padding:2px;margin:1px;border:1px solid gray;"></i></a></span>';
							
	$action.='<span><a class="action-icons c-approve" href="'.$view_url.'" title="View"><i class="fas fa-eye text-success mborder" style="padding:2px;margin:1px;border:1px solid gray;"></i></a></span>';
	 
	$action.='<span><a class="action-icons c-approve" href="'.$assign_url.'" title="Assign"><i class="fas fa-user text-warning mborder" style="padding:2px;margin:1px;border:1px solid gray;"></i></a></span>';
	
	$action.='<span><a class="action-icons c-approve" href="'.$qr_url.'" title="QR"><i class="fas fa-print text-success mborder" style="padding:2px;margin:1px;border:1px solid gray;"></i></a></span>';
	
    return $action;

}

function get_all_data($conn)
{
 $query = "SELECT * FROM assets";
 $result = mysqli_query($conn, $query);
 return mysqli_num_rows($result);
}

$output = array(
 "draw"    => intval($_POST["draw"]),
 "recordsTotal"  =>  get_all_data($conn),
 "recordsFiltered" => $number_filter_row,
 "data"    => $data
);

echo json_encode($output);

?>