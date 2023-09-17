<?php include('dashboard_top_menu_header.php'); ?>
  <!-- /.navbar -->


  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Fixed Assets Management</h1>
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
                <h5 class="card-title">Reports Section</h5>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <ol>
						<div class="col-md-5">
							<b style='color:red;'><strong>Assets Report</strong></b>
							<li>  <a style="font-weight:bold;color:black" href="assets-report.php"> Division wise Asset List report</a></li>
							<li>  <a style="font-weight:bold;color:black" href="assets-history.php"> Assets History report</a></li>
							<li>  <a style="font-weight:bold;color:black" href="damage-list.php"> Damage List Report</a></li>
							<li>  <a style="font-weight:bold;color:black" href="inspaction-history.php"> Inspaction Report</a></li>
							<li>  <a style="font-weight:bold;color:black" href="disposal-check.php"> Disposal Report</a></li>
						</div>
						<div class="col-md-2"></div>
						<div class="col-md-5">
							<b style='color:red;'><strong>Employee Report</strong></b>
							<li><a style="font-weight:bold;color:black" href="employee-history.php"> Employee History</a></li>
						</div>
					</ol>
                  </div>
                  <!-- /.col -->
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
