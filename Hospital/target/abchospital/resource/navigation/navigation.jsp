<%@ page import="ConnectRestServer.ConnectinServer"%>
<%@ page import="modelsPkg.*"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.GsonBuilder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<link rel="stylesheet" href="./resource/common/fonts/icomoon/style.css">
<link rel="stylesheet" href="./resource/common/css/owl.carousel.min.css">
<link rel="stylesheet" href="./resource/common/css/bootstrap.min.css">
<link rel="stylesheet" href="./resource/common/css/style.css">

<title>ABC Hospital</title>
<style>
.container-fluid {
	width: 100%;
	height: auto;
	padding: 0;
	margin: 0;
}

.row-1 {
	background-color: white;
	color: black;
	width: 100%;
	height: auto;
	position: fixed;
	z-index: 10;
	padding-left: 10px;
}

.row-2 {
	background-color: white;
	color: black;
	width: 100%;
	height: auto;
	position: fixed;
	z-index: 10;
	top: 130px;
	padding-left: 10px;
}

.row-3 {
	width: 100%;
	height: auto;
	position: fixed;
	z-index: 10;
}
</style>
</head>
<body>
	<div class="row-1"
		style="background-color: white; width: 100; height: auto;">
		<div class="row w-100">
			<h4
				style="font-size: 15px; background-color: white; color: black; text-align: left;">
				<i class="bi bi-telephone-fill"></i> : +94 76 875 5787 &nbsp <i
					class="bi bi-envelope-fill"></i> : <a href="abchospital@gmail.com ">abchospital@gmail.com
				</a> <a href="https://facebook/abchospital.com"><i
					class="bi bi-facebook"> </i> : https://facebook/abchospital.com</a>
			</h4>
		</div>
	</div>


	<div class="container-fluid row-2" style="background-color: black;">
		<div class="row">
			<marquee direction="right">
				<h3 style="color: white; font-style: normal; font-weight: bolder;">
					<a
						style="font-size: 15px; border-radius: 3px; background-color: white; color: black; right: 25px; position: relative;"
						href="#appoinment">&nbsp Book an Appointment &nbsp </a> <a
						style="font-size: 15px; border-radius: 3px; background-color: #fac748; color: black;"
						href="#packages">&nbsp Health Packages &nbsp </a> <a
						style="font-size: 15px; border-radius: 3px; background-color: none; color: white;">&nbsp
						Make a payment &nbsp </a> <a
						style="font-size: 15px; border-radius: 3px; background-color: #ff9f1c; color: black;"
						href="pay.jsp">&nbsp Pay Online &nbsp </a>
				</h3>
			</marquee>
		</div>
	</div>


	<div class="site-mobile-menu">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
				<span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<header class="site-navbar row-3" role="banner"
		style="background-color: black;">
		<div class="container">
			<div class="row align-items-center">

				<div class="col-11 col-xl-2">
					<h1 class="mb-0 site-logo">
						<a href="#home" class="text-white mb-0"> <span
							style="font-weight: 900; color: yellow;">ABC</span>
						</a>
					</h1>
				</div>

				<div class="col-12 col-md-10 d-none d-xl-block">
					<nav class="site-navigation position-relative text-right"
						role="navigation">
						<ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
							<li class="active"><a href="#home"><span>Home</span></a></li>
							<li class="has-children"><a href="#ourcenters"> <span
									style="color: white">Our Centers</span>
							</a>
								<ul class="dropdown arrow-top">
									<%
									if(false){
									String responseBodyString = new ConnectinServer().GETDataFrom("/centers");
									Gson gson = new GsonBuilder().create();
									CentersModel[] cm = gson.fromJson(responseBodyString, CentersModel[].class);
									if (cm.length != 0) {
										for (int i = 0; i < cm.length; i++) {
									%>
									<li>
									<a href="index.jsp" style="text-transform: capitalize;">
									 <% out.print(cm[i].getName()); %>
									</a></li>
									<%
									}
									}
									%>
								</ul></li>

							<li class="has-children"><a href="#doctors"><span>Doctors</span></a>
								<ul class="dropdown arrow-top">
									<%
									String responseBodyStringDm = new ConnectinServer().GETDataFrom("/doctors");
									Gson gsons = new GsonBuilder().create();
									DoctorModel[] dm = gson.fromJson(responseBodyStringDm, DoctorModel[].class);
									if (dm.length != 0) {
										for (int i = 0; i < dm.length; i++) {
									%>
									<li key="<%out.print(dm[i].getId());%>">
									<a href="index.jsp">
											<p style="font-size: 11px; font-style: bolder; color: black;text-transform: capitalize;">
												<%
												out.print(dm[i].getName());
												%>
												<br>
												<%
												out.print(dm[i].getSpc());
												%>
												<br>
												<%
												out.print(dm[i].getHospital());
												%>
											</p>
									</a></li>
									<%
									}
									}
									}
									%>
								</ul>
								</li>
							<li class="has-children"><a href="#packages"><span>Medical
										Packages</span></a>
								<ul class="dropdown arrow-top">
									<li style="width: 100%; height: auto;">
										<div style="width: 100%; height: auto;">
											<table class="table table-sm"
												style="width: 100%; height: auto;">
												<thead style="border: 1px solid white;">
													<tr>
														<th
															style="color: white; background-color: black; width: 200px; height: 50px; border-right: 1px solid white; border-bottom: 2px solid black; border-left: 2px solid black;"
															scope="col">SAREN</th>
														<th
															style="color: white; background-color: black; width: 200px; height: 50px; border-right: 1px solid white; border-bottom: 2px solid black;"
															scope="col">SURGERY</th>
														<th
															style="color: white; background-color: black; width: 200px; height: 50px; border-right: 1px solid white; border-bottom: 2px solid black;"
															scope="col">MATENITY</th>
														<th
															style="color: white; background-color: black; width: 200px; height: 50px; border-right: 1px solid black; border-bottom: 2px solid black;"
															scope="col">RADIOLOGY</th>
													</tr>
												</thead>
												<tbody>
													<%
													for (int x = 0; x < 5; x++) {
													%>
													<tr>
														<td
															style="color: black; background-color: white; width: 25%;"><p>abc</p></td>
														<td
															style="color: black; background-color: white; width: 25%;"><p>abc</p></td>
														<td
															style="color: black; background-color: white; width: 25%;"><p>abc</p></td>
														<td
															style="color: black; background-color: white; width: 25%;"><p>abc</p></td>
													</tr>
													<%
													}
													%>
												</tbody>
											</table>
										</div>
									</li>
								</ul></li>
							<li><a href="#contact"><span>Contact us</span></a></li>
							<li><a href="#about"><span>About us</span></a></li>
							<li><a href="./resource/login/login.jsp"><span
									style="color: red;">Login</span></a></li>
							<li><a href="./resource/registration/registration.jsp"><span
									style="color: red;">Registartion</span></a></li>
							<li><a href="#cart"><span><i style="color: gold;"
										class="bi bi-cart3">cart</i></span></a></li>
							<li><a href="#cart"><span><i style="color: gold;"
										class="bi bi-arrow-90deg-right">check out</i></span></a></li>
							<li><a href="#payment"><span
									style="color: gold; font-size: 15px;">payment</span></a></li>
						</ul>
					</nav>
				</div>

				<div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3"
					style="position: relative; top: 3px;">
					<a href="#" class="site-menu-toggle js-menu-toggle text-white">
						<span class="icon-menu h3"></span>
					</a>
				</div>
			</div>
		</div>
	</header>


	<script type="text/javascript"
		src="./resource/common/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="./resource/common/js/popper.min.js"></script>
	<script type="text/javascript"
		src="./resource/common/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="./resource/common/js/jquery.sticky.js"></script>
	<script type="text/javascript" src="./resource/common/js/main.js"></script>
</body>
</html>