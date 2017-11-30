<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<meta name="description" content="Everest Admin Panel" />
		<meta name="keywords" content="Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap" />
		<meta name="author" content="Bootstrap Gallery" />
		<link rel="shortcut icon" href="img/favicon.ico">
		<title>Booking Lab Page</title>
		
		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.css" rel="stylesheet" media="screen">

		<!-- Animate CSS -->
		<link href="css/animate.css" rel="stylesheet" media="screen">

		<!-- Alertify CSS -->
		<link href="css/alertify/alertify.core.css" rel="stylesheet">
		<link href="css/alertify/alertify.default.css" rel="stylesheet">

		<!-- Main CSS -->
		<link href="css/main.css" rel="stylesheet" media="screen">


		<!-- Font Awesome -->
		<link href="fonts/font-awesome.min.css" rel="stylesheet">

		<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->

	</head>  

	<body>


		<!-- Header Start -->
		<header>

			<!-- Logo starts -->
			<div class="logo">
				<a href="#">
                                    <!--jangan lupa ubah logo-->
					<img src="img/logo.png" alt="logo">
					<span class="menu-toggle hidden-xs">
						<i class="fa fa-bars"></i>
					</span>
				</a>
			</div>
			<!-- Logo ends -->

			<!-- Custom Search Starts -->
			<div class="custom-search pull-left hidden-xs hidden-sm">
				<input type="text" class="search-query" placeholder="Search here">
				<i class="fa fa-search"></i>
			</div>
			<!-- Custom Search Ends -->

			<!-- Mini right nav starts -->
			<div class="pull-right">
				<ul id="mini-nav" class="clearfix">
					<li class="list-box hidden-lg hidden-md hidden-sm" id="mob-nav">
						<a href="#">
							<i class="fa fa-reorder"></i>
						</a>
					</li>
					<li class="list-box dropdown hidden-xs">
						
				</ul>
			</div>
			<!-- Mini right nav ends -->

		</header>
		<!-- Header ends -->

		<!-- Left sidebar starts -->
		<aside id="sidebar">

			
			<!-- Menu start -->
			<div id='menu'>
				<ul>
					
                                        <li>
                                            <a href='admin'>
                                                    <span>Admin Profile</span>
                                            </a>
                                        </li>
					<li class='has-sub highlight active'>
						<a href='#'>
							<i class="fa fa-columns"></i>
							<span>User</span>
						</a>
						<ul style="display: block">
							<li>
								<a href='viewlistLecturer'>
									<span>Lecturer</span>
								</a>
							</li>
							<li>
								<a href='viewlistSP'>
									<span>Space Manager</span>
								</a>
							</li>
                                                </ul>
                                        </li>
                                        <li>
						<a href='adduser'>
							<i class="fa fa-edit"></i>
							<span>Add User</span>
                                                        <span class="current-page"></span>
						</a>
					</li>
				</ul>
			</div>
			

		</aside>
		<!-- Left sidebar ends -->

		<!-- Dashboard Wrapper starts -->
		<div class="dashboard-wrapper">

			<!-- Top Bar starts -->
			<div class="top-bar">
				<div class="page-title">
					Add user
				</div>
				
			</div>
			<!-- Top Bar ends -->

			<!-- Main Container starts -->
			<div class="main-container">

				<!-- Container fluid Starts -->
				<div class="container-fluid">

					<!-- Spacer starts -->
					<div class="spacer">
						
						<!-- Row Starts -->
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="blog">
									<div class="blog-header">
										<!--<h5 class="blog-title">Booking Lab</h5>-->
									</div>
									<div class="blog-body">
                                                                            
                                                                            <%  String userID = (String)session.getAttribute("position"); %>
                                                                                <%
                                                                                    if(userID.equals("lecturer"))
                                                                                    {
                                                                                        %>
                                                                                        <h1>Form for <%= userID %></h1> 
                                                                                        <%
                                                                                    }
                                                                                     else
                                                                                      {
                                                                                        %>
                                                                                        <h1>Form for <%= userID %></h1> 
                                                                                        <%
                                                                                      }
                                                                                    %>
                                                                            
										<form action="adduser" method="post">
											<div class="form-group">
												<div class="row">
													<div class="col-md-8">
														<label class="control-label">NAME :</label>
														<input type="text" class="form-control" name="nama" value="" />
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">No Phone</label>
														<input type="text" class="form-control" name="phonenumber" value="" />
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Email</label>
														<input type="email" class="form-control" name="email" value="" />
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Position</label>
														<input type="text" class="form-control" name="position" value="" />
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">IC</label>
														<input type="text" class="form-control" name="icnumber" value=""/>
													</div>
													<div class="col-md-8">
														<label class="control-label">Staff Number</label>
														<input type="text" class="form-control" name="staffno" value=""/>
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Username</label>
														<input type="text" class="form-control" name="username" value=""/>
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Password</label>
														<input type="text" class="form-control" name="password" value=""/>
													</div>
												</div>
											</div>
											<button type="submit" class="btn btn-default" >Confirm</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						

					</div>
					<!-- Spacer ends -->

				</div>
				<!-- Container fluid ends -->

			</div>
			<!-- Main Container ends -->
			<!-- Footer starts -->
			<footer>
				Copyright Adios.inc 2017
			</footer>
			<!-- Footer ends -->
			<!-- Footer ends -->

		</div>
		<!-- Dashboard Wrapper ends -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.js"></script>

		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>

		<!-- Sparkline graphs -->
		<script src="js/sparkline.js"></script>

		<!-- jquery ScrollUp JS -->
		<script src="js/scrollup//jquery.scrollUp.js"></script>

		<!-- Notifications JS -->
		<script src="js/alertify/alertify.js"></script>
		<script src="js/alertify/alertify-custom.js"></script>

		<!-- BS Validator JS -->
		<script src="js/bsvalidator/bootstrapValidator.js"></script>

		<!-- Custom Index -->
		<script src="js/custom.js"></script>
		<script src="js/custom-forms.js"></script>
	</body>
</html>