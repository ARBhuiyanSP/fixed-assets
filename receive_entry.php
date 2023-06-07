<?php include('dashboard_top_menu_header.php'); ?>
  <!-- /.navbar -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Receive Entry Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Receive Entry Form</li>
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
				<h3 class="card-title">Receive Entry</h3>
				<div class="card-tools">
				  <button type="button" class="btn btn-tool"  onclick="window.location.href='receive_list.php';">
					<i class="fas fa-list"></i> Receive List
				  </button>
				</div>
			  </div>
          <!-- /.card-header -->
          <div class="card-body">
            <form action="" method="post" name="add_name" id="receive_entry_form" enctype="multipart/form-data" onsubmit="showFormIsProcessing('receive_entry_form');">
			<div class="row" id="div1" style="">
				<div class="col-md-2">
					<div class="form-group">
						<label>Voucher Date</label>
						<input type="text" autocomplete="off" name="mrr_date" id="mrr_date" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Voucher No</label>
						<?php if($_SESSION['logged']['user_type'] == 'whm')
							{
								$warehouse_id	=	$_SESSION['logged']['warehouse_id'];
								$sql	=	"SELECT * FROM inv_warehosueinfo WHERE `id`='$warehouse_id'";
								$result = mysqli_query($conn, $sql);
								$row=mysqli_fetch_array($result);
								$short_name = $row['short_name'];
								$mrrcode= 'MRR-'.$short_name;
							} else{
								$mrrcode= 'MRR-CW';
							}
						?>
						<input type="text" name="mrr_no" id="mrr_no" class="form-control" readonly="readonly" value="<?php echo getDefaultCategoryCodeByWarehouse('inv_receive', 'mrr_no', '03d', '001', $mrrcode) ?>">
						<input type="hidden" name="receive_no" id="receive_no" value="<?php echo getDefaultCategoryCodeByWarehouse('inv_receive', 'mrr_no', '03d', '001', $mrrcode) ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Purchase ID</label>
						<input type="text" name="purchase_id" id="purchase_id" class="form-control">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Purchase Date</label>
						<input type="text" autocomplete="off" name="Purchase_date" id="Purchase_date" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">	
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Supplier Challan No</label>
						<input type="text" name="challan_no" id="challan_no" class="form-control">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Challan Date</label>
						<input type="text" autocomplete="off" name="challan_date" id="challan_date" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Requisition No.</label>
						<input type="text" name="requisition_no" id="requisition_no" class="form-control">
						<!-- <input type="text" id="requisition_no" name="requisition_no" class="form-control" onkeypress="return event.charCode > 47 && event.charCode < 58;" pattern="[0-9]{5}" required></input> -->
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Requisition Date</label>
						<input type="text" autocomplete="off" name="requisition_date" id="requisition_date" class="form-control datepicker" value="<?php echo date('Y-m-d'); ?>">
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label for="id">Supplier</label><span class="reqfield"> ***required</span>
						<select class="form-control select2" id="supplier_name" name="supplier_name" required onchange="getItemCodeByParam(this.value, 'suppliers', 'code', 'supplier_id');">
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
						<label for="id">Supplier ID</label>
						<input type="text" name="supplier_id" id="supplier_id" class="form-control" required>
					</div>
				</div>
				<div class="col-md-2">
					<div class="form-group">
						<label>Project</label>
						<select class="form-control" id="project_id" name="project_id" readonly >
							<?php
							$projectsData = getTableDataByTableName('projects');
							;
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
						<label>Warehouse</label>
						<select class="form-control" id="warehouse_id" name="warehouse_id" >
							<?php
							$projectsData = getTableDataByTableName('inv_warehosueinfo');
							;
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
			</div>
			<div class="row" id="div1"  style="">
				<div class="table-responsive">
					<table class="table table-bordered" id="dynamic_field">
						<thead>
							<th width="25%">Material Name<span class="reqfield"> ***required</span></th>
							<th>Material ID</th>
							<th width="10%">Unit</th>
							<th>Part No</th>
							<th>Qty<span class="reqfield"> ***required</span></th>
							<th>Unit Price<span class="reqfield"> ***req</span></th>
							<th>Amount</th>
							<th></th>
						</thead>
						<tbody>
							<tr>
								<td>
									<select class="form-control select2" id="material_name" name="material_name[]" required onchange="getItemCodeByParam(this.value, 'inv_material', 'material_id_code', 'material_id0', 'qty_unit', 'part_no');">
										<option value="">Select</option>
										<?php
										$projectsData = get_product_with_category();
										if (isset($projectsData) && !empty($projectsData)) {
											foreach ($projectsData as $data) {
												?>
												<option value="<?php echo $data['id']; ?>"><?php echo $data['material_name']; ?> - <?php echo $data['part_no']; ?> - <?php echo $data['spec']; ?></option>
												<?php
											}
										}
										?>
									</select>
								</td>
								<td><input type="text" name="material_id[]" id="material_id0" class="form-control" required readonly></td>
								<td>
									<select class="form-control" id="unit0" name="unit[]" required readonly>
										<option value="">Select</option>
										<?php
										$projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
										if (isset($projectsData) && !empty($projectsData)) {
											foreach ($projectsData as $data) {
												?>
												<option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option>
												<?php
											}
										}
										?>
									</select>
								</td>
								<td><input type="text" name="part_no[]" id="part_no0" class="form-control" readonly></td>
								<td><input type="text" name="quantity[]" id="quantity0" onkeyup="sum(0)" class="form-control" required></td>
								<td><input type="text" name="unit_price[]" id="unit_price0" onkeyup="sum(0)" class="form-control" required></td>
								<td><input type="text" name="totalamount[]" id="sum0" class="form-control"></td>
								<td><button type="button" name="add" id="add" class="btn" style="background-color:#2e3192;color:#ffffff;">+</button></td>
							</tr>
						</tbody>
					</table>
					
					<table class="table table-bordered">
						<tr>
							<td width="80%" style="text-align:right;">Total Amount</td>
							<td><input type="text" class="form-control" maxlength="30" name="sub_total_amount" id="allsum" readonly /></td>
						</tr>
					</table>
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
						 <input type="submit" name="receive_submit" id="submit" class="btn btn-block" style="background-color:#007BFF;color:#ffffff;" value="Save" />   
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
    var i = 0;
    $(document).ready(function () {
        $('#add').click(function () {
            i++;
            $('#dynamic_field').append('<tr id="row' + i + '"><td><select class="form-control select2" id="material_name' + i + '" name="material_name[]' + i + '" required onchange="getAppendItemCodeByParam(' + i + ",'inv_material'," + "'material_id_code'," + "'material_id'," + "'qty_unit'" + ')"><option value="">Select</option><?php
                                                $projectsData = get_product_with_category();
                                                if (isset($projectsData) && !empty($projectsData)) {
                                                    foreach ($projectsData as $data) {
                                                        ?><option value="<?php echo $data['id']; ?>"><?php echo $data['material_name']; ?> - <?php echo $data['part_no']; ?> - <?php echo $data['spec']; ?></option><?php }
                                                }
                                                ?></select></td><td><input type="text" name="material_id[]" id="material_id' + i + '" class="form-control" required readonly></td><td><select class="form-control select2" id="unit' + i + '" name="unit[]' + i + '" required readonly onchange="getAppendItemCodeByParam(' + i + ",'inv_material'" + ",'material_id_code'" + ",'material_id''" + ",'qty_unit'" + ')"><option value="">Select</option><?php
                                                $projectsData = getTableDataByTableName('inv_item_unit', '', 'unit_name');
                                                if (isset($projectsData) && !empty($projectsData)) {
                                                    foreach ($projectsData as $data) {
                                                        ?><option value="<?php echo $data['id']; ?>"><?php echo $data['unit_name']; ?></option><?php }
                                                }
                                                ?></select></td><td><input type="text" name="part_no[]" id="part_no' + i + '" class="form-control" readonly></td><td><input type="text" name="quantity[]" id="quantity' + i + '" onkeyup="sum(' + i + ')" class="form-control" required></td><td><input type="text" name="unit_price[]" id="unit_price' + i + '" onkeyup="sum(' + i + ')" class="form-control" required></td><td><input type="text" name="totalamount[]" id="sum' + i + '" class="form-control"></td><td><button type="button" name="remove" id="' + i + '" class="btn btn_remove" style="background-color:#f26522;color:#ffffff;">X</button></td></tr>');
												$(".select2").select2();
												$('#quantity' + i + ', #unit_price' + i).change(function () {
                sum(i)
            });
        });

        $(document).on('click', '.btn_remove', function () {
            var button_id = $(this).attr("id");
            $('#row' + button_id + '').remove();
            sum_total();
        });
    });


 $(document).ready(function () {
        //this calculates values automatically 
        sum(0);
    });

    function sum(i) {
        var quantity1 = document.getElementById('quantity' + i).value;
        var unit_price1 = document.getElementById('unit_price' + i).value;
        var result = parseFloat(quantity1) * parseFloat(unit_price1);
        if (!isNaN(result)) {
            document.getElementById('sum' + i).value = result;
        }
        sum_total();
    }
    function sum_total() {
        var newTot = 0;
        for (var a = 0; a <= i; a++) {
            aVal = $('#sum' + a);
            if (aVal && aVal.length) {
                newTot += aVal[0].value ? parseFloat(aVal[0].value) : 0;
            }
        }
        document.getElementById('allsum').value = newTot.toFixed(2);
    }
  
</script>

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