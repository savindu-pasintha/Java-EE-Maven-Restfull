<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./resource/common/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
.pad {
	width: 100%;
	height: auto;
	position:relative;
	top:200px;
	
}

.pad p {
	padding: 10px;
	color: grey;
	font-size: 25px;
	text-align: justify;
	font-weight: bolder;
	color: black;
	width: 100%;
	height: auto;
}

.bgimage {
	background-image:url("./resource/common/bgimage.jpg");
	background-repeat: no;
	background-position: center;
	background-size: cover;
	width: 100%;
	height: auto;
	
}

.bgimage:hover {
	animation-delay: 1s;
    animation-name: zoomIn1;
    animation-duration: 10s;
    animation-fill-mode: forwards;
}



@keyframes zoomIn1{
  from { transform: scale(1.2); }
  to   { transform: scale(1) translate(0px, -10px);}
}




@media all and (max-width: 600px) {
	.pad h1{
		font-size:30px;
	}
}

@media all and (min-width: 600px) {
	.pad h1{
		font-size:100px;
	}
}
</style>
</head>
<body>
	<div class="container-fluid  pad bgimage">
		<div class="row">
			<div class="col-sm-12 col-md-6 col-xl-6">
				<h1 style="color:white; width:100%; font-style:italic; font-family:fantasy;
	height:auto;">Welcome
				to ABC Hospital</h1>
				<h style="color:black;font-size:35px; width:100%;
	height:auto;">Compassion,
				Innovation , Excellence</h>
				<h style="color:#ff9f1c;font-size:35px;">Dedicated to you</h>
				<p>ABC Hospital has been a trusted name in Sri Lankan healthcare
					for more than seven decades. Since our foundation in 1945, we have
					built a reputation for regional leadership in medical excellence
					and innovation, based on a simple philosophy: that improving the
					health of our community should be driven by passion as well as
					compassion.</p>
				<p style="font-size: 20px; text-align: justify;">ABC Hospital
					offers 260 beds including 60 in our critical care department ,
					across a range of spacious, modern rooms. We offer the best
					consultants, specialists and employees, all of whom are dedicated
					to providing exceptional clinical outcomes and utmost customer
					satisfaction.</p>
			</div>
		</div>


	</div>
</body>
<script type="text/javascript"
	src="./resource/common/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="./resource/common/js/popper.min.js"></script>
<script type="text/javascript"
	src="./resource/common/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="./resource/common/js/jquery.sticky.js"></script>
<script type="text/javascript" src="./resource/common/js/main.js"></script>
</html>