<%-- 
    Document   : editLect
    Created on : Nov 23, 2017, 12:17:51 AM
    Author     : lailatul najihah
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
        
        <title>EDIT LECTURER PROFILE</title>
        
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
                                                <i class="fa fa-desktop"></i>
                                                    <span>Profile</span>
                                            </a>
                                        </li>
					<li class='has-sub'>
						<a href='#'>
							<i class="fa fa-columns"></i>
							<span>Booking</span>
						</a>
						<ul>
							<li>
								<a href='formbookingroom'>
									<span>Room</span>
								</a>
							</li>
							<li>
								<a href='formbookinglab'>
									<span>Lab</span>
								</a>
							</li>
                                                </ul>
                                        </li>
                                        <li class="highlight">
						<a href='editlect' >
							<i class="fa fa-edit"></i>
							<span>Edit Profile</span>
                                                        <span class="current-page"></span>
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
                                    Edit Lecturer Profile
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
										<!--<h5 class="blog-title">Edit Lecturer Profile</h5>-->
									</div>
                                                                        <c:if test="${not empty profileLect}">
									<div class="blog-body">
										<form action="${pageContext.request.contextPath}/editlect" id="editForm" method="post">
											<div class="form-group">
												<div class="row">
													<div class="col-md-8">
														<label class="control-label">Lecturer ID</label>
														<input type="text" class="form-control" id="Lid" name="Lid" value="${lect.staffNo}" readonly/>
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Name</label>
														<input type="text" class="form-control" id="name" name="name" value="${lect.name}"/>
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">No Phone</label>
														<input type="text" class="form-control" id="noPhone" name="noPhone" value="${lect.phonenumber}"/>
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Email</label>
														<input type="email" class="form-control" id="email" name="email" value="${lect.email}"/>
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Department</label>
														<input type="text" class="form-control" id="dept" name="dept" value="${lect.department}"/>
													</div>
                                                                                                        <div class="col-md-8">
														<label class="control-label">Room No</label>
														<input type="text" class="form-control" id="roomNo" name="roomNo" value="${lect.roomNo}"/>
													</div>
													<div class="col-md-8">
														<label class="control-label">Position</label>
														<input type="text" class="form-control" id="position" name="position" value="${lect.position}"/>
													</div>
												</div>
											</div>
											
											<button type="submit" class="btn btn-default" >Confirm</button>
                                                                                        <button type="button" class="btn btn-default"><a href="${pageContext.request.contextPath}/profileLect">Cancel</a></button>
										</form>
									</div>
                                                                        </c:if>
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
