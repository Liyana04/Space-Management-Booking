<%-- 
    Document   : profileLect
    Created on : Nov 19, 2017, 11:51:44 PM
    Author     : nur liyana
--%>

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
                <script type="text/javascript" src="delete.js"></script>
		<title>LECTURER PAGE</title>
		
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
					<li class="highlight">
						<a href='profilelect'><!--before this is index.html-->
							<i class="fa fa-desktop"></i>
							<span>Profile</span>
							<span class="current-page"></span>
						</a>
					</li>
                                        
					<li class='has-sub'>
						<a href='#'>
							<i class="fa fa-flask"></i> 
							<span>Booking</span>
						</a>
						<ul>
							<li>
								<a href='formbookingroom'><!--before this invoice.html-->
									<span>Room</span><!--invoice-->
								</a>
							</li>
							<li>
								<a href='formbookinglab'><!--before profile.html-->
									<span>Lab</span><!--before is profile-->
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
					Lecturer Profile
				</div>
				
			</div>
			<!-- Top Bar ends -->

			<!-- Main Container starts -->
			<div class="main-container">

				<!-- Container fluid Starts -->
				<div class="container-fluid">
					
					<!-- Spacer Starts -->
					<div class="spacer">

						<!-- Row start -->
						<div class="row">
							<div class="col-md-12 col-sm-12 col-sx-12">
								<div class="current-profile">
									<div class="user-bg"></div>
									<div class="user-pic">&nbsp;</div>
									<div class="user-details">
										<h4 class="user-name">Dr I'am Me <i>!</i></h4>
										<h5 class="description">Hi, I'am a lecturer in UTM.</h5>
									</div>
									<div class="social-list">
										<div class="row">
											<div class="col-md-6 col-md-offset-3">
												<div class="row">
                                                                                                            <center><a href="index.html">
                                                                                                        <button class="btn btn-warning btn-rounded btn-transparent">
                                                                                                            <font color="white">LOGOUT</font></button>
                                                                                                        </a>
                                                                                                    </center>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Row end -->

						<!-- Row start -->
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-sx-12">
                                                            <!--try change to 1.lect profile with edit button
                                                                              2.booking lab & room with add&edit button-->
								<!-- Timeline starts -->
								<div class="timeline animated no-padding">
									<div class="timeline-row">
										<div class="timeline-icon">
                                                                                    <div class="danger-bg">
                                                                                        <i class="fa fa-pencil"></i>
                                                                                    </div>
										</div>
										<div class="panel timeline-content">
											<div class="panel-body">
												<h2>
													Lecturer Profile
												</h2>
												<p><!--need to call from the database,TABLE PROFILE START HERE-->
                                                                                                
                                                                                        <div class="table-responsive">
											<div id="dt_example" class="table-responsive example_alt_pagination clearfix">
												<table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">    
													<thead>
														<tr>
                                                                                                                    <th style="width:12%">Lecturer ID </th>
                                                                                                                    <td>    ABC123</td>
                                                                                                                <tr>
                                                                                                                <tr>
                                                                                                                    <th style="width:15%">Name </th>
                                                                                                                    <td>    I'am me</td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <th style="width:40%">No Phone </th>
                                                                                                                    <td>    012-34567890</td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <th style="width:15%">Email </th>
                                                                                                                    <td>    IAMme@live.utm.my</td>
                                                                                                                </tr> 
                                                                                                                <tr>
                                                                                                                    <th style="width:15%">Department </th>
                                                                                                                    <td>    Software Engineering</td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <th style="width:15%">Room No </th>
                                                                                                                    <td>    1234</td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <th style="width:15%">Position </th>
                                                                                                                    <td>    Head of Software Engineering Department</td>
                                                                                                                </tr><!--SINI HA!!!!-->
													</thead>
                                                                                        
                                                                                         
                                                                                                </table>
                                                                                            <div class="demo-btn-group center-align-text">
                                                                                                        <a href="editlect"><!--this with data-->
                                                                                                           <button type="button" class="btn btn-info btn-rounded btn-transparent">Edit</button> 
                                                                                                        </a>
                                                                                                    </div>
                                                                                              </div>
                                                                                          </div>
                                                                                        </p>
											</div>
										</div>
									</div>
									<div class="timeline-row">
										<div class="timeline-icon">
											<div class="warning-bg">
												<i class="fa fa-quote-right"></i>
											</div>
										</div>
										<div class="panel timeline-content">
											<div class="panel-body">
                                                                                            <h2>
													Room Booking
												</h2>
												<p>
                                                                                                
                    <!-- Main Container starts -->
			<!--<div class="main-container">-->

				<!-- Container fluid starts -->
				<div class="container-fluid">
					<!-- Spacer starts -->
					<div class="spacer">
						
						<!-- Row Starts -->
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="panel">
									<!--<div class="panel-heading">
										<h4 class="panel-title">Invoices</h4>
									</div>-->
									<div class="panel-body">
										<div class="table-responsive">
											<div id="dt_example" class="table-responsive example_alt_pagination clearfix">
												<table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">    
													<thead>
														<tr>
															<th style="width:9%">ID</th>
															<th style="width:10%">Start Date</th>
                                                                                                                        <th style="width:10%">End Date</th>
															<th style="width:10%">Status</th>
                                                                                                                        <th style="width:10%">Purpose</th>
                                                                                                                        <th style="width:10%">Book</th>
															<th style="width:15%">Lecturer Name</th>
														</tr>
													</thead>
													<tbody>
														<tr class="gradeX">
                                                                                                                        <td>
                                                                                                                            <input type="checkbox">
                                                                                                                                01
                                                                                                                            </a>
                                                                                                                        </td>
															<td>Nov 21 (09.00)am</td>
															<td>Nov 21 (10.00)am</td>
															<td>
																<span class="label label-info">Pending</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">BK02</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														<tr class="gradeC">
															<td>
                                                                                                                            <input type="checkbox">
                                                                                                                                02
                                                                                                                            </a>
                                                                                                                        </td>
															<td>Nov 10 (09.00)am</td>
															<td>Nov 10 (10.00)am</td>
															<td>
																<span class="label label-warning">Accepted</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">BK03</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														<tr class="gradeA">
															<td>
                                                                                                                            <input type="checkbox">
                                                                                                                                03
                                                                                                                        </td>
															<td>Nov 1 (09.00)am</td>
															<td>Nov 1 (10.00)am</td>
															<td>
																<span class="label label-warning">Accepted</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">BK06</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														<tr class="gradeC">
															<td>
                                                                                                                            <input type="checkbox">
                                                                                                                                04
                                                                                                                        </td>
															<td>Oct 10(09.00)am</td>
															<td>Oct 10 (10.00)am</td>
															<td>
																<span class="label label-warning">Accepted</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">BK04</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														<tr class="gradeA">
															<td>
                                                                                                                            <input type="checkbox">
                                                                                                                                05
                                                                                                                        </td>
															<td>Sept 29 (09.00)am</td>
															<td>Sept 29 (10.00)am</td>
															<td>
																<span class="label label-warning">Accepted</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">BK06</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														
														
													</tbody>
                                                                                                </table><!--all this table to show the latest update of the booking-->
                                                                                        
                                                                                        <div class="demo-btn-group center-align-text">
                                                                                            <a href="formbookingroom"><!--this with data-->
                                                                                               <button type="button" class="btn btn-info btn-rounded btn-transparent">Edit</button> 
                                                                                            </a>
                                                                                            <a href="formbookingroom"><!--this to create new-->
                                                                                                <button type="button" class="btn btn-danger btn-rounded btn-transparent">Add</button>
                                                                                            </a>
                                                                                            <a href="profilelect">
                                                                                                <button type="button" class="btn btn-warning btn-rounded btn-transparent">Delete</button>
                                                                                            </a>
                                                                                        </div>
                                                                                        </div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Row Ends -->

					</div>
					<!-- Spacer ends -->
				</div>
				<!-- Container fluid ends -->
                            <!-- Main Container ends -->     
                                                            </p>
                                                    </div>
                                            </div>
                                    </div>
									<div class="timeline-row">
										<!--<div class="timeline-time">
											6:00 AM<small>Aug 15</small>
										</div>-->
										<div class="timeline-icon">
											<div class="success-bg">
												<i class="fa fa-quote-right"></i>
											</div>
										</div>
										<div class="panel timeline-content">
											<div class="panel-body">
												<h2>Lab Booking</h2>
												
												<p>
													
                                                                                                    
                                                                                                    <div class="container-fluid">
					<!-- Spacer starts -->
					<div class="spacer">
						
						<!-- Row Starts -->
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="panel">
									<!--<div class="panel-heading">
										<h4 class="panel-title">Invoices</h4>
									</div>-->
									<div class="panel-body">
										<div class="table-responsive">
											<div id="dt_example" class="table-responsive example_alt_pagination clearfix">
												<table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">    
													<thead>
														<tr>
                                                                                                                        <th style="width:9%">ID</th>
															<th style="width:10%">Start Date</th>
                                                                                                                        <th style="width:10%">End Date</th>
															<th style="width:10%">Status</th>
                                                                                                                        <th style="width:10%">Purpose</th>
                                                                                                                        <th style="width:10%">Book</th>
															<th style="width:15%">Lecturer Name</th>
														</tr>
													</thead>
													<tbody>
														<tr class="gradeX">
															<td>
                                                                                                                            <input type="checkbox">
                                                                                                                                01
                                                                                                                        </td>
															<td>Oct 14 (08.00)am</td>
															<td>Oct 14 (10.00)am</td>
															<td>
																<span class="label label-warning">Accepted</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">KPU06</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														<tr class="gradeC">
															<td>
                                                                                                                            <input type="checkbox">
                                                                                                                                02
                                                                                                                        </td>
															<td>Oct 10 (08.00)am</td>
															<td>Oct 10 (10.00)am</td>
															<td>
																<span class="label label-warning">Accepted</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">KPU09</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														<tr class="gradeA">
															<td>
                                                                                                                            <input type="checkbox">
                                                                                                                                03
                                                                                                                        </td>
															<td>Sept 12 (08.00)am</td>
															<td>Sept 12 (10.00)am</td>
															<td>
																<span class="label label-warning">Accepted</span>
															</td>
															<td>
																<span class="text-primary">learning</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">KPU01</span>
															</td>
                                                                                                                        <td>
																<span class="text-primary">Dr I'am me</span>
															</td>
														</tr>
														
													</tbody>
                                                                                                </table>
                                                                                        
                                                                                        <div class="demo-btn-group center-align-text">
                                                                                            <a href="formbookinglab">
                                                                                               <button type="button" class="btn btn-info btn-rounded btn-transparent">Edit</button> 
                                                                                            </a>
                                                                                            <a href="formbookinglab">
                                                                                                <button type="button" class="btn btn-danger btn-rounded btn-transparent">Add</button>
                                                                                            </a>
                                                                                             <a href="profilelect">
                                                                                                <button type="button" class="btn btn-warning btn-rounded btn-transparent">Delete</button>
                                                                                            </a>
                                                                                        </div>
                                                                                        </div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Row Ends -->

					</div>
					<!-- Spacer ends -->
				</div>
				<!-- Container fluid ends -->
                                                                       
                                                                                                    
												</p>
											</div>
										</div>
									</div>
									
									
									
								</div>
								<!-- Timeline ends -->
							</div>
						</div>
						<!-- Row end -->

					</div>
					<!-- Spacer Ends -->

				</div>
				<!-- Container fluid ends -->

			
			<!-- Main Container ends -->

			<!-- Footer starts -->
			<footer>
				Copyright Adios.inc 2017
			</footer>
			<!-- Footer ends -->
			<!-- Footer ends -->
</div>
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

		<!-- Custom Index -->
		<script src="js/custom.js"></script>
		<script type="text/javascript">
			(function() {
				$(document).ready(function() {
					var timelineAnimate;
					timelineAnimate = function(elem) {
						return $(".timeline.animated .timeline-row").each(function(i) {
							var bottom_of_object, bottom_of_window;
							bottom_of_object = $(this).position().top + $(this).outerHeight();
							bottom_of_window = $(window).scrollTop() + $(window).height();
							if (bottom_of_window > bottom_of_object) {
								return $(this).addClass("active");
							}
						});
					};
					timelineAnimate();
					return $(window).scroll(function() {
						return timelineAnimate();
					});
				});

			}).call(this);

		</script>
	</body>
</html>
