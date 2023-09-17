<?php include('dashboard_top_menu_header.php'); ?>
  <!-- /.navbar -->

<style>
.btn{
	padding:10px 7px;
}
.btn-app{
	margin:0;
}
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Fixed Assets Management <small></small></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
              <li class="breadcrumb-item"><a href="assets_list.php">Assets List</a></li>
              <li class="breadcrumb-item active">Assets Details</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
	<?php
		$id = $_GET['id'];
		$sql	=	"select * from `assets` where `id`='$id'";
		$result = mysqli_query($conn, $sql);
		$row=mysqli_fetch_array($result);
	?>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title">Asset's Details</h5>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
					<div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">
						<div class="row">
							<div class="col-12 col-sm-3">
								<div class="info-box bg-light">
									<div class="info-box-content">
										<span class="info-box-text"><b>Category</b></span>
										<span class="info-box-number mb-0"><?php echo $row['category'] ?></span>
									</div>
								</div>
							</div>
							<div class="col-12 col-sm-3">
								<div class="info-box bg-light">
									<div class="info-box-content">
										<span class="info-box-text "><b>Brand</b></span>
										<span class="info-box-number mb-0"><?php echo $row['brand'] ?></span>
									</div>
								</div>
							</div>
							<div class="col-12 col-sm-3">
								<div class="info-box bg-light">
									<div class="info-box-content">
										<span class="info-box-text"><b>Purchase value/Price</b></span>
										<span class="info-box-number mb-0"><?php echo $row['price'] ?></span>
									</div>
								</div>
							</div>
							<div class="col-12 col-sm-3">
								<div class="info-box bg-light">
									<div class="info-box-content">
										<span class="info-box-text"><b>Purchase date</b></span>
										<span class="info-box-number mb-0"><?php echo $row['purchase_date'] ?></span>
									</div>
								</div>
							</div>
							<div class="col-12 col-sm-6">
								<div class="info-box bg-light">
									<div class="info-box-content">
										<h5 class="text-left">Owner</h5>
										<span class="info-box-number text-left mb-0">-</span>
										<span class="info-box-number text-left mb-0">Software Development, 88 Innovations Ltd</span>
									</div>
								</div>
							</div>
							<div class="col-12 col-sm-6">
								<div class="info-box bg-light">
									<div class="info-box-content">
										<h5 class="text-right">Current User</h5>
										<?php
											$userid = $row['user'];
											$sqlemp	=	"select * from `inv_employee` where `employeeid`='$userid'";
											$resultemp = mysqli_query($conn, $sqlemp);
											$rowemp=mysqli_fetch_array($resultemp);
											if($userid != ''){?>
												
											<span class="info-box-number text-right mb-0"><b><?php echo $rowemp['employeeid'] ?> || <?php echo $rowemp['name'] ?></b></span>
											<span class="info-box-number text-right mb-0"><?php echo $rowemp['designation'] ?>, <?php echo $rowemp['division'] ?></span>
											<?php }else{ ?>
										
											<span class="info-box-number text-right mb-0"><b>-</b></span>
											<span class="info-box-number text-right mb-0">-</span>
											<?php } ?>
									</div>
								</div>
							</div>
						</div>
							<div class="row">
								<div class="col-12">
									<h4>Activities</h4>
									<table id="" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Employee ID</th>
												<th>Employee Name</th>
												<th>Date of Assign</th>
												<th>Return date</th>
											</tr>
										</thead>
										<tbody>
											
											<?php
											$product_id = $row['id'];
											$resultData = mysqli_query($conn, "SELECT * FROM `product_assign` WHERE `product_id`='$product_id' ORDER BY `id` DESC LIMIT 3 "); 
											while ($rowData = mysqli_fetch_array($resultData)) {
											?>
											<tr>
												<td><a href="#"><?php echo $rowData['employee_id'] ;?></a></td>
													<?php
													$employee_id = $rowData['employee_id'];
													$resultEmp = mysqli_query($conn, "select * from `inv_employee` where `employeeid`='$employee_id'"); 
													$rowEmp = mysqli_fetch_array($resultEmp);
													?>
												<td><?php echo $rowEmp['name'] ;?></td>
												<td><?php echo $rowData['assign_date'] ;?></td>
												<td><?php if($rowData['refund_date'] !=''){echo $rowData['refund_date'];}else{ echo '---';}?></td>
											</tr>
											<?php } ?>
										</tbody>
									</table>
								</div>
							</div>
					</div>
					<div class="col-12 col-md-12 col-lg-4 order-1 order-md-2">
						<div class="row">
							<div class="col-12 col-md-12 col-lg-12 order-1 order-md-2">
								<?php if($row['asset_image'] !=''){ ?>
									<img src="images/<?php echo $row['asset_image']; ?>" height="220" class="img-thumbnail"/>
								<?php }else{ ?>
									<img src="images/demo_asset.jpg" height="220" class="img-thumbnail"/>
								<?php } ?>
							</div>
						</div>
						<div class="row mt-3 mb-3">
							<?php if($row['assign_status']=='Assigned'){ ?>
								<div class="col-12 col-md-3 col-lg-3 order-1 order-md-2">
									<a class="btn btn-app bg-primary btn-block" data-toggle="modal" data-target="#modalTransfer">
										<i class="fas fa-users"></i> Transfer
									</a>
								</div>
								<div class="col-12 col-md-3 col-lg-3 order-1 order-md-2">
									<a class="btn btn-app bg-warning btn-block" data-toggle="modal" data-target="#modalReturn">
										<i class="fas fa-users"></i> Return
									</a>
								</div>
							<?php }else{ ?>
								<div class="col-12 col-md-3 col-lg-3 order-1 order-md-2">
									<a class="btn btn-app bg-primary btn-block" data-toggle="modal" data-target="#modalAssign">
										<i class="fas fa-users"></i> Assign
									</a>
								</div>
								
							<?php }?>
							
							<div class="col-12 col-md-3 col-lg-3 order-1 order-md-2">
								<a class="btn btn-app bg-danger btn-block" data-toggle="modal" data-target="#modalIns">
									<i class="fas fa-inbox"></i> Inspection
								</a>
							</div>
							<div class="col-12 col-md-3 col-lg-3 order-1 order-md-2">
								<a href="assets-history.php?id=<?php echo $id; ?>&submit=" target="blank" class="btn btn-app bg-success btn-block">
									<i class="fas fa-save"></i> History
								</a>
							</div>
						</div>
					</div>
				</div>
                <!-- /.row -->
              </div>
              <!-- ./card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
	<!-- /.Transfer modal start -->
    <div class="modal fade" id="modalTransfer">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Transfer Asset to Another User</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
			<form method="post">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Employee</label>
								<select class="form-control select2" name="employee_id" style="width: 100%;" required >
									<option value="">Select--</option>
									<?php 
									$sql	= "select * from `inv_employee` WHERE `employeeid`!='$employee_id' ORDER BY employeeid ASC";
									$result = mysqli_query($conn, $sql);
									while($row=mysqli_fetch_array($result))
										{
									?>
									<option value="<?php echo $row['employeeid'] ?>"><?php echo $row['employeeid'] ?>-<?php echo $row['name'] ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Transfer Date</label>
								<input type="date" id="date1" class="form-control" name="transfer_date" required />
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label>Remarks</label>
								<textarea class="form-control" name="remarks"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer justify-content-between">
				<?php 
						$sqlAssign	= "SELECT * FROM `product_assign` WHERE `product_id`='$id' ORDER BY `id` DESC LIMIT 1 ;";
						$resultAssign = mysqli_query($conn, $sqlAssign);
						$rowAssign=mysqli_fetch_array($resultAssign);
					?>
					<input type="hidden" name="id" value="<?php echo $rowAssign['id'] ?>" />
					<input type="hidden" name="product_id" value="<?php echo $id ?>" />
					<button type="submit" name="transfer" class="btn btn-primary btn-block">Transfer This Asset</button>
				</div>
			</form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.Transfer modal end -->
	<!-- /.Return modal start -->
    <div class="modal fade" id="modalReturn">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Return Asset to Store</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form method="post">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Return Date</label>
								<input type="date" id="date1" class="form-control" name="return_date" required />
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label>Remarks</label>
								<textarea class="form-control" name="remarks"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer justify-content-between">
					<?php 
						$sqlAssign	= "SELECT * FROM `product_assign` WHERE `product_id`='$id' ORDER BY `id` DESC LIMIT 1 ;";
						$resultAssign = mysqli_query($conn, $sqlAssign);
						$rowAssign=mysqli_fetch_array($resultAssign);
					?>
					<input type="hidden" name="id" value="<?php echo $rowAssign['id'] ?>" />
					<input type="hidden" name="product_id" value="<?php echo $id ?>" />
					<button type="submit" name="return" class="btn btn-warning btn-block">Return This Asset</button>
				</div>
			</form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.Return modal end -->
	<!-- /.Assign modal start -->
    <div class="modal fade" id="modalAssign">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Assign Asset to A User</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form method="post">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Employee</label>
								<select class="form-control select2" name="employee_id" style="width: 100%;" required >
									<option value="">Select--</option>
									<?php 
									$sql	= "select * from `inv_employee` WHERE `employeeid`!='$employee_id' ORDER BY employeeid ASC";
									$result = mysqli_query($conn, $sql);
									while($row=mysqli_fetch_array($result))
										{
									?>
									<option value="<?php echo $row['employeeid'] ?>"><?php echo $row['employeeid'] ?>-<?php echo $row['name'] ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Assign Date</label>
								<input type="date" id="date1" class="form-control" name="assign_date" required />
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label>Remarks</label>
								<textarea class="form-control" name="remarks"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer justify-content-between">
					<input type="hidden" name="product_id" value="<?php echo $id; ?>" />
					<button type="submit" name="assign" class="btn btn-primary btn-block">Assign This Asset</button>
				</div>
			</form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.Assign modal end -->
	<!-- /.ins. modal start -->
    <div class="modal fade" id="modalIns">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Assets's Inspection</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form method="post">
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6">
							<div class="form-group">
								<label>Inspection Date</label>
								<input type="date" id="date1" class="form-control" name="inspaction_date" required />
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label>Status</label>
								<select class="form-control select2" name="status" style="width: 100%;" required >
									<option value="">Select--</option>
									<option value="active">OK</option>
									<option value="damaged">Not Ok</option>
								</select>
							</div>
						</div>
						<div class="col-md-12">
							<div class="form-group">
								<label>Remarks</label>
								<textarea class="form-control" name="remarks"></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer justify-content-between">
					<input type="hidden" name="product_id" value="<?php echo $id ?>" />
					<button type="submit" name="inspection" class="btn btn-danger btn-block">Save Data</button>
				</div>
			</form>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.ins. modal end -->
<script>
	$(function() {
	$("#date1").datepicker({
			inline: true,
			dateFormat:"yy-mm-dd",
			yearRange:"-50:+10",
			changeYear: true,
			changeMonth: true
	});
});
</script>
<script>
	$(function() {
	$("#date2").datepicker({
			inline: true,
			dateFormat:"yy-mm-dd",
			yearRange:"-50:+10",
			changeYear: true,
			changeMonth: true
	});
});
</script>
 <?php include('dashboard_top_menu_footer.php'); ?>
<!-- ./wrapper -->

