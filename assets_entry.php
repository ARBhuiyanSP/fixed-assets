<?php include('dashboard_top_menu_header.php'); ?>
  <!-- /.navbar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Fixed Assets Management <small></small></h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Assets Entry Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
				<h3 class="card-title">Assets Entry</h3>
				<div class="card-tools">
				  <button type="button" class="btn btn-tool"  onclick="window.location.href='assets_list.php';">
					<i class="fas fa-list"></i> Assets List
				  </button>
				</div>
			  </div>
          <!-- /.card-header -->
          <div class="card-body">
            <form action="" method="post" name="add_name" id="receive_entry_form" enctype="multipart/form-data" onsubmit="showFormIsProcessing('receive_entry_form');">
			<div class="row" id="div1" style="">
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Category</label><span class="reqfield"> ***required</span>
						<select class="form-control select2" id="" name="category_id" required >
							<option value="">Select</option>
							<?php
							$projectsData = getTableDataByTableName('suppliers');

							if (isset($projectsData) && !empty($projectsData)) {
								foreach ($projectsData as $data) {
									?>
									<option value="<?php echo $data['id']; ?>"><?php echo $data['name']; ?></option>
									<?php
								}
							}
							?>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Type/Quality</label><span class="reqfield"> ***required</span>
						<select class="form-control select2" id="" name="quality" required >
							<option value="">Select</option>
							<option value="Old">Old</option>
							<option value="New">New</option>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Brand</label>
						<input type="text" autocomplete="off" name="brand" id="" class="form-control" value="">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Model No</label>
						<input type="text" autocomplete="off" name="model" id="" class="form-control" value="">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Warrrenty</label>
						<input type="text" autocomplete="off" name="warrenty" id="" class="form-control" value="">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Price</label>
						<input type="text" autocomplete="off" name="price" id="" class="form-control" value="">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Division</label><span class="reqfield"> ***required</span>
						<select class="form-control select2" id="" name="owner" required >
							<option value="">Select</option>
							<?php 
							$sqldg	= "select id,division_name from divisions ORDER BY id ASC";
							$resultdg = mysqli_query($conn, $sqldg);
							while($rowdg=mysqli_fetch_array($resultdg))
								{
							?>
							<option value="<?php echo $rowdg['division_name'] ?>"><?php echo $rowdg['division_name'] ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Department</label><span class="reqfield"> ***required</span>
						<select class="form-control select2" id="" name="dept" required >
							<option value="">Select</option>
							<?php 
							$sqldpt	= "select id,dept_name from departments ORDER BY id ASC";
							$resultdpt = mysqli_query($conn, $sqldpt);
							while($rowdpt=mysqli_fetch_array($resultdpt))
								{
							?>
							<option value="<?php echo $rowdpt['dept_name'] ?>"><?php echo $rowdpt['dept_name'] ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Floor</label><span class="reqfield"> ***required</span>
						<select class="form-control select2" id="" name="floor" required >
							<option value="">Select</option>
							<option value="KT-14">KT-14</option>
							<option value="KT-13">KT-13</option>
							<option value="KT-12">KT-12</option>
							<option value="KT-07">KT-07</option>
							<option value="KT-05">KT-05</option>
							<option value="KT-03">KT-03</option>
							<option value="KT-02">KT-02</option>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Location</label>
						<input type="text" autocomplete="off" name="location" id="" class="form-control" value="">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">User</label><span class="reqfield"> ***required</span>
						<select class="form-control select2" id="" name="user" required >
							<option value="">Select</option>
							<?php 
							$sqldg	= "select employeeid,name from inv_employee ORDER BY name ASC";
							$resultdg = mysqli_query($conn, $sqldg);
							while($rowdg=mysqli_fetch_array($resultdg))
								{
							?>
							<option value="<?php echo $rowdg['employeeid'] ?>"><?php echo $rowdg['employeeid'] ?> | <?php echo $rowdg['name'] ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Purchase Date</label>
						<input type="text" autocomplete="off" name="purchase_date" id="purchase_date" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Manufacture Year</label>
						<input type="text" autocomplete="off" name="year_manufacture" id="" class="form-control" value="">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Bill/Note/Req/RLP No</label>
						<input type="text" autocomplete="off" name="bill_note_req_rlp_no" id="" class="form-control" value="">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Country of Origin</label>
						<input type="text" autocomplete="off" name="origin" id="" class="form-control" value="">
					</div>
				</div>
			</div>
			<div class="row" style="">
				<div class="col-md-12">
					<div class="form-group">
						<label>Remarks</label>
						<textarea id="remarks" name="remarks" class="form-control" required></textarea>
					</div>
				</div>
				<div class="col-md-12">
					<div class="form-group">
						 <input type="submit" name="asset_submit" id="submit" class="btn btn-block" style="background-color:#218A5C;color:#ffffff;" value="Save" />   
					</div>
				</div>
			</div>
			</form>
            <!-- /.row -->
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.container-fluid -->
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


<script>

$(function () {
  $.validator.setDefaults({
    submitHandler: function () {
      alert( "Form successful submitted!" );
    }
  });
  $('#quickForm').validate({
    rules: {
      email: {
        required: true,
        email: true,
      },
      password: {
        required: true,
        minlength: 5
      },
      terms: {
        required: true
      },
    },
    messages: {
      email: {
        required: "Please enter a email address",
        email: "Please enter a valid email address"
      },
      password: {
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
      },
      terms: "Please accept our terms"
    },
    errorElement: 'span',
    errorPlacement: function (error, element) {
      error.addClass('invalid-feedback');
      element.closest('.form-group').append(error);
    },
    highlight: function (element, errorClass, validClass) {
      $(element).addClass('is-invalid');
    },
    unhighlight: function (element, errorClass, validClass) {
      $(element).removeClass('is-invalid');
    }
  });
});
</script>