<?php session_start(); 
if(!isset($_SESSION['logged']['status'])){
    header("location: index.php");
    exit();
}
include 'connection/connect.php';
include 'helper/utilities.php';
include 'includes/asset_entry_process.php';
include 'includes/item_process.php';
include 'includes/receive_process.php';
/* 

include 'includes/transfer_process.php';
include 'includes/rlp_process.php';
include 'includes/search_process.php';
include 'includes/warehouse_search_process.php';
include 'includes/project_process.php';
include 'includes/unit_process.php';
include 'includes/package_process.php';
include 'includes/building_process.php';
include 'includes/warehouse_process.php';
include 'includes/suppliers_process.php';
include 'includes/format_process.php';
include 'includes/return_process.php';
include 'includes/payment_process.php';
include 'includes/equipment_process.php';  */
?>
<!DOCTYPE html>
	<html lang="en">
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Admin Dashboard | Top Navigation</title>
			<!-- Google Font: Source Sans Pro -->
			<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
			<!-- Font Awesome Icons -->
			<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="plugins/dropzone/min/dropzone.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">  
			<!-- overlayScrollbars -->
			<link rel="stylesheet" href="plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
			<!-- Theme style -->
			<link rel="stylesheet" href="dist/css/adminlte.min.css">
			
			  <!-- summernote -->
  <link rel="stylesheet" href="plugins/summernote/summernote-bs4.min.css">
  <!-- CodeMirror -->
  <link rel="stylesheet" href="plugins/codemirror/codemirror.css">
  <link rel="stylesheet" href="plugins/codemirror/theme/monokai.css">
  <!-- SimpleMDE -->
  <link rel="stylesheet" href="plugins/simplemde/simplemde.min.css">
  
  
  <link rel="stylesheet" href="css/style.css">
  
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
  
  <link rel="icon" type="image/x-icon" href="dist/img/logo_icon.png">
<style>
		.background {
			background:url('images/page-bg.jpg');
			position: relative;
		}
		.background::after {
			content: "";
			background: rgba(210, 235, 238, 0.5);
			position: absolute;
			top: 0;
			left: 0;
			right: 0;
			bottom: 0;
			z-index: 1;
		}
		.background > * {
			z-index: 10;
		}
		.mborder{
			background-color:#fff;
		}
		</style>
		</head>
		<body class="hold-transition sidebar-collapse layout-top-nav layout-navbar-fixed">
			<div class="wrapper">
				<!-- Navbar -->
				<nav class="main-header navbar navbar-expand-md navbar-light navbar-white">
					<div class="container-fluid">
						<a href="dashboard_top_menu.php" class="navbar-brand">
							<img src="images/logoMenu.png" alt="AdminLTE Logo" class="brand-image elevation-3" style="opacity: .8">
							<span class="brand-text font-weight-light"></span>
						</a>
						<button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse order-3" id="navbarCollapse">
							<!-- Left navbar links -->
							<?php include('partial/main_menu.php'); ?>
						</div>
						<!-- Right navbar links -->
						<ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
							<li class="nav-item dropdown">
								<a class="nav-link" data-toggle="dropdown" href="#">
									Login As : <b style="text-transform:underlined;"><?php echo $_SESSION['logged']['user_name']; ?>-[<?php echo $_SESSION['logged']['user_type']; ?>]</b> <i class="fas fa-power-off"></i>
									<span class="badge badge-warning navbar-badge"></span>
								</a>
								<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
									<a href="#" class="dropdown-item"> Profile</a>
									<a href="includes/logout.php" class="dropdown-item"> Logout</a>
								</div>
							</li>
						</ul>
					</div>
				</nav>