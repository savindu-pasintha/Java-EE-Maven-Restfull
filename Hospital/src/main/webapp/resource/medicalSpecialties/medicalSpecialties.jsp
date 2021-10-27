<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./resource/common/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
.box-item {
	width: 100%;
	background: #41ead4;
	border-right:2px solid white;
	border-bottom:2px solid white;
	
	position:absolute;
	z-index: -8;
}

.box-item h4,.box-item p {
	color: black;
	text-align:center;
	
}
 .box-item p {
	color: black;
	text-align:justify;
	font-size:18px;
	
}
.box-item h4 {
	font-weight:bolder;
	padding:5px;
	font-size:25px;
}

h{
	font-weight:bolder;
	font-size:50px;
}
.box-item p:hover {
	color: black;
	text-align:justify;
	font-size:25px;
	cursor: pointer;
	
}
.box-item h4:hover {
	font-weight:bolder;
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
	
	   <div style="width:100%; height:200px;"></div>
	   
		<div class="text-center p-5">
			<h1>Medical Specialties</h1>
		</div>
	
			<div class="row">
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4 >Heart Care Center</h4>
					</div>
					<div>
						<p>Cardiology is a broad field encompassing preventive care,
							screening, advanced diagnostic tests, invasive and non-invasive
							procedures, post-operative management, cardiac rehabilitation,
							and a full range of surgical programmes.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Eye Care Specialist</h4>
					</div>
					<div>
						<p>The gift of eyesight is one we aim to restore and improve
							both in adults and children seeking the expertise of our
							specialists. Offering a range of eye care services, our team
							employs world-class diagnostic and surgical equipment, tailoring
							treatment to your individual needs.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Child Care Center</h4>
					</div>
					<div>
						<p>Dedicated to the nurturing care of children, we provide
							excellence in medical, surgical and rehabilitative care, with
							paediatricians who are sensitive to children’s needs and
							responsive to parental concerns.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Women's Health</h4>
					</div>
					<div>
						<p>ABC Hospital offers a comprehensive range of wellness
							programmes that provide diagnoses, treatment and support in the
							areas of health that most impact women’s lives.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Neurology Specialist</h4>
					</div>
					<div>
						<p>ABC Hospital is a regional leader in the complex field
							of neurology and cutting-edge scientific research. Our skilled
							neurologists have had enormous success treating patients
							diagnosed with brain trauma, epilepsy, sleep disorders, strokes,
							and neck and spine conditions.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Gastroenterology Specialist</h4>
					</div>
					<div>
						<p>Our team of highly experienced gastroenterologists is on
							hand to treat a wide range of digestive conditions. Their focus:
							achieving an accurate diagnosis the first time, so you can
							receive the right treatment as soon as possible.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>ENT Center</h4>
					</div>
					<div>
						<p>Our otorhinolaryngology specialists have a distinguished
							record of treating a wide range of ear, nose and throat (ENT)
							conditions, as well as head and neck ailments. It was specialists
							at ABC Hospital who performed Sri Lanka’s first ever
							unilateral cochlear transplant, with the assistance of regional
							experts.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Endocrinology Specialist</h4>
					</div>
					<div>
						<p>With expertise in all aspects of endocrinology, our
							dedicated team offers a total care approach to people with
							diabetes, providing specialist and personalised guidance that
							enables the individual to keep their condition under control and
							lead a normal, healthy life.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>General Surgery</h4>
					</div>
					<div>
						<p>Our experienced surgical teams bring together a culmination
							of expertise and treatment care plans across a range of
							sub-specialties. These expert surgeons have access to some of the
							region’s most advanced facilities, including a fully equipped
							laparoscopic theatre with cutting-edge video system and
							high-definition display.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Nephrology Specialist</h4>
					</div>
					<div>
						<p>We take great care of patients who suffer from problems
							involving the kidneys or complex blood pressure issues.
							Comprehensive services for nephrology outpatient and inpatient
							care as well as renal dialysis services are provided by ABC
							Hospital</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Orthopedics Center</h4>
					</div>
					<div>
						<p>ABC Hospital is on par with the best centres in the
							region when it comes to providing the latest in orthopaedic
							treatments and orthopaedic surgical advancements.</p>
					</div>
				</div>
				<div class="box-item col-sm-12 col-md-3 col-xl-3">
					<div>
						<h4>Urology Specialist</h4>
					</div>
					<div>
						<p>In a field that requires expertly honed surgical skills,
							our urology specialists are among the region’s top surgeons.
							Their abilities and experience are enhanced by the world-class
							technology and equipment available to them at ABC Hospital.</p>
					</div>
				</div>
			</div>
		
	</div>

</body>
<script type="text/javascript"
	src="./resource/common/js/bootstrap.min.js"></script>
</html>