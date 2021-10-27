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
	
	position:absolute;
	z-index: -8;
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





@keyframes zoomIn {
  from { transform: scale(0.9); }
  to   { transform: scale(1) translate(0px,50%);}
}


/* The element to apply the animation to */
.img1{
position:relative;
    width: 100%;
    animation-delay: 1s;
    animation-name: zoomIn;
    animation-duration: 10s;
    animation-fill-mode: forwards;
}




</style>

</head>
<body>
	<div class="container-fluid">
		<div class="text-center p-5">
			<h1></h1>
		</div>

		<div class="row">
			<div class="box-items col-sm-12 col-md-6 col-xl-6">
				<h3>Vision</h3>
				<div>
					<p style="font-size:25px; color:orange; font-weight:bolder;">AT THE FOREFRONT OF MEDICAL EXCELLENCE, DEFINING THE FUTURE
						OF SRI LANKAN HEALTHCARE.</p>
				</div>
			</div>

			<div class="box-items col-sm-12 col-md-6 col-xl-6">
				<h3>Mission</h3>
				<div>
					<p style="font-size:25px; color:#570000; font-weight:bolder;">To enhance the lives of our community at large, by unfolding
						a paradigm shift in all service tiers and excelling in
						preventative and compassionate patient care.</p>
				</div>
			</div>
		</div>

		<div class="row">

			<div class="box-items col-sm-12 col-md-7 col-xl-7">
				<div class="img1">
					<img style="width:100%; height:auto;" alt=""
						src="https://www.durdans.com/wp-content/uploads/2016/02/Hospital-Low-res-copy-scaled.jpg"/>
				</div>
			</div>
			<div class="box-items col-sm-12 col-md-5 col-xl-5">
				<div>
					<p>Abc Hospital has been a trusted name in Sri Lankan
						healthcare for more than seven Decades. Since our foundation in
						1946, we have built a reputation for regional leadership in
						medical excellence and innovation, based on a simple philosophy:
						that improving the health of our community should be driven by
						passion as well as compassion. Durdans Hospital offers 260 beds –
						including 60 in our critical care department – across a range of
						spacious, modern rooms. We offer the best consultants, specialists
						and employees, all of whom are dedicated to providing exceptional
						clinical outcomes and utmost customer satisfaction. With
						cutting-edge technology, we have evolved into a world-class
						tertiary care institute. Our facilities include an ultramodern
						theatre complex comprising eight theatres and state-of-the-art
						intensive care units (ICUs).
					<p>We also offer a modern radiology unit, fully equipped
						physiotherapy unit and two catheterisation laboratories. Durdans
						Hospital is also proud to offer the industry-leading Heart Command
						Centre and Heart Station, supported by the country’s finest
						cardiologists and cardiac surgeons. With 15 beds and world-class
						facilities, the centre offers a comprehensive range of diagnostic
						tests, advanced surgical treatments, cardiac rehabilitation and
						post-operative counselling. Abc Hospital proudly employs more than
						2,000 dedicated and</p>
					<p>talented professionals across our departments, all of whom
						serve customers and their families with empathy and compassion.
						The team includes 350 specialist consultants, 15 resident
						consultants and approximately 50 senior medical officers with
						support provided by highly trained nurses, paramedics and
						non-medical staff. Abc Hospital is the first healthcare
						institution in Sri Lanka to be endorsed by Joint Commission
						International (JCI) for meeting the Gold Standard in Global
						Healthcare. In 2017, we were re-accredited with the Gold Seal of
						Approval by JCI, the world’s leading accreditation organisation,
						based in the United States of America.</p>
				</div>
			</div>

		</div>

		<div class="row">
			<div class="box-items col-sm-12 col-md-8 col-xl-8">
                  <h>Careers</h>
				<div>
					<p>At Abc Hospital, we aim to build a talent pool of friendly
						and passionate team members who are as dedicated as we are to
						providing world-class care and support services. We work hard to
						ensure our staff are as proud of us as we are of them. The
						standards we set for care and service are high. Our team members
						rise to the challenge, going above and beyond to meet and exceed
						those standards every time. We value ideas and feedback. Our teams
						and departments are organised in a way that opens up communication
						channels from the bottom up, and we empower staff across all
						levels to share their insights. We invest in our team, encouraging
						career growth and long-term personal and professional development.
						Knowing we support them, each of our team members is a proud
						ambassador for our brand, confident that working with us enhances
						their career. The Abc Hospital team ensures that everyone who
						visits us enjoys exceptional healthcare in a welcoming and
						supportive environment..</p>
				</div>
			</div>

			<div class="box-items col-sm-12 col-md-4 col-xl-4">
				<div class="img1">
					<img style="width: 100%; height: auto;" alt=""
						src="https://www.durdans.com/wp-content/uploads/2017/06/Why_work_for_us_image_1.png"></img>
				</div>
			</div>

		</div>

	</div>
</body>
<script type="text/javascript"
	src="./resource/common/js/bootstrap.min.js"></script>
</html>