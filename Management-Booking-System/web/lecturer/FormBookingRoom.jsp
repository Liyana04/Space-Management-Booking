<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<meta name="description" content="Everest Admin Panel" />
		<meta name="keywords" content="Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap" />
		<meta name="author" content="Bootstrap Gallery" />
		<link rel="shortcut icon" href="img/favicon.ico">
		<title>Booking Room Page</title>
		
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

			<!-- Current User Starts -->
			<div class="current-user">
				<div class="user-avatar animated rubberBand">
					<img src="img/user1.png" alt="Current User">
					<span class="busy"></span>
				</div>
				<div class="user-name">Welcome Dr I'am me!</div><!--take data from lecturer name table-->
				
			</div>
                    
			<!-- Current User Ends -->

			<!-- Menu start -->
			<div id='menu'>
				<ul>
					
                                        <li>
                                            <a href='profilelect'>
                                                    <span>Profile</span>
                                            </a>
                                        </li>
					<li class='has-sub highlight active'>
						<a href='#'>
							<i class="fa fa-columns"></i>
							<span>Booking</span>
						</a>
						<ul style="display: block">
							<li>
								<a href='formbookingroom' class="select">
									<span>Room</span>
								</a>
							</li>
							<li>
								<a href='formbookinglab' >
									<span>Lab</span>
								</a>
							</li>
                                                </ul>
                                        </li>
                                        <li>
						<a href='editlect'>
							<i class="fa fa-edit"></i>
							<span>Edit Profile</span>
						</a>
					</li>
                                        <li>
						<a href='index.html'>
							<i class="fa fa-sliders"></i> 
							<span>Logout</span>
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
					Booking Room
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
										<!--<h5 class="blog-title">Booking Room</h5>-->
									</div>
									<div class="blog-body">
										<form action="bookingRoom" id="bookingForm" method="post">
											<div class="form-group">
												<div class="row">
													
                                                                                                        <div class="col-md-8">
														<label class="control-label">Start Date</label>
														<input type="date" class="form-control" id="Sdate" name="Sdate" />
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Time start</label>
														<input type="time" class="form-control" id="sTime" name="Stime" />
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">End Date</label>
														<input type="date" class="form-control" id="Edate" name="Edate" />
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Time end</label>
														<input type="time" class="form-control" id="eTime" name="Etime" />
													</div>
													<div class="col-md-8 selectContainer">
														<label class="control-label">Purpose</label>
														<select class="form-control" id="purpose" name="purpose">
															<option value="tutor">tutor</option>
															<option value="learning">learning</option>
															<option value="occasion">occasion</option>
														</select>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-4 selectContainer">
														<label class="control-label">Book</label>
														<select class="form-control" id="book" name="book">
															<option value="BK01">BK01</option>
															<option value="BK02">BK02</option>
															<option value="BK03">BK03</option>
                                                                                                                        <option value="BK04">BK04</option>
                                                                                                                        <option value="BK05">BK05</option>
                                                                                                                        <option value="BK06">BK06</option>
														</select>
													</div>
													
												</div>
											</div>
											<button type="submit" class="btn btn-default" >Confirm</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<!-- Row Ends -->

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