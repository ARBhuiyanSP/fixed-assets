<?php
function getTableDataByTableName($table, $order = 'DESC', $column='id', $dataType = '') {
    global $conn;
    $dataContainer  =   [];
    $sql = "SELECT * FROM $table order by $column $order";
    $result = $conn->query($sql);

    //Part Number Detail table data fetch
    $sql_partno = "SELECT * FROM inv_material_partno_detail WHERE status=0 AND part_no !='' ";
    $partno_result = $conn->query($sql_partno);
    
    $material_key_array=[];
     while ($part_row = $partno_result->fetch_assoc()) {
        $material_key_array[$part_row["inv_material_id"]][]=$part_row["part_no"];
     }



    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $inv_material_id = $row["id"];
                $row["old_part_no"] = oldPartNumberString($material_key_array,$inv_material_id);
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $inv_material_id = $row["id"];
                
                $row["old_part_no"] = oldPartNumberString($material_key_array,$inv_material_id);
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function oldPartNumberString($material_key_array,$inv_material_id){
        $part_no_string='';
        foreach ($material_key_array as $key => $value) {
            if($key==$inv_material_id){
               $part_no_string= implode(",", $value);
            }
        }
        return $part_no_string;
}
function getwarehouseinfo($table, $order = 'asc', $column = 'id', $dataType = '')
{
    global $conn;
    $dataContainer  =   [];
    $sql = "SELECT * FROM $table WHERE `short_name` !='CW' order by $column $order";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}
function getTableDataByTableNameWid($table, $order = 'asc', $column = 'id', $dataType = '', $date_filter = [])
{

    //issue_date
    global $conn;
    $warehouse_id    =    (isset($_SESSION['logged']['warehouse_id']) && !empty($_SESSION['logged']['warehouse_id']) ? $_SESSION['logged']['warehouse_id'] : false);
    $dataContainer  =   [];


    if ($warehouse_id) {

        $sql  = "SELECT * FROM $table WHERE warehouse_id=$warehouse_id AND ";
    } else {

        $sql  = "SELECT * FROM $table WHERE ";
    }


    if (isset($date_filter) && !empty($date_filter)) {

        $sql .= "issue_date >= '$date_filter->start_date' AND issue_date <= '$date_filter->end_date' ";
    }
    $sql .= "order by $column $order";

    // echo $sql; exit;

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function getTableDataByTableNameTid($table, $order = 'asc', $column = 'id', $dataType = '')
{
    global $conn;
    $warehouse_id    =    $_SESSION['logged']['warehouse_id'];
    $dataContainer  =   [];
    $sql = "SELECT * FROM $table WHERE from_warehouse=$warehouse_id OR to_warehouse=$warehouse_id order by $column $order";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function saveData($table, $dataParam)
{
    global $conn;
    $fields_array   =   array_keys($dataParam);
    $fields         =   implode(',', array_keys($dataParam));
    $values         =   "'" . implode("', '", array_values($dataParam)) . "'";
    $sql            = "INSERT INTO $table ($fields) VALUES ($values)";

    if ($conn->query($sql) === TRUE) {
        $feedbackData   =   [
            'status'    =>  'success',
            'data'      =>  'Data have been successfully inserted',
            'last_id'   =>  $conn->insert_id,
        ];
        return $feedbackData;
    } else {
        $feedbackData   =   [
            'status'    =>  'error',
            'data'      =>  "Error: " . $sql . "<br>" . $conn->error,
            'last_id'   =>  '',
        ];
        return $feedbackData;
    }
}

function getMaterialNameByIdAndTable($table)
{
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        $name   =   $result->fetch_object()->material_description;
    }
    return $name;
}

function getNameByIdAndTable($table)
{
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        $name   =   $result->fetch_object()->name;
    }
    return $name;
}

function getItemCodeByParam($table, $field)
{
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        $name   =   $result->fetch_object()->{$field};
    }
    return $name;
}

function getDataRowIdAndTable($table)
{
    global $conn;
    $sql = "SELECT * FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        return $result->fetch_object();
    }
}

function getDataRowByTableAndId($table, $id)
{
    global $conn;
    $sql    = "SELECT * FROM $table where id=" . $id;
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        return $result->fetch_object();
    } else {
        return false;
    }
}

function getDetailByPriceId($table, $id)
{
    global $conn;
    $sql    = "SELECT * FROM $table where id=$id"  ;
    $result = $conn->query($sql);
    $name   =   '';
    if ($result->num_rows > 0) {
        return $result->fetch_object();
    } else {
        return false;
    }
}


function getDefaultCategoryCode($table, $fieldName, $modifier, $defaultCode, $prefix)
{
    global $conn;
    $sql    = "SELECT count($fieldName) as total_row FROM $table";
    $result = $conn->query($sql);
    $name   =   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix . sprintf('%' . $modifier, $number);
    return $defaultCode;
}

function getDefaultCategoryCodeByWarehouse($table, $fieldName, $modifier, $defaultCode, $prefix)
{
    global $conn;
    $warehouse_id    =    $_SESSION['logged']['warehouse_id'];
    $sql        = "SELECT count($fieldName) as total_row FROM $table WHERE warehouse_id=$warehouse_id";
    $result     = $conn->query($sql);
    $name       =   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix . sprintf('%' . $modifier, $number);
    return $defaultCode;
}

function getDefaultCategoryCodeByWarehouseT($table, $fieldName, $modifier, $defaultCode, $prefix)
{
    global $conn;
    $warehouse_id    =    $_SESSION['logged']['warehouse_id'];
    $sql        = "SELECT count($fieldName) as total_row FROM $table WHERE from_warehouse=$warehouse_id";
    $result     = $conn->query($sql);
    $name       =   '';
    $lastRows   = $result->fetch_object();
    $number     = intval($lastRows->total_row) + 1;
    $defaultCode = $prefix . sprintf('%' . $modifier, $number);
    return $defaultCode;
}

function get_product_with_category($graterThanZero=0)
{
    $final_array = [];
    global $conn;
    $sql = "SELECT * FROM inv_materialcategorysub order by category_description asc";
    $presult = $conn->query($sql);
    if ($presult->num_rows > 0) {
        // output data of each row
        while ($cat = $presult->fetch_object()) {
            $parent_id      = $cat->id;
            $parent_name    = $cat->category_description;
            $ssql           = "SELECT * FROM inv_materialcategory where category_id=$parent_id order by material_sub_description asc";
            $sresult        = $conn->query($ssql);
            if ($sresult->num_rows > 0) {
                while ($scat = $sresult->fetch_object()) {
                    $sub_item_id    = $scat->id;
                    $sub_item_name  = $scat->material_sub_description;
                    $msql           = " SELECT * FROM inv_material where 1=1 AND material_id=$parent_id and material_sub_id=$sub_item_id ";
					
					if($graterThanZero > 0){
						$msql           .=" AND current_balance > 0 ";
					}

					$msql           .=" order by material_description asc ";
					
                    $mresult = $conn->query($msql);
					
                    if ($mresult->num_rows > 0) {
                        while ($material    = $mresult->fetch_object()) {
                            $final_array[]  = [
                                'id'                    => $material->id,
                                'parent_item_id'        => $material->material_id,
                                'sub_item_id'           => $material->material_sub_id,
                                'item_code'             => $material->material_id_code,
                                'part_no'                 => $material->part_no,
                                'spec'                     => $material->spec,
                                'material_name'         => $material->material_description . ' (' . $parent_name . ' - ' . $sub_item_name . ')',
                            ];
                        }
                    }
                }
            }
        }
    }
    return $final_array;
}

function isDuplicateData($table, $where, $notWhere = '')
{
    global $conn;
    $sql = '';
    $sql .= "SELECT * FROM $table where $where ";
    if (isset($notWhere) && !empty($notWhere)) {
        $sql .= " And $notWhere";
    }
    /* echo $sql;
	exit; */
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        return true;
    }
    return false;
}

function stockReportCheck()
{
    $dataContainer = [];
    global $conn;
    $sql = "SELECT mb_materialid, (SUM(mbin_qty)-SUM(mbout_qty)) as BalanceQty, (SUM(mbin_val)-SUM(mbout_val)) as BalanceVal  FROM `inv_materialbalance` GROUP BY mb_materialid";

    /* $sql = "SELECT mb_materialid, (SUM(mbin_qty)-SUM(mbout_qty)) as BalanceQty, (SUM(mbin_val)-SUM(mbout_val)) as BalanceVal  FROM `inv_materialbalance` WHERE `approval_status`='1' GROUP BY mb_materialid"; */

    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_object()) {
            $dataContainer[] = $row;
        }
    }
    return $dataContainer;
}
function getTotalstockInOutQuantityCheck($mid, $type)
{
    $TOTAL = 0;
    global $conn;
    if ($type    ==  'in') {
        $sql = "SELECT SUM(mbin_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid'";
        /* $sql = "SELECT SUM(mbin_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid' AND `approval_status`='1'"; */
    }
    if ($type    ==  'out') {
        $sql = "SELECT SUM(mbout_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid'";
        /*  $sql = "SELECT SUM(mbout_qty) as Total  FROM `inv_materialbalance` WHERE mb_materialid='$mid' AND `approval_status`='1'"; */
    }
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $TOTAL = $result->fetch_object()->Total;
    }
    return $TOTAL;
}
function get_unit_price_by_material_id($param)
{
    //default value:
    //$unitPrice =   0;
    // opening quantity:
    $lastPrice     =   get_material_last_price($param);
    $lastPricea        =   (isset($lastPrice->price) && !empty($lastPrice->price) ? $lastPrice->price : 0);

    

    $unitPrice     =   $lastPricea;
    return $unitPrice;
}


function get_lot_price_by_material_id($code)
{
    global $conn;
	$sql = "SELECT `id`, `mrr_no`, `material_id`, `receive_details_id`, `qty`, `price`, `status`
	FROM `inv_product_price` WHERE material_id = '$code' ";
    $result = $conn->query($sql);
	$dataContainer ="<option value=''>-Select-</option>";
	 if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
                $dataContainer .="<option value='".$row["id"]."'>".$row["material_id"]."|".$row["qty"]."|".$row["price"]."</option>";
            }
    }
    return $dataContainer;
}
function get_material_last_price($param)
{
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT material_name,"
        //. " sum(mbin_qty) as openingMbInTotal,"
        //. " sum(mbout_qty) as openingMbOutTotal,"
        //. " mbin_qty, mbin_val,"
        //. " mbout_qty,"
        //. " mbout_val,"
        //. " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
        . " unit_price as price FROM inv_receivedetail WHERE material_id = '$mb_materialid'"
        . " AND warehouse_id='$warehouse_id'"
        /* . " AND `approval_status`='1'" */
        . " ORDER BY id DESC";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
    return $rowData;
}
function get_product_stock_by_material_id($param)
{
    //default value:
    $totalStock =   0;
    // opening quantity:
    $opeingQuantityData     =   get_material_balance_opening_quantity($param);
    $openingQuantity        =   (isset($opeingQuantityData->openingMbInTotal) && !empty($opeingQuantityData->openingMbInTotal) ? $opeingQuantityData->openingMbInTotal : 0);

    // recieving quantity:
    $receivingQuantityData  =   get_material_balance_receiving_quantity($param);
    $receivingQuantity      =   (isset($receivingQuantityData->receivingMbInTotal) && !empty($receivingQuantityData->receivingMbInTotal) ? $receivingQuantityData->receivingMbInTotal : 0);

    // issue quantity:
    $issueQuantityData      =   get_material_balance_issue_quantity($param);
    $issueQuantity          =   (isset($issueQuantityData->issueMbOutTotal) && !empty($issueQuantityData->issueMbOutTotal) ? $issueQuantityData->issueMbOutTotal : 0);

    // return quantity:
    $returnQuantityData      =   get_material_balance_return_quantity($param);
    $returnQuantity          =   (isset($returnQuantityData->returnMbInTotal) && !empty($returnQuantityData->returnMbInTotal) ? $returnQuantityData->returnMbInTotal : 0);

    // transfer_out quantity:
    $transfer_outQuantityData      =   get_material_balance_transfer_out_quantity($param);
    $transfer_outQuantity          =   (isset($transfer_outQuantityData->transferOutMbOutTotal) && !empty($transfer_outQuantityData->transferOutMbOutTotal) ? $transfer_outQuantityData->transferOutMbOutTotal : 0);

    // transfer_out quantity:
    $transfer_inQuantityData      =   get_material_balance_transfer_in_quantity($param);
    $transfer_inQuantity          =   (isset($transfer_inQuantityData->transferInMbInTotal) && !empty($transfer_inQuantityData->transferInMbInTotal) ? $transfer_inQuantityData->transferInMbInTotal : 0);

    $totalIn    =   ($openingQuantity + $receivingQuantity + $returnQuantity + $transfer_inQuantity);
    $totalOut   =   ($issueQuantity + $transfer_outQuantity);

    $totalStock     =   $totalIn - $totalOut;
    return $totalStock;
}
/*
 * Method for get opeing total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_opening_quantity($param)
{
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
        . " sum(mbin_qty) as openingMbInTotal,"
        . " sum(mbout_qty) as openingMbOutTotal,"
        . " mbin_qty, mbin_val,"
        . " mbout_qty,"
        . " mbout_val,"
        . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
        . " AND warehouse_id='$warehouse_id'"
        /* . " AND `approval_status`='1'" */
        . " AND mbtype='OP'";
    $result = $conn->query($sql);
    if($result){
        if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }else{
        return $rowData;
      }

    }
    
    return $rowData;
}

