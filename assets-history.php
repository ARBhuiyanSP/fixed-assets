<?php include('dashboard_top_menu_header.php'); ?>
  <!-- /.navbar -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Fixed Assets Management<small></small></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
              <li class="breadcrumb-item active">Asset History</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title">Asset's History</h5>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
					<div class="form-horizontal">
						<div class="form-group">
						<form method="GET">
							<div class="row">
								<div class="col-md-2">
								   <label class="control-label">Select Asset</label>
								   <select name="id" class="form-control select2">
										<option>Select Asset</option>
										<?php
										$sqlvs="SELECT * FROM `assets`";
										$resultvs = mysqli_query($conn,$sqlvs);
										while($rowvs = mysqli_fetch_array($resultvs)) {
											if($_GET['id'] == $rowvs['id']){
											$selected	= 'selected';
											}else{
											$selected	= '';
											}
										?>
										<option value="<?php echo $rowvs['id'] ?>" <?php echo $selected; ?>><?php echo $rowvs['category'] ?> || <?php echo $rowvs['inventory_sl_no'] ?></option>
										<?php } ?>
									</select>
								</div>
								<div class="col-md-1">
								   <label class="control-label" style="color:#fff;">.</label>
								   <button class="form-control btn btn-primary" type="submit" name="submit"><i class=""></i> SEARCH</button>
								</div>
								<div class="col-md-1">
								   <label class="control-label" style="color:#fff;">.</label>
								   <button class="form-control btn btn-success" type="button" onclick="location.href='assets_list.php';"><i class=""></i> Assets List</button>
								</div>
							</div>
						</form>
							
							<?php
								if(isset($_GET['submit'])){
									$id = $_GET['id'];
								
							?>
							<div class="row" id="printableArea" style="display:block;">
								<?php
								$sql	=	"select * from `assets` where `id`='$id'";
								$result = mysqli_query($conn, $sql);
								$row=mysqli_fetch_array($result);
								?>
								<center>
									<h1 align="center"><img src="images/logoMenu.png" height="50"></h1>
									<h2>SAIF POWERTEC LIMITED</h2>
									<p>72,Mohakhali C/A, (8th Floor),Rupayan Center,Dhaka-1212,bangladesh</p>
									<h3>Assets History Report</h3>
									<table class="table" style="width:80%">
										<tr>
											<th>Category:</th>
											<td><?php echo $row['category']; ?>
											</td>
											<th>Inventory No:</th>
											<td><?php echo $row['inventory_sl_no'] ?></td>
											<th>Brand:</th>
											<td><?php echo $row['brand'] ?></td>
											<td rowspan="2"><img src="<?php echo $row['qr_image'] ?>" height="100" /></td>
											
										</tr>
										<tr>
											<th>Model:</th>
											<td><?php echo $row['model'] ?></td>
											<th>Purchase Date:</th>
											<td><?php echo $row['purchase_date'] ?></td>
											<th>Purchase Value:</th>
											<td><?php echo $row['price'] ?></td>
										</tr>
									</table>
								<table id="" class="table table-striped table-bordered" style="width:90%">
									<thead>
										<tr>
											<th>Employee ID</th>
											<th>Employee Name</th>
											<th>Date From Assign</th>
											<th>Date To Assign</th>
										</tr>
									</thead>
									<tbody>
									<?php
										$product_id = $row['id'];
										$sqlh	=	"SELECT * FROM `product_assign` WHERE `product_id`='$product_id'";
										$resulth = mysqli_query($conn, $sqlh);
										while ($rowh = mysqli_fetch_array($resulth)) { ?>
									
										<tr>
											<td><?php echo $rowh['employee_id']; ?></td>
											
											<?php
												$employee_id=$rowh['employee_id'];
												$sqlemp	=	"SELECT * FROM `inv_employee` WHERE `employeeid`='$employee_id'";
												$resultemp = mysqli_query($conn, $sqlemp);
												$rowemp = mysqli_fetch_array($resultemp);
											?>
											<td><?php echo $rowemp['name']; ?></td>
											<td><?php 
											if($rowh['assign_date']){
												$rDate = strtotime($rowh['assign_date']);
												$rfDate = date("jS \of F Y",$rDate);
												echo $rfDate;
											}else{
												echo '---';
											}
											?>
											</td>
											<td><?php 
											if($rowh['refund_date']){
												$rfDate = strtotime($rowh['refund_date']);
												$rffDate = date("jS \of F Y",$rfDate);
												echo $rffDate;
											}else{
												echo '---';
											}
											?>
											</td>
										</tr>
										<?php } ?>
									</tbody>
								</table>
								</center>
							</div>
								
							<center><button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fa fa-print" aria-hidden="true" style="font-size: 17px;"> Print</i></button></center>					
							<script>
							function printDiv(divName) {
								 var printContents = document.getElementById(divName).innerHTML;
								 var originalContents = document.body.innerHTML;

								 document.body.innerHTML = printContents;

								 window.print();

								 document.body.innerHTML = originalContents;
							}
							</script>
							<?php } ?>
							
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

 <?php include('dashboard_top_menu_footer.php'); ?>
<!-- ./wrapper -->
