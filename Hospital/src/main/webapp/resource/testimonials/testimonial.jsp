<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./resource/common/css/bootstrap.min.css">

<style>
.box-items {
	width: 100%;
	background: white;
	border-right: 2px solid black;
	border-bottom: 2px solid black;
	
	
}

h4, p {
	color: black;
	text-align: center;
}

p {
	color: black;
	text-align: justify;
}

h4 {
	font-weight: bolder;
	padding: 5px;
}

p:hover {
	color: black;
	text-align: justify;
	font-size: 25px;
	cursor: pointer;
}

h4:hover {
	font-weight: bolder;
}


@media all and (max-width: 300px) {
	.test h1{
		font-size:30px;
		text-align:center;
		
		width:100%;
		height:auto;
	}
}

@media all and (min-width: 300px) {
	.test h1{
		font-size:50px;
		text-align:center;
		
		width:100%;
		height:auto;
	}
}
</style>

</head>
<body>
	<div class="container-fluid test">
		<div class="text-center p-5">
			<h1>Customer Testimonials</h1>
		</div>

		<div class="row">
			<div class="box-item col-sm-12 col-md-4 col-xl-4">
				<div>
					<h4>Mariya Coney</h4>
				</div>
				<div>
					<p>The room was very clean and sanitary equipment was also
						provided in the room. The bathrooms also were hygienic.</p>
				</div>
			</div>
			<div class="box-items col-sm-12 col-md-8 col-xl-8">
				<div>
					<h4>Powseena Pires</h4>
				</div>
				<div>
					<p>I wish to appreciate the doctor, sisters, nurses and the
						other staff for all the services and support that was provided to
						me (room 108) and my family (room 137) during our stay at the
						Intermediate Care Centre. From the 4th of June, you all gave us
						the mental strength to recover from the sickness in our minds and
						bodies due to COVID-19. Medicine, food and other needs were tended
						to with care. I look forward to other future patients receiving
						the same brave service.</p>

				</div>
			</div>
		</div>

		<div class="row">
			<div class="box-items col-sm-12 col-md-8 col-xl-8">
				<div>
					<h4>Powseena Pires</h4>
				</div>
				<div>
					<p>I wish to appreciate the doctor, sisters, nurses and the
						other staff for all the services and support that was provided to
						me (room 108) and my family (room 137) during our stay at the
						Intermediate Care Centre. From the 4th of June, you all gave us
						the mental strength to recover from the sickness in our minds and
						bodies due to COVID-19. Medicine, food and other needs were tended
						to with care. I look forward to other future patients receiving
						the same brave service.</p>
				</div>
			</div>

			<div class="box-item col-sm-12 col-md-4 col-xl-4">
				<div>
					<h4>Savindu Pasintha</h4>
				</div>
				<div>
					<p>Cleaning duties are performed properly by the staff. The
						surroundings are also very relaxing. I saw lots of animals during
						my stay. The location and weather was also very nice. The staff
						was very patient. Thank you for caring.</p>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="./resource/common/js/bootstrap.min.js"></script>
</html>