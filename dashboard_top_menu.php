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
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
	  
	  
	  
	  <div class="row">
							<?php 
								
								$sql	=	"select * from `assets` group by parent_id";
								$result = mysqli_query($conn, $sql);
								while($row=mysqli_fetch_array($result))
								{
							?>
							<div class="col-lg-3 col-md-3 col-sm-4 col-xs-6">
								<div class="info-box bg-danger">
									<div class="row">
										<div class="col-md-4">
										<?php $parent_id = $row['parent_id']; ?>
											<img class="img-thumbnail" src="images/icon/<?php echo $parent_id; ?>.png" />
										</div>
										<div class="col-md-8">
											<p style="text-align:right">
												<?php 
													$parent_id = $row['parent_id'];
													$numbQuery = mysqli_query($conn, "SELECT * FROM `assets` where `parent_id`='$parent_id'");
													$numbCount=mysqli_num_rows($numbQuery);
												?>
												<span> <b>Total Qty : <?php echo $numbCount; ?></b></span>
												
												<?php 
													$parent_id = $row['parent_id'];
													$valueQuery = mysqli_query($conn, "SELECT  SUM(price) FROM `assets` where `parent_id`='$parent_id'");
													$rowValue = mysqli_fetch_array($valueQuery);
													
												
													$value = $rowValue['SUM(price)'];
													//display data on web page
													
												?>
												<span> <b> || Total Value : <?php echo $value; ?></b></span>
												
												</br> 
												<?php
													$stockQuery = mysqli_query($conn, "SELECT * FROM `assets` where `parent_id`='$parent_id' AND `assign_status`!='Assigned'");
													$stockCount=mysqli_num_rows($stockQuery);
												?>
												<span> <b>Stock Qty : <?php echo $stockCount; ?></b></span>
											</p>
											<?php 
										$parent_id = $row['parent_id'];
										$sqlpn	=	"select * from `parentcategories`  where id=$parent_id";
										$resultpn = mysqli_query($conn, $sqlpn);
										$rowpn=mysqli_fetch_array($resultpn);
									?>
									<h5 style="border:1px solid gray;padding:2px;border-radius:5px;text-align:right;"><?php echo $rowpn['parent_category']; ?> <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal<?php echo $parent_id; ?>"> Details</button></h5>
										</div>
									</div>
								
									
									  <!-- Modal -->
									  <div class="modal fade" id="myModal<?php echo $parent_id;?>">
										<div class="modal-dialog modal-xl">
										  <!-- Modal content-->
										  <div class="modal-content">
											<div class="modal-header">
											  <h4 class="modal-title" Style="color:#000;"><?php echo $rowpn['parent_category']; ?>Stock Details</h4>
											  <button type="button" class="close" data-dismiss="modal">&times;</button>
											</div>
											<div class="modal-body table-responsive">
												<table id="" class="table table-bordered table-striped" Style="color:#000;">
													<thead>
														<tr>
															<th>Date Purchase</th>
															<th>Owner</th>
															<th>Category</th>
															<th>Price</th>
															<th>Brand</th>
															<th>Biil/Note/Requ/RLP No</th>
															<th>Inventory No</th>
															<th>Quality</th>
															<th>Insfaction Date</th>
														</tr>
													</thead>
													<tbody>
														<?php 
														$grand_total=0;
														$resultData = mysqli_query($conn, "SELECT * FROM `assets` WHERE `parent_id`='$parent_id'"); 
															  while ($rowData = mysqli_fetch_array($resultData)) { 
															  $grand_total += $rowData['price'];
															  ?>
														<tr>
															<td><?php echo $rowData['purchase_date']; ?></td>
															<td><?php echo $rowData['owner']; ?></td>
															<td><?php echo $rowData['category']; ?></td>
															<td><?php echo $rowData['price']; ?></td>
															<td><?php echo $rowData['brand']; ?></td>
															<td><?php echo $rowData['bill_note_req_rlp_no']; ?></td>
															<td><?php echo $rowData['inventory_sl_no']; ?></td>
															<td><?php echo $rowData['quality']; ?></td>
															<td><?php echo $rowData['inspaction_date']; ?></td>
															<!-- <td>
															<?php
															/* $product_id=$row['id']; 
															$sqlpri	= "select * from product_assign where product_id=$product_id";
															$resultpri = mysqli_query($conn, $sqlpri);
															$rowpri=mysqli_fetch_array($resultpri);
															echo $rowpri['employee_id']; */
															?>
															</td> -->
														</tr>
														
														<?php } ?>
														<tr>
															<th colspan="3"><b style='float:right'>Total Value</b></th>
															<th><?php echo $grand_total; ?></th>
															<th colspan="5"></th>
														</tr>
														
													</tbody>
												</table>
											</div>
											<div class="modal-footer">
											  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											</div>
										  </div>
										  
										</div>
									  </div>
  

								</div>
							</div>
							<?php 
								}
							?>
                        </div>
                        <!-- end row -->
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
