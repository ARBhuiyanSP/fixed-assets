<?php session_start(); 
include 'connection/connect.php';
include 'includes/login_process.php';
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>System Users | Log in </title>

		<!-- Google Font: Source Sans Pro -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
		<!-- icheck bootstrap -->
		<link rel="stylesheet" href="plugins/icheck-bootstrap/icheck-bootstrap.min.css">
		<!-- Theme style -->
		<link rel="stylesheet" href="dist/css/adminlte.min.css">
		<style>
		.background {
			background:url('dist/img/photo4.jpg');
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
		</style>
	</head>
	<body class="hold-transition login-page background" style="">
		<div class="login-box layer">
			<!-- /.login-logo -->
			<div class="card card-outline card-primary">
				<div class="card-header text-center">
					<a class="h1"><b>Fixed</b>Assets</a>
				</div>
				<div class="card-body">
					<p class="login-box-msg">Sign in to start your session</p>
					<form id="login_form" name="login_form" method="post">
						<div class="input-group mb-3">
							<input type="text" id="email" name="email" class="form-control" placeholder="Email address" autocomplete="off">
                            <?php if (isset($_SESSION['error_message']['email_empty']) && !empty($_SESSION['error_message']['email_empty'])) { ?>
                                <div class="alert alert-warning">
                                    <strong>Warning!</strong> <?php echo $_SESSION['error_message']['email_empty']; ?>
                                </div>
                                <?php
                                unset($_SESSION['error_message']['email_empty']);
                            }
                            ?>
                            <?php if (isset($_SESSION['error_message']['email_valid']) && !empty($_SESSION['error_message']['email_valid'])) { ?>
                                <div class="alert alert-warning">
                                    <strong>Warning!</strong> <?php echo $_SESSION['error_message']['email_valid']; ?>
                                </div>
                                <?php
                                unset($_SESSION['error_message']['email_valid']);
                            }
                            ?>
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-envelope"></span>
								</div>
							</div>
						</div>
						<div class="input-group mb-3">
							<input type="password" id="password" name="password" class="form-control" placeholder="Password" autocomplete="off">
                            <?php if (isset($_SESSION['error_message']['password_empty']) && !empty($_SESSION['error_message']['password_empty'])) { ?>
                                <div class="alert alert-warning">
                                    <strong>Warning!</strong> <?php echo $_SESSION['error_message']['password_empty']; ?>
                                </div>
                                <?php
                                unset($_SESSION['error_message']['password_empty']);
                            }
                            ?>
							<div class="input-group-append">
								<div class="input-group-text">
									<span class="fas fa-lock"></span>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-8">
								<div class="icheck-primary">
									<input type="checkbox" id="remember">
									<label for="remember"> Remember Me</label>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-4">
								<input type="submit" name="login_submit" value="Login" class="btn btn-primary btn-block">
							</div>
							<!-- /.col -->
						</div>
					</form>
				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<!-- /.login-box -->
		<!-- jQuery -->
		<script src="plugins/jquery/jquery.min.js"></script>
		<!-- Bootstrap 4 -->
		<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
	</body>
</html>
