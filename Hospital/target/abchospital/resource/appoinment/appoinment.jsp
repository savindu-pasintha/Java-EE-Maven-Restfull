<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%
/*
<link rel="stylesheet" href="../common/css/bootstrap.min.css">
*/
%>
<style>
.box-rox {
	width: 100%;
}

.box-row-item {
	width: 50%;
	height: auto;
	background: #e6e6e6;
	border: 2px solid none;
	position: relative;
	left: 25%;
	right: 25%;
	padding: 25px;
}

.box-row-item-1 {
	height: 50px;
}

.box-row-item-1 p {
	color: black;
	text-align: justify;
}

.box-row-item-1 h4 {
	text-align: center;
	font-weight: bolder;
	padding: 5px;
	color: white;
	font-size: 15px;
}

.box-row-item-1 h1 {
	font-size: 50px;
	font-weight: bolder;
}

@media all and (max-width: 300px) {
	.test h1 {
		font-size: 30px;
		text-align: center;
		width: 100%;
		height: auto;
	}
}

@media all and (min-width: 300px) {
	.test h1 {
		font-size: 50px;
		text-align: center;
		width: 100%;
		height: auto;
	}
}
</style>
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
           const url='http://localhost:8080/HospitalRestServer/webapi/database/appoinment/';
           async function delay(ms){new Promise(res => setTimeout(res, ms));}
           async function appoinmentFunction() {  
        	   var de = document.getElementById("doctorInput");
        	   var doctor=de.options[de.selectedIndex].value;
               var se = document.getElementById("spcInput");
               var spc=se.options[se.selectedIndex].value;
               var he = document.getElementById("hospitalInput");
               var hospital=he.options[he.selectedIndex].value;
               var datetime = document.getElementById("datetimeInput").value;
               var userId="012";
               console.log(doctor+datetime+spc+userId+hospital);
               if(userId != null && hospital != null && datetime != null && spc !== "" && doctor !=="" && datetime != ""){
                const options = {
                       method: "POST",
                       headers: new Headers({'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}),
                       mode: 'no-cors',
                       dataType: 'json'
                };

               await fetch(url+doctor+"/"+spc+"/"+hospital+"/"+datetime+"/"+userId, options)
               .then(function(response) {
            	      return response.json();
            	    })
            	    .then(function(data) {
            	      var valid = JSON.parse(data);
            	     if(valid === true){
            	    	 swal( "Appoinment" ,  "Success !" ,  "success" );
            	    	 const delay = ms => new Promise(res => setTimeout(res, ms));
            	    	  delay(5000);
            	    	 window.location.href = "http://localhost:8080/Hospital/index.jsp";
            	     }else{
            	    	 swal( "Appoinment" ,  "Failed !" ,  "error" );
            	     }
            	      
            	    })
               
               }else{
            	   swal( "Oops" ,  "Something went wrong!" ,  "error" );
               }
            }
           
            
           
</script>
</head>
<body>
	<div class="container-fluid test">
		<div class="text-center p-5">
			<h1>ABC Hospital</h1>
		</div>

		<div class="box-row">
			<div class="box-row-item">
				<div class="bg-primary box-row-item-1">
					<h4>Book an Appointment and Save upto Rs.300/=</h4>
				</div>
				<div>
					<label class="text-danger"> <%
 String validation = "Sorry, the doctor you searched is not available. Please try- Selecting an alternative Hospital :- Selecting an alternative Specialization";
 if (true) {
 	out.print(validation);
 }
 %>
					</label>

					<form>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label"></label>
							<select id="doctorInput" class="form-select  form-control"
								aria-label="Default select example">
								<option selected value="8">Any Doctor</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="mb-3">
							<select id="spcInput" class="form-select  form-control"
								aria-label="Default select example">
								<option selected>Any Specialization</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="mb-3">
							<select id="hospitalInput" class="form-select form-control"
								aria-label="Default select example">
								<option selected>Any Hospital</option>
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
							</select>
						</div>
						<div class="mb-3">
							<input type="datetime-local" class="form-control"
								id="datetimeInput" required>
						</div>

					</form>
					<div class="text-center mb-3">
						<button class="btn btn-dark "
							onclick="appoinmentFunction();">search</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<%
/*
<script type="text/javascript"
src="../common/js/bootstrap.min.js"></script>
*/
%>
</html>