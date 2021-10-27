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
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<title>ABC Hospital</title>
<style type="text/css">
.chanel {
	position: fixed;
	top: 35%;
	left: 5%;
	font-size: 12px;
	z-index: 1000;
	text-align: center;
	border-radius: 50%;
	width: 100px;
	height: 100px;
	background-color: yellow;
}

.a {
	position: relative;
	top: 40px;
	color: black;
}

.chanel:hover {
	visibility: show;
}
</style>
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
           async function delay(ms){new Promise(res => setTimeout(res, ms));}
           const url='http://localhost:8080/HospitalRestServer/webapi/database/contact/';
           function sd(this){}
        	   /*
        	   var email = document.getElementById("cemail").value;
               var name = document.getElementById("cname").value;
               var tel = document.getElementById("ctel").value;
               var msg = document.getElementById("ctarea").value;
               if(name != null && email != null && tel !== "" && msg !==""){
                const options = {
                       method: "POST",
                       headers: new Headers({'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}),
                       mode: 'no-cors',
                       dataType: 'json'
                };

               await fetch(url+name+"/"+email+"/"+tel+"/"msg, options)
               .then(function(response) {
            	      return response.json();
            	    })
            	    .then(function(data) {
            	      var valid = JSON.parse(data);
            	      console.log(valid)
            	     if(valid === true){
            	    	 swal( "Contact Form" ,  "Submited !" ,  "success" );
            	    	 delay(5000);
            	    	 window.location.href = "http://localhost:8080/Hospital/index.jsp";
            	     }else{
            	    	 swal( "Contact Form" ,  "Failed !" ,  "error" );
            	     }
            	      
            	    });
               
               }else{
            	   swal( "Oops" ,  "Something went wrong!" ,  "error" );
               }
            }
           */
           
</script>
</head>
<body>

	<div id="home">
		<div>
			<a href="#home"> <i class="bi bi-arrow-up-circle-fill"
				style="position: fixed; top: 35%; left: 95%; font-size: 40px; z-index: 1000;"></i>
			</a> <a href="#footer"> <i class="bi bi-arrow-down-circle-fill"
				style="position: fixed; top: 45%; left: 95%; font-size: 40px; z-index: 1000;"></i>
			</a>

		</div>
	</div>

	<div class="chanel">
		<a href="#appoinment" class="a"> Chanel Now </a>
	</div>

	<jsp:include page="./resource/navigation/navigation.jsp" />

	<div id="welcome"></div>
	<jsp:include page="./resource/welcomeHospital/welcomeHospital.jsp" />
	<div id="medicalspecialties"></div>
	<jsp:include
		page="./resource/medicalSpecialties/medicalSpecialties.jsp" />
	<div id="testimonials"></div>
	<jsp:include page="./resource/testimonials/testimonial.jsp" />
	<%
	if (true) {
	%>
	<div id="appoinment"></div>
	<jsp:include page="./resource/appoinment/appoinment.jsp" />
	<%
	}
	%>
	<div id="about"></div>
	<jsp:include page="./resource/about/about.jsp" />
	
	<div id="contact"></div>
	<jsp:include page="./resource/contact/contact.jsp" />
	
	<jsp:include page="./resource/footer/footer.jsp" />
	<div id="footer"></div>
</body>
</html>