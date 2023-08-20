<style>
.dtext{
	text-decoration:underline;
}
.linktext{
	font-size:12px;
}

</style>
<div class="card mb-3">

    <div class="card-body">
        <form class="form-horizontal" action="" id="warehouse_stock_search_form" method="GET">
            <div class="table-responsive">          
                <table class="table table-borderless search-table">
                    <tbody>
                        <tr>  
							<td>
                                <div class="form-group">
									<label for="sel1">User:</label>
									<select class="form-control material_select_2" id="user_id" name="user_id">
										<option value="">Select User</option>
										<?php
										$parentCats = getTableDataByTableName('users', '', 'first_name');
										if (isset($parentCats) && !empty($parentCats)) {
											foreach ($parentCats as $pcat) {
												if($_GET['user_id'] == $pcat['id']){
													$selected	= 'selected';
													}else{
													$selected	= '';
													}
												?>
												<option value="<?php echo $pcat['id'] ?>" <?php echo $selected; ?>><?php echo $pcat['first_name'] ?> <?php echo $pcat['last_name'] ?></option>
											<?php }
										} ?>
									</select>
								</div>
                            </td>
							<td>
                                <div class="form-group">
                                    <label for="todate">To Date</label>
                                    <input type="text" class="form-control" id="to_date" name="to_date" value="<?php if(isset($_GET['to_date'])){ echo $_GET['to_date']; } ?>" autocomplete="off" required >
                                </div>
                            </td>
							
							<td>
                                <div class="form-group">
                                    <label for="todate">.</label>
									<button type="submit" name="submit" class="form-control btn btn-primary">Search</button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </form>
    </div>
</div>
<?php
if(isset($_GET['submit'])){
	
	$user_id	=	$_GET['user_id'];
	$date		=	$_GET['to_date'];
	$to_date	=	date('Y-m-d', strtotime($date .' +1 day'));
	
	
?>
<center>
	
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10" id="printableArea">
			<div class="row">
				<div class="col-sm-12">	
					<center>
						<p>
							<?php
								$sqlUser	=	"SELECT * FROM `users` WHERE `id` = '$user_id'";
								$resultUser = mysqli_query($conn, $sqlUser);
								$rowUser=mysqli_fetch_array($resultUser);
							 ?>
							<img src="images/logo-wide.png" height="50px;"/><br>
							<span>User Log History</span><br>
							<span>User : <?php echo $rowUser['first_name']; ?> <?php echo $rowUser['last_name']; ?></span><br>
							Till  <span class="dtext"><?php echo date("jS F Y", strtotime($date));?> </span><br>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered table-striped ">
					<thead>
						<tr>
							<th>Login Time</th>
							<th>IP Address</th>
						</tr>
					</thead>
					<tbody>		
					<?php 
						$sql	=	"SELECT * FROM `userlog` WHERE `userId` = '$user_id' AND `loginTime` <= '$to_date';";
						$result = mysqli_query($conn, $sql);
						while($row=mysqli_fetch_array($result))
						{ 
					?>
						<tr>
							<td><?php echo $row['loginTime']; ?></td>
							<td><?php echo $row['userIp']; ?></td>
						</tr>
					<?php } ?>
					</tbody>
				</table>
				<center><div class="row">
					<div class="col-sm-6"></br></br>--------------------</br>Receiver Signature</div>
					<div class="col-sm-6"></br></br>--------------------</br>Authorised Signature</div>
				</div></center></br>
				<div class="row">
					<div class="col-sm-12" style="border:1px solid gray;border-radius:5px;padding:10px;color:#f26522;">
						<center><h5>Notice***</br><span style="font-size:14px;color:#000000;">Please Check Everything Before Signature</span></h5></center>
						
					</div>
				</div>
			</div>			
		</div>
		<center><button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fas fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button></center>
		<div class="col-md-1"></div>
</center>
<?php }?>
<script>
function printDiv(divName) {
	 var printContents = document.getElementById(divName).innerHTML;
	 var originalContents = document.body.innerHTML;

	 document.body.innerHTML = printContents;

	 window.print();

	 document.body.innerHTML = originalContents;
}
</script>
<script>
    $(function () {
        $("#from_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>
<script>
    $(function () {
        $("#to_date").datepicker({
            inline: true,
            dateFormat: "yy-mm-dd",
            yearRange: "-50:+10",
            changeYear: true,
            changeMonth: true
        });
    });
</script>


