<?php include('dashboard_top_menu_header.php'); ?>

  <!-- /.navbar -->
	<script type="text/javascript">
        $(document).ready(function(){

            $(document).on('keydown', '.employeeid', function() {
                
                var id = this.id;
                var splitid = id.split('_');
                var index = splitid[1];

                $( '#'+id ).autocomplete({
                    source: function( request, response ) {
                        $.ajax({
                            url: "getDetails.php",
                            type: 'post',
                            dataType: "json",
                            data: {
                                search: request.term,request:1
                            },
                            success: function( data ) {
                                response( data );
                            }
                        });
                    },
                    select: function (event, ui) {
                        $(this).val(ui.item.label); // display the selected text
                        var userid = ui.item.value; // selected id to input

                        // AJAX
                        $.ajax({
                            url: 'getDetails.php',
                            type: 'post',
                            data: {userid:userid,request:2},
                            dataType: 'json',
                            success:function(response){
                                
                                var len = response.length;

                                if(len > 0){
                                    var id = response[0]['id'];
                                    var name = response[0]['name'];
                                    var designation = response[0]['designation'];
                                    var department = response[0]['department'];
                                    var division = response[0]['division'];

                                    document.getElementById('name_'+index).value = name;
                                    document.getElementById('designation_'+index).value = designation;
                                    document.getElementById('department_'+index).value = department;
                                    document.getElementById('division_'+index).value = division;
                                }  
                            }
                        });
                        return false;
                    }
                });
            });
        });
    </script>

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
                <h5 class="card-title">Content Title</h5>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <!--------------Employee-------------->
						
						<div class="col-xs-2">
                            <div class="form-group">
                                <label class="field_title">Employee ID<span class="reqr"> is required***</span></label>
								<input type='text' name="employeeid" class='form-control employeeid' id='employeeid_1' placeholder='Enter employee id No' required >
                            </div>
                        </div>
						<div class="col-xs-3">
                            <div class="form-group">
                                <label class="field_title">Employee Name</label>
                                <input type='text' name="employeename" class='form-control name' id='name_1'  >
                            </div>
                        </div>
						<div class="col-xs-3">
                            <div class="form-group">
                                <label class="field_title">Designation</label>
                                <input type='text' name="designation" class='form-control designation' id='designation_1'  >
                            </div>
                        </div>
						<div class="col-xs-2">
                            <div class="form-group">
                                <label class="field_title">Department</label>
                                <input type='text' name="department" class='form-control department' id='department_1'  >
                            </div>
                        </div>
						<div class="col-xs-2">
                            <div class="form-group">
                                <label class="field_title">Division</label>
                                <input type='text' name="division" class='form-control division' id='division_1'  >
                            </div>
                        </div>
						<!--------------Employee-------------->
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
