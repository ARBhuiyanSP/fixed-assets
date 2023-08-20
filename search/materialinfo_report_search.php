<style>
.dtext{
	text-decoration:underline;
}
</style>
<link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
	<div class="row">
		<div class="col-md-1"></div>
		<div class="col-md-10">
			<div class="row">
				<div class="col-sm-12">
					<center>
						<form name="" action="" method="GET">
							<div class="col-xs-3">
								<div class="form-group">
									<label for="id">Category</label><span class="reqfield"> ***required</span>
									<select class="form-control material_select_2" id="level_1_id_l5" name="parent_item_id" onchange="get5_2By1(this.value);" required>
										<option value="">Select</option>
										<?php
										$parentCats = getTableDataByTableName('inv_materialcategorysub', '', 'category_description');
										if (isset($parentCats) && !empty($parentCats)) {
											foreach ($parentCats as $pcat) {
												if($_GET['parent_item_id'] == $pcat['id']){
												$selected	= 'selected';
												}else{
												$selected	= '';
												}
												?>
												<option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['category_description'] ?></option>
											<?php }
										} ?>
									</select>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="form-group">
									<label for="id">Sub Category</label><span class="reqfield"> ***required</span>
									<select class="form-control js-example-basic-single material_select_2" id="level_2_id_l5" name="sub_item_id" onchange="get5_3By2(this.value);" required>
										<option value="">Select</option>
										<?php
										$parentCats = getTableDataByTableName('inv_materialcategory','','material_sub_description');
										if (isset($parentCats) && !empty($parentCats)) {
											foreach ($parentCats as $pcat) {
												if($_GET['sub_item_id'] == $pcat['id']){
												$selected	= 'selected';
												}else{
												$selected	= '';
												}
												?>
												<option value="<?php echo $pcat['id'] ?>"><?php echo $pcat['material_sub_description'] ?></option>
											<?php }
										} ?>
									</select>
								</div>
							</div>
							<div class="col-xs-2">
								<div class="form-group">
									<label for="id" style="color:#fff;">.</label>
									<input type="submit" name="submit" id="submit" class="btn btn-sm btn-block" style="background-color:#007BFF;color:#ffffff;" value="SEARCH" />   				
								</div>
							</div>
						</form>
					</center>
				</div>
			</div>
			
						<?php
							if(isset($_GET['submit'])){
								$parent_item_id			=	$_GET['parent_item_id'];
								$sub_item_id			=	$_GET['sub_item_id'];
						?>
			<div id="printableArea">
			<div class="row" id="printableArea">
				<div class="col-sm-12">	
					<center>
						<p>
							<img src="images/Saif_Engineering_Logo_165X72.png" height="50px;"/><br>
							<h5>CTED CHATTOGRAM</h5> 
							<span>Material List/Information Report</span>
							<span>
								<?php
								$dataresult =   getDataRowByTableAndId('inv_materialcategorysub', $parent_item_id);
								echo (isset($dataresult) && !empty($dataresult) ? $dataresult->category_description : '');
								?>
							</span> <i class="fas fa-arrow-right"></i> 
							<span>
								<?php
								$dataresult =   getDataRowByTableAndId('inv_materialcategory', $sub_item_id);
								echo (isset($dataresult) && !empty($dataresult) ? $dataresult->material_sub_description : '');
								?>
						</p>
					</center>
				</div>
			</div>
				<table id="" class="table table-bordered table-striped ">
					<thead>
						<tr>
							<th>SL No</th>
							<th>Material Name</th>
							<th>Part No</th>
							<th>Specification</th>
							
						</tr>
					</thead>
					<tbody>
						<?php
							$i=0;
							$sql	=	"SELECT * FROM inv_material WHERE material_id = $parent_item_id AND material_sub_id = $sub_item_id ORDER BY `material_description` ASC";
							$result = mysqli_query($conn, $sql);
							while($row=mysqli_fetch_array($result))
							{
							$i++;
						?>
						<tr>
							<td><?php echo $i; ?></td>
							<td><?php echo $row['material_description']; ?></td>
							<td><?php echo $row['part_no']; ?></td>
							<td><?php echo $row['spec']; ?></td>
						</tr>
					<?php } ?>
					</tbody>
				</table>
				<center><div class="row">
					<div class="col-sm-6"></br></br>--------------------</br>Receiver Signature</div>
					<div class="col-sm-6"></br></br>--------------------</br>Authorised Signature</div>
				</div></center></br>
				<div class="row">
					<div class="col-sm-12" style="border:1px solid gray;border-radius:5px;padding:10px;color:#f26522;">
						<center><h5>Notice***</br><span style="font-size:14px;color:#000000;">Please Check Everything Before Signature</span></h5></center>
						
					</div>
				</div>
			</div>
				
				
			</div>			
		</div>
		<center><button class="btn btn-default" onclick="printDiv('printableArea')"><i class="fa fa-print" aria-hidden="true" style="    font-size: 17px;"> Print</i></button></center>
		<div class="col-md-1"></div>
		<?php } ?>
</center>

<script>
function printDiv(divName) {
	 var printContents = document.getElementById(divName).innerHTML;
	 var originalContents = document.body.innerHTML;

	 document.body.innerHTML = printContents;

	 window.print();

	 document.body.innerHTML = originalContents;
}
</script>


