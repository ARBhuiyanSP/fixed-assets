<?php include('dashboard_top_menu_header.php'); ?>
  <!-- /.navbar -->


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
              <li class="breadcrumb-item active">Assets List</li>
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
				<h3 class="card-title">Assets List</h3>
				<div class="card-tools">
				  <button type="button" class="btn btn-tool"  onclick="window.location.href='assets_entry.php';">
					<i class="fas fa-list"></i> New Asset Entry
				  </button>
				</div>
			  </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <div class="table-responsive data-table-wrapper">
						<table id="receive_data_list" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>SL</th>
									<th>User</th>
									<th>
										<select name="owner" id="owner" class="form-control">
											<option value="">Select Owner/Division</option>
											<?php 
											$query = "SELECT * FROM assets GROUP BY owner ORDER BY owner ASC";
											$result = mysqli_query($conn, $query);
											while($row = mysqli_fetch_array($result))
											{
												echo '<option value="'.$row["owner"].'">'.$row["owner"].'</option>';
											}
											?>
										</select>
									</th>
									<th>Category</th>
									<th>Inventory SL No</th>
									<th>Assign Status</th>
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
 
        	<script type="text/javascript" language="javascript" >
$(document).ready(function(){
 
 load_receive_data();

 function load_receive_data(is_owner)
 {
  var dataTable = $('#receive_data_list').DataTable({
   "processing":true,
   "serverSide":true,
   "order":[],
   "ajax":{
    url:"fetch/fetch_receive_table_assets.php",
    type:"POST",
    data:{is_owner:is_owner}
   },
   "fnRowCallback": function( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
            if ( aData[5] == "Assigned" )
            {
				$('td', nRow).css('background-color', '#b01a33');
				$('td', nRow).css('color', '#fff');
            }else{
				$('td', nRow).css('background-color', '#218a5c');
				$('td', nRow).css('color', '#fff');
			}
        },
   "columnDefs":[
    {
     "targets":[2],
     "orderable":false,
    },
   ],
  });
 }

 $(document).on('change', '#owner', function(){
  var owner = $(this).val();
  $('#receive_data_list').DataTable().destroy();
  if(owner != '')
  {
   load_receive_data(owner);
  }
  else
  {
   load_receive_data();
  }
 });
});
</script>
<!-- ./wrapper -->
