<?php include('dashboard_top_menu_header.php');
$id = $_GET['edit'];
$sqlup	= "SELECT * FROM `assets` WHERE `id`='$id'";
$resultup = mysqli_query($conn, $sqlup);
$n=mysqli_fetch_array($resultup);

$category_id 			= $n['category'];
			$brand 					= $n['brand'];
			$model 					= $n['model'];
			$quality 				= $n['quality'];
			$warrenty 				= $n['warrenty'];
			$owner 					= $n['owner'];
			$dept 					= $n['dept'];
			$floor 					= $n['floor'];
			$location 					= $n['location'];
			$user 					= $n['user'];
			$user_name 					= $n['user_name'];
			$inventory_sl_no 		= $n['inventory_sl_no'];
			$purchase_date 			= $n['purchase_date'];
			$ins_date 				= $n['inspaction_date'];
			$year_manufacture 		= $n['year_manufacture'];
			$price 					= $n['price'];
			$bill_note_req_rlp_no 	= $n['bill_note_req_rlp_no'];
			$origin 				= $n['origin'];
			
			$parent_id 				= $n['parent_id'];
			$grade_id 				= $n['grade_id'];
			$asset_description 		= $n['asset_description'];
			$asset_image 		= $n['asset_image'];	

?>
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
				<h3 class="card-title">Assets Update</h3>
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
				<div class="col-md-1">
					<div class="form-group">
						<label>PARENT</label>
						<select id="" name="parent_id" class="select2 form-control" required>
							<?php 
							$sqld	= "select id,parent_category from parentcategories ORDER BY id ASC";
							$resultd = mysqli_query($conn, $sqld);
							while($rowd=mysqli_fetch_array($resultd))
								{
							?>
							<option value="<?php echo $rowd['id'] ?>" <?php if($rowd['id']==$parent_id){echo 'selected';} ?>><?php echo $rowd['parent_category'] ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>CATEGORY</label>
						<select id="" name="category_id" class="select2 form-control" required>
							<?php 
							$sqld	= "select id,cat_id,assets_category from categories ORDER BY id ASC";
							$resultd = mysqli_query($conn, $sqld);
							while($rowd=mysqli_fetch_array($resultd))
								{
							?>
							<option value="<?php echo $rowd['assets_category'] ?>" <?php if($rowd['assets_category']==$category_id){echo 'selected';} ?>><?php echo $rowd['assets_category'] ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				
				
				
				
				
					 <!-- add-assets.php relation achy $grade    -->
			
			
				<div class="col-md-2">
					<div class="form-group">
						<label>GRADE</label>
						<select id="" name="grade_id" class="select2 form-control" required>
								<option value="<?php echo $grade_id ?>"><?php echo $grade_id ?></option>
							<?php 
							$sqld	= "select id,grade from grade ORDER BY id ASC";
							$resultd = mysqli_query($conn, $sqld);
							while($rowd=mysqli_fetch_array($resultd))
								{
							?>
							<option value="<?php echo $rowd['grade'] ?>" <?php if($rowd['grade']==$grade_id){echo 'selected';} ?>><?php echo $rowd['grade'] ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				
				
				
				<div class="col-md-1">
					<div class="form-group">
						<label>TYPE</label>
						<select id="" name="quality" class="form-control select2" required>
							<option value="">Select</option>
							<option value="New" <?php if($quality =='New'){echo 'selected';} ?>>New</option>
							<option value="Old" <?php if($quality =='Old'){echo 'selected';} ?>>Old</option>
						</select>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>BRAND</label>
						<input type="text" name="brand" class="form-control" value="<?php echo $brand; ?>" autocomplete="off">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>MODEL NO</label>
						<input type="text" name="model" class="form-control" value="<?php echo $model; ?>" autocomplete="off">
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>WARRENTY</label>
						<input type="text" name="warrenty" class="form-control" value="<?php echo $warrenty; ?>" autocomplete="off">
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>PRICE</label>
						<input type="text" name="price" class="form-control" value="<?php echo $price; ?>" autocomplete="off">
					</div>
				</div>
			</div>
			<!--------------Employee-------------->
			<div class="row">
				<div class="col-md-2">
					<div class="form-group">
						<label class="field_title">Employee ID<span class="reqr"> ***</span></label>
						<input type='text' name="requested_id" class='form-control employeeid' id='employeeid_1' value='<?php echo $user ?>' >
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label class="field_title">Employee Name</label>
						<input type='text' name="request_person" class='form-control name' id='name_1' value='<?php echo $user_name ?>' >
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-group">
						<label class="field_title">Designation</label>
						<input type='text' name="" class='form-control designation' id='designation_1' readonly >
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label class="field_title">Department</label>
						<input type='text' name="" class='form-control department' id='department_1' readonly >
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label class="field_title">Division</label>
						<input type='text' name="" class='form-control division' id='division_1' readonly >
					</div>
				</div>
			</div>
			<!--------------Employee-------------->
				
				
				
			<div class="row">
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
							<option value="<?php echo $rowdg['division_name'] ?>" <?php if($rowdg['division_name']==$owner){echo 'selected';} ?>><?php echo $rowdg['division_name'] ?></option>
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
							<option value="<?php echo $rowdpt['dept_name'] ?>" <?php if($rowdpt['dept_name']==$dept){echo 'selected';} ?>><?php echo $rowdpt['dept_name'] ?></option>
							<?php } ?>
						</select>
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label for="id">Floor</label><span class="reqfield"> ***</span>
						<select class="form-control select2" id="" name="floor" required >
							<option value="">Select</option>
							<option value="KT-14" <?php if($floor =='KT-14'){echo 'selected';} ?>>KT-14</option>
							<option value="KT-13" <?php if($floor =='KT-13'){echo 'selected';} ?>>KT-13</option>
							<option value="KT-12" <?php if($floor =='KT-12'){echo 'selected';} ?>>KT-12</option>
							<option value="KT-07" <?php if($floor =='KT-07'){echo 'selected';} ?>>KT-07</option>
							<option value="KT-05" <?php if($floor =='KT-05'){echo 'selected';} ?>>KT-05</option>
							<option value="KT-03" <?php if($floor =='KT-03'){echo 'selected';} ?>>KT-03</option>
							<option value="KT-02" <?php if($floor =='KT-02'){echo 'selected';} ?>>KT-02</option>
						</select>
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>Location</label>
						<input type="text" autocomplete="off" name="location" id="" class="form-control" value="<?php echo $location; ?>">
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>Purchase Date</label>
						<input type="date" autocomplete="off" name="purchase_date" id="purchase_date" class="form-control datepicker" value="<?php echo $purchase_date; ?>">
					</div>
				</div>
				<div class="col-md-1">
					<div class="form-group">
						<label>Manu. Year</label>
						<input type="text" autocomplete="off" name="year_manufacture" id="" class="form-control" value="<?php echo $year_manufacture; ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Bill/Note/Req/RLP No</label>
						<input type="text" autocomplete="off" name="bill_note_req_rlp_no" id="" class="form-control" value="<?php echo $bill_note_req_rlp_no; ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Country of Origin</label>
						<input type="text" autocomplete="off" name="origin" id="" class="form-control" value="<?php echo $origin; ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<input type="hidden" name="sn_old_image" value="<?php echo $asset_image; ?>"  /> 
						<input type="file" accept="image/*" name="sn_prt_image" onchange="loadFile(event)">
						<p style="color:red;">*** Select an image file like .jpg or .png</p>
						<script>
						  var loadFile = function(event) {
							var output = document.getElementById('output');
							output.src = URL.createObjectURL(event.target.files[0]);
							output.onload = function() {
							  URL.revokeObjectURL(output.src) // free memory
							}
						  };
						  
						</script>
					</div>
				</div>
			</div>
			<div class="row" style="">
				<div class="col-md-12">
					<div class="form-group">
						<label>Assets's Description</label>
						<textarea id="remarks" name="asset_description" class="form-control" required><?php echo $asset_description; ?></textarea>
					</div>
				</div>
				<div class="col-md-12">
					<div class="form-group">
						 <input type="hidden" name="id" value="<?php echo $id; ?>">
						 <input type="submit" name="asset_update" id="submit" class="btn btn-block" style="background-color:#218A5C;color:#ffffff;" value="Save" />   
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
      error.addClass('invalid-feeconnack');
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