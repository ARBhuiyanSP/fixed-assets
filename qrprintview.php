<?php include('dashboard_top_menu_header.php'); 
$id=$_GET['id'];
?>
  <!-- /.navbar -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> 88 Innovations Ltd <small>- Dashboard</small></h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
              <li class="breadcrumb-item active">Sample Page</li>
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
                <h5 class="card-title">Assets QR Print</h5>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row" id="printableArea" style="display:block;">
					<table id="" class="">
						<thead>
							<tr>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr id="" bgcolor="#f2f2f2" class="edit_tr">
							<?php
							$sql	=	"select * from assets where id=$id";
							$result = mysqli_query($conn, $sql);
							$row=mysqli_fetch_array($result);
							?>
								<td style="vertical-align: top;">
								<style type="text/css">
											@media screen {
													html, body {
															margin: 0;
													  }
													  
													img{
															width: 60px;
															height: 60px;
															float: left;
															margin-left: 5px;;
													}
													.code_style{
														
														
														display: block;
														font-size: 10px;
														writing-mode: vertical-tb;
														margin-top: -10px;
														margin-bottom: auto;
														position:relative;
													}
											}
											@media print {
													@page {
															size: 0.9in 1.8in ;
															margin: 0;
													  }
													html, body {
															margin: 0;
													  }
													img{
															width: 0.8in;
															height: 0.8in;
															display: block;
															margin-left: 30px;
															margin-right: 10px;
															margin-top: 20px;
															margin-bottom: auto;
													}
													.code_style{
														display: block;
														font-size: 12px;
														font-weight:bold;
														writing-mode: vertical-rl;
														margin-top: -150px;
														margin-bottom: auto;
														margin-left:15px;
														position:relative;
													}
											}
								</style>
								<img src="images/logo.png" height="1.4in"/> 
								<img src="<?php echo $row['qr_image']; ?>" /> 
								<p class="code_style" style="text-align:center"><?php echo $row['inventory_sl_no']; ?></p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fa fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button>
				<script>
				function printDiv(divName) {
					 var printContents = document.getElementById(divName).innerHTML;
					 var originalContents = document.body.innerHTML;

					 document.body.innerHTML = printContents;

					 window.print();

					 document.body.innerHTML = originalContents;
				}
				</script>
				<button class="btn btn-default" onclick="window.location.href = 'assets.php'"><i class="fa fa-hand-o-right" aria-hidden="true" style="  font-size: 17px;"> Back To Assets List</i></button>
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