/*
 * Method for get receiving total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_receiving_quantity($param)
{
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
        . " sum(mbin_qty) as receivingMbInTotal,"
        . " sum(mbout_qty) as receivingMbOutTotal,"
        . " mbin_qty, mbin_val,"
        . " mbout_qty,"
        . " mbout_val,"
        . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
        . " AND warehouse_id='$warehouse_id'"
        /* . " AND `approval_status`='1'" */
        . " AND mbtype='Receive'";
    $result = $conn->query($sql);
    if($result){
        if ($result->num_rows > 0) {
            $rowData = $result->fetch_object();
        }
    }
    return $rowData;
}
/*
 * Method for get return total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_return_quantity($param)
{
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
        . " sum(mbin_qty) as returnMbInTotal,"
        . " sum(mbout_qty) as returnMbOutTotal,"
        . " mbin_qty, mbin_val,"
        . " mbout_qty,"
        . " mbout_val,"
        . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
        . " AND warehouse_id='$warehouse_id'"
        /* . " AND `approval_status`='1'" */
        . " AND mbtype='Return'";
    $result = $conn->query($sql);
    if($result){
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
}
    return $rowData;
}

/*
 * Method for get Issue total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_issue_quantity($param)
{
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
        . " sum(mbin_qty) as issueMbInTotal,"
        . " sum(mbout_qty) as issueMbOutTotal,"
        . " mbin_qty, mbin_val,"
        . " mbout_qty,"
        . " mbout_val,"
        . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
        . " AND warehouse_id='$warehouse_id'"
        /* . " AND `approval_status`='1'" */
        . " AND mbtype='Issue'";
    $result = $conn->query($sql);
    if($result){
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
}
    return $rowData;
}

/*
 * Method for get Transfer Out total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_transfer_out_quantity($param)
{
    global $conn;
    $rowData        =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
        . " sum(mbin_qty) as transferOutMbInTotal,"
        . " sum(mbout_qty) as transferOutMbOutTotal,"
        . " mbin_qty, mbin_val,"
        . " mbout_qty,"
        . " mbout_val,"
        . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
        . " AND warehouse_id='$warehouse_id'"
        /* . " AND `approval_status`='1'" */
        . " AND mbtype='Transfer Out'";
    $result = $conn->query($sql);
    if($result){
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }

}
    return $rowData;
}

/*
 * Method for get Transfer In total data
 * $param
 * 1. mb_materialid
 * 2. warehouse_id
 */
