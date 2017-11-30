<%-- 
    Document   : smprofile
    Created on : Nov 16, 2017, 12:00:04 AM
    Author     : damia
--%>

<%@page import="java.util.Locale.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.spacemanager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Space Manager Profile</title>
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
                       <%  
                        // retrieve your list from the request, with casting 
                        ArrayList<spacemanager> list = (ArrayList<spacemanager>) request.getAttribute("spProfile");
                        for(spacemanager category : list) {
                        %>
			<!-- Current User Starts -->
			<div class="current-user">
				<div class="user-avatar animated rubberBand">
					<img src="img/user1.png" alt="Current User">
					<span class="busy"></span>
				</div>
                            <div class="user-name">Welcome <% out.println(category.getName());%></div>
				
			</div>
                    
			<!-- Current User Ends -->

			<!-- Menu start -->
			<div id='menu'>
				<ul>
					<li class="highlight">
						<a href='spacemanager/smprofile.jsp'><!--before this is index.html-->
							<i class="fa fa-desktop"></i>
							<span>Profile</span>
							<span class="current-page"></span>
						</a>
					</li>
                                        <li>
						<a href="spacemanager/editSM.jsp">
							<i class="fa fa-sliders"></i> 
							<span>Edit Profile</span>
						</a>
					</li>
					<li>
						<a href="displayViewSession"><!--nama servlet untuk display-->
							<i class="fa fa-sliders"></i> 
							<span>View Session</span>
						</a>
					</li>
                                        
                                        <li>
						<a href="#">
							<i class="fa fa-sliders"></i> 
							<span>Manage Room</span>
						</a>
                                            
                                                    <ul>
							<li>
								<a href='addroom'><!--before this invoice.html-->
									<span>Add Room</span><!--invoice-->
								</a>
							</li>
							<li>
								<a href='spacemanager/deleteRoom.jsp'><!--before profile.html-->
                                                                    <span>Delete Room</span><!--before is profile-->
								</a>
							</li>
                                                        <li>
								<a href='spacemanager/editRoom.jsp'><!--before profile.html-->
                                                                    <span>Edit Room</span><!--before is profile-->
								</a>
							</li>
							
						</ul>
					</li>
                                        
                                        <li>
						<a href="index.html">
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
					Space Manager Profile
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
										<h4 class="user-name"><% out.println(category.getName());%></i></h4>
										<h5 class="description">Hi, I'm the space manager in UTM.</h5>
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
													Space manager Profile
												</h2>
												<p><!--need to call from the database,TABLE PROFILE START HERE-->
                                                                                                
                                                                                        <div class="table-responsive">
											<div id="dt_example" class="table-responsive example_alt_pagination clearfix">
												<table class="table table-condensed table-striped table-hover table-bordered pull-left" id="data-table">    
													<thead>
														<tr>
                                                                                                                <tr> </tr>
                                                                                                                <th>Name</th>
                                                                                                                <td><% out.println(category.getName());%></td>
                                                                                                                <tr></tr>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <tr> </tr>
                                                                                                                <th>Email</th>
                                                                                                                <td><% out.println(category.getEmail());%></td>
                                                                                                                <tr></tr>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <tr> </tr>
                                                                                                                <th>Phone No</th>
                                                                                                                <td><% out.println(category.getPhonenumber());%></td>
                                                                                                                <tr></tr>
                                                                                                            </tr>
                                                                                                            <tr>
                                                                                                                <tr> </tr>
                                                                                                                <th>Username</th>
                                                                                                                <td><% out.println(category.getUsername());%> </td>
                                                                                                                <tr></tr>
                                                                                                            </tr>
                                                                                                            <br><br>
                                                                                                             <%
                                                                                            }
                                                                                            %>
													</thead>
                                                                                        
                                                                                         
                                                                                                </table>
                                                                                              </div>
                                                                                          </div>
                                                                                     
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