<?php
//fetch.php
include('../connection/connect.php');
$column = array("inv_issue.id", "inv_issue.issue_id", "inv_issue.issue_date", "tb_party.partyname", "inv_issue.netsale_amount");
	$query = "SELECT * FROM inv_issue INNER JOIN tb_party ON tb_party.party_id = inv_issue.party_id";
	$query .= " WHERE ";
	if(isset($_POST["is_partyname"]))
	{
		$query .= "inv_issue.party_id = '".$_POST["is_partyname"]."' AND ";
	}
	if(isset($_POST["search"]["value"]))
	{
		 $query .= '(inv_issue.id LIKE "%'.$_POST["search"]["value"].'%" ';
		 $query .= 'OR inv_issue.issue_id LIKE "%'.$_POST["search"]["value"].'%" ';
		 $query .= 'OR inv_issue.issue_date LIKE "%'.$_POST["search"]["value"].'%" ';
		 $query .= 'OR tb_party.partyname LIKE "%'.$_POST["search"]["value"].'%" ';
		 $query .= 'OR inv_issue.netsale_amount LIKE "%'.$_POST["search"]["value"].'%") ';
	}

	if(isset($_POST["order"]))
	{
		$query .= 'ORDER BY '.$column[$_POST['order']['0']['column']].' '.$_POST['order']['0']['dir'].' ';
	}
	else
	{
		$query .= 'ORDER BY inv_issue.issue_id DESC ';
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
		$actionData     =   get_sale_list_action_data($row);
		$sub_array = array();
		$sub_array[] = $row["inv_issue.issue_id"];
		$sub_array[] = $row["inv_issue.issue_date"];
		$sub_array[] = $row["tb_party.partyname"];
		$sub_array[] = $row["inv_issue.netsale_amount"];
		$sub_array[] = $actionData;
		$data[] = $sub_array;
	}

function get_sale_list_action_data($row){
    $edit_url = 'issue_edit.php?edit_id='.$row["issue_id"];
    $view_url = 'issue-view.php?no='.$row["issue_id"];
    $gate_pass_url = 'gate-pass.php?no='.$row["issue_id"];
    $action = "";
	
  
							
		$action.='<span><a class="action-icons c-approve" href="'.$view_url.'" title="View"><i class="fas fa-eye text-success mborder"></i></a></span>';						
				
		$action.='<span><a class="action-icons c-approve" href="'.$gate_pass_url.'" title="View"><i class="fas fa-server text-danger mborder"></i></a></span>';

		$action.='<span><a class="action-icons c-delete" href="'.$edit_url.'" title="edit"><i class="fa fa-edit text-info mborder"></i></a></span>';					
							
	
											
    //$action.='<a href="#"><i class="fa fa-trash text-danger"></i></a>';
	
	/* if($row["status"]=="Pending"){
		$action.='<span><a title="Take Action" class="btn btn-sm btn-danger" href="'.$edit_url.'">
                                <span class="fa fa-exchange"> <b>Take Action</b></span>
                            </a></span>';
	}else{
    $action.='<span><a title="View Details" class="btn btn-sm btn-success" href="'.$edit_url.'">
                                <span class="fa fa-exchange"> <b>View Details</b></span>
                            </a></span>';
	}
	
	<span><a class="action-icons c-approve" href="receive-view.php?no=<?php echo $item['issue_id']; ?>" title="View"><i class="fas fa-eye text-success mborder"></i></a></span>
										<span><a class="action-icons c-delete" href="receive_edit.php?edit_id=<?php echo $item['id']; ?>" title="edit"><i class="fa fa-edit text-info mborder"></i></a></span>
										<?php if($_SESSION['logged']['user_type'] == 'superAdmin') {?>
										<span><a class="action-icons c-delete" href="receive_approve.php?mrr=<?php echo $item['issue_id']; ?>" title="approve"><i class="fa fa-check text-info mborder"></i></a></span>
										<?php } ?>
										<span><a class="action-icons c-delete" href="#" title="delete"><i class="fa fa-trash text-danger mborder"></i></a></span> */
	
	
    //$action.='<a href="#"><i class="fa fa-trash text-danger"></i></a>';

    return $action;

}

function get_all_data($conn)
{
 $query = "SELECT * FROM inv_issue";
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