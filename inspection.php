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
                <h5 class="card-title">Asset's Inspection</h5>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
					<div class="col-12 col-md-12 col-lg-4" style="border:1px solid black;border-radius:5px;">
						<form method="POST">
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
							<div class="col-md-12">
								<div class="form-group">
									<input type="hidden" name="product_id" value="<?php echo $id ?>" />
									<button type="submit" name="inspection" class="btn btn-primary btn-block">SAVE DATA</button>
								</div>
							</div>
						</div>
						</form>
					</div>
					<div class="col-12 col-md-12 col-lg-8">
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
											if($userid != ''){ ?>
												
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
											<tr>
												<td><a href="#">IEL-00008</a></td>
												<td>Sayed Ahmed</td>
												<td>03/03/2023</td>
												<td>---</td>
											</tr>
											<tr>
												<td><a href="#">IEL-00007</a></td>
												<td>farhad Ali</td>
												<td>10/12/2022</td>
												<td>03/03/2023</td>
											</tr>
											<tr>
												<td><a href="#">IEL-00017</a></td>
												<td>Atiqur Rahman Bhuiyan</td>
												<td>09/07/2022</td>
												<td>10/12/2022</td>
											</tr>
										</tbody>
									</table>
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