function get_material_balance_transfer_in_quantity($param)
{
    global $conn;
    $rowData    =   '';
    $mb_materialid  =   $param['mb_materialid'];
    $warehouse_id   =   $param['warehouse_id'];
    $sql            =   "SELECT mb_materialid,"
        . " sum(mbin_qty) as transferInMbInTotal,"
        . " sum(mbout_qty) as transferInMbOutTotal,"
        . " mbin_qty, mbin_val,"
        . " mbout_qty,"
        . " mbout_val,"
        . " mbprice FROM inv_materialbalance WHERE mb_materialid = '$mb_materialid'"
        . " AND warehouse_id='$warehouse_id'"
        /* . " AND `approval_status`='1'" */
        . " AND mbtype='Transfer In'";
    $result = $conn->query($sql);
    if($result){
    if ($result->num_rows > 0) {
        $rowData = $result->fetch_object();
    }
}
    return $rowData;
}

function convertNumberToWords(float $number)
{
    $decimal = round($number - ($no = floor($number)), 2) * 100;
    $decimal_part = $decimal;
    $hundred = null;
    $hundreds = null;
    $digits_length = strlen($no);
    $decimal_length = strlen($decimal);
    $i = 0;
    $str = array();
    $str2 = array();
    $words = array(0 => '', 1 => 'One', 2 => 'Two',
        3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six',
        7 => 'Seven', 8 => 'Eight', 9 => 'Nine',
        10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve',
        13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen',
        16 => 'Sixteen', 17 => 'Seventeen', 18 => 'Eighteen',
        19 => 'Nineteen', 20 => 'Twenty', 30 => 'Thirty',
        40 => 'Forty', 50 => 'Fifty', 60 => 'Sixty',
        70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety');
    $digits = array('', 'Hundred','Thousand','Lakh', 'Crore');

    while( $i < $digits_length ) {
        $divider = ($i == 2) ? 10 : 100;
        $number = floor($no % $divider);
        $no = floor($no / $divider);
        $i += $divider == 10 ? 1 : 2;
        if ($number) {
            $plural = (($counter = count($str)) && $number > 9) ? '' : null;
            $hundred = ($counter == 1 && $str[0]) ? ' and ' : null;
            $str [] = ($number < 21) ? $words[$number].' '. $digits[$counter]. $plural.' '.$hundred:$words[floor($number / 10) * 10].' '.$words[$number % 10]. ' '.$digits[$counter].$plural.' '.$hundred;
        } else $str[] = null;
    }

    $d = 0;
    while( $d < $decimal_length ) {
        $divider = ($d == 2) ? 10 : 100;
        $decimal_number = floor($decimal % $divider);
        $decimal = floor($decimal / $divider);
        $d += $divider == 10 ? 1 : 2;
        if ($decimal_number) {
            $plurals = (($counter = count($str2)) && $decimal_number > 9) ? '' : null;
            $hundreds = ($counter == 1 && $str2[0]) ? ' and ' : null;
            @$str2 [] = ($decimal_number < 21) ? $words[$decimal_number].' '. $digits[$decimal_number]. $plural.' '.$hundred:$words[floor($decimal_number / 10) * 10].' '.$words[$decimal_number % 10]. ' '.$digits[$counter].$plural.' '.$hundred;
        } else $str2[] = null;
    }

    $Taka = implode('', array_reverse($str));
    $Paysa = implode('', array_reverse($str2));
    $Paysa = ($decimal_part > 0) ? $Paysa . ' Paysa' : '';
    return ($Taka ? $Taka . 'Taka ' : '') . $Paysa;
}

function getmaterialbrand()
{
    global $conn;
    $sql = "SELECT brand_name FROM inv_material group by brand_name order by brand_name";
    $result = $conn->query($sql);
    $dataContainer   =   [];
    if ($result->num_rows > 0) {
        // output data of each row
        if (isset($dataType) && $dataType == 'obj') {
            while ($row = $result->fetch_object()) {
                $dataContainer[] = $row;
            }
        } else {
            while ($row = $result->fetch_assoc()) {
                $dataContainer[] = $row;
            }
        }
    }
    return $dataContainer;
}

function updateData($table, $dataParam, $where)
{
    global $conn;
    $valueSets = array();
    foreach ($dataParam as $key => $value) {
        if (isset($value) && !empty($value)) {
            $valueSets[] = $key . " = '" . $value . "'";
        }
    }

    $conditionSets = array();
    foreach ($where as $key => $value) {
        $conditionSets[] = $key . " = '" . $value . "'";
    }
    $sql = "UPDATE $table SET " . join(",", $valueSets) . " WHERE " . join(" AND ", $conditionSets);
    if ($conn->query($sql) === TRUE) {
        $feedbackData   =   [
            'status'    =>  'success',
            'message'   =>  'Data have been successfully Updated',
        ];
    } else {
        $feedbackData   =   [
            'status'    =>  'error',
            'message'   =>  "Error: " . $sql . "<br>" . $conn->error,
        ];
    }
    return $feedbackData;
}

function get_issue_details_data($date_filter)
{

    return getTableDataByTableNameWid('inv_issue', '', 'id', '', $date_filter);
}

function show_issue_details_data($item_details)
{ 
    global $conn;
    ?>

    <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Issue Date</th>
                <th>Issue No</th>
                <th width="30%">Material Name</th>
                <th>Use in</th>
                <th>Project</th>
                <th>Ware House</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($item_details as $item) {
                if ($item['approval_status'] == 0) {
            ?>
                    <tr style="background-color: #FFC107;max-height:10px;">
                    <?php  } else { ?>
                    <tr style="background-color: #218838;max-height:10px;">
                    <?php  } ?>
                    <td style="width: 100px;"><?php echo date("j M y", strtotime($item['issue_date'])); ?></td>
                    <td style="width: 100px;"><?php echo $item['issue_id']; ?></td>


                    <td><?php
                        $issue_id = $item['issue_id'];
                        $sql = "select * from `inv_issuedetail` where `issue_id`='$issue_id'";
                        $result = mysqli_query($conn, $sql);
                        for ($i = 1; $row = mysqli_fetch_array($result); $i++) {
                            $dataresult =   getDataRowByTableAndId('inv_material', $row['material_name']);
                            echo (isset($dataresult) && !empty($dataresult) ? $dataresult->material_description : '') . ',';
                        }

                        ?></td>
                    <?php
                    $sql = "select * from `inv_issuedetail` where `issue_id`='$issue_id'";


                    $user_categories = mysqli_query($conn, "select `use_in` from `inv_issuedetail` where `issue_id`='$issue_id'");
                    $category_ids = mysqli_fetch_all($user_categories, MYSQLI_NUM);
                    $category_ids_imploded = implode(', ', array_map(function ($entry) {
                        return $entry['0'];
                    }, $category_ids));

                    ?>

                    <td><?php echo $category_ids_imploded; ?></td>
                    <td>
                        <?php
                        $dataresult =   getDataRowByTableAndId('projects', $item['project_id']);
                        echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
                        ?>
                    </td>
                    <td>
                        <?php
                        $dataresult =   getDataRowByTableAndId('inv_warehosueinfo', $item['warehouse_id']);
                        echo (isset($dataresult) && !empty($dataresult) ? $dataresult->name : '');
                        ?>
                    </td>
                    <td>
                        <span><a class="action-icons c-approve" href="issue-view.php?no=<?php echo $item['issue_id']; ?>" title="View"><i class="fas fa-eye text-success"></i></a></span>
                        <span><a class="action-icons c-delete" href="issue_edit.php?edit_id=<?php echo $item['id']; ?>" title="edit"><i class="fa fa-edit text-info mborder"></i></a></span>
                        <?php if ($_SESSION['logged']['user_type'] == 'superAdmin') { ?>
                            <span><a class="action-icons c-delete" href="issue_approve.php?issue=<?php echo $item['issue_id']; ?>" title="approve"><i class="fa fa-check text-info mborder"></i></a></span>
                        <?php } ?>
                        <span><a class="action-icons c-delete" href="#" title="delete"><i class="fa fa-trash text-danger"></i></a></span>
                    </td>
                    </tr>
                <?php } ?>
        </tbody>
    </table>

<?php }
