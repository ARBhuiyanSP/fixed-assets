<?php include('dashboard_top_menu_header.php'); ?>
  <!-- /.header -->


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
              <li class="breadcrumb-item active">Issue - Consumption List</li>
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
				<h3 class="card-title">Issue / Consumption</h3>
				<div class="card-tools">
				  <button type="button" class="btn btn-tool"  onclick="window.location.href='issue_entry.php';">
					<i class="fas fa-list"></i> New Issue Entry
				  </button>
				</div>
			  </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
					<div class="col-md-12">
						<div class="table-responsive data-table-wrapper">
							<table id="issue_data_list" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Issue No</th>
										<th>Issue Date</th>
										<th width="30%">
											<span>Use In</span><select name="equipments" id="equipments" class="form-control select2">
												<option value="">Use In Search</option>
												<?php 
												$query = "SELECT * FROM inv_issue GROUP BY use_in ORDER BY use_in ASC";
												$result = mysqli_query($conn, $query);
												while($row = mysqli_fetch_array($result))
												{
													echo '<option value="'.$row["use_in"].'">'.$row["use_in"].'</option>';
												}
												?>
											</select>
										</th>
										<th>Total Amount</th>
										<th>Action</th>
									</tr>
								</thead>
							</table>
						</div>
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
<script type="text/javascript" language="javascript" >
$(document).ready(function(){
 
 load_issue_data();

 function load_issue_data(is_equipments)
 {
  var dataTable = $('#issue_data_list').DataTable({
   "processing":true,
   "serverSide":true,
   "order":[],
   "ajax":{
    url:"fetch/fetch_issue_table.php",
    type:"POST",
    data:{is_equipments:is_equipments}
   },
   "columnDefs":[
    {
     "targets":[2],
     "orderable":false,
    },
   ],
  });
 }

 $(document).on('change', '#equipments', function(){
  var equipments = $(this).val();
  $('#issue_data_list').DataTable().destroy();
  if(equipments != '')
  {
   load_issue_data(equipments);
  }
  else
  {
   load_issue_data();
  }
 });
});
</script>
