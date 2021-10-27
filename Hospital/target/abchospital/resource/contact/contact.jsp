<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./resource/common/css/bootstrap.min.css">

<style>
.contact {
	width: 100%;
	padding-top: 50px;
	position: absolute;
	z-index: -8;
}

.contact  .box-row-item-1 {
	width: 100%;
	height: auto;
	background: #e6e6e6;
	border: 2px solid none;
	position: relative;
	padding: 5px;
}
</style>
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
           async function delay(ms){new Promise(res => setTimeout(res, ms));}
           const url='http://localhost:8080/HospitalRestServer/webapi/database/contact/';
           function sd(this) {}
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
	<div class="container-fluid contact">
		<div class="row pt-5">
			<div class="col-sm-12 col-md-4 col-xl-4">
				<div class="bg-primary box-row-item-1">
					<div class="text-center">
						<h>Contact Us</h>
					</div>
				</div>

				<label class="text-danger"> <%
 String validation = "Sorry ! Somthing is going wrong .";
 if (false) {
 	out.print(validation);
 }
 %>
				</label>

				<div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Your
							Name (required)</label> <input type="text" class="form-control"
							id="cname" required>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Your
							Email (required) </label> <input type="email" class="form-control"
							id="cemail" required>
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Telephone
							address</label> <input type="tel" class="form-control" id="ctel">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlInput1" class="form-label">Your
							Message (required)</label>
						<textarea type="text" class="form-control" id="ctarea" required
							rows="5">
						</textarea>
					</div>
					<div class="text-center mb-3">
						<button 
						onclick="sd(this);"
						style="color: white;" 
							class="bg-dark btn"
							id="contactbtn"
							>Send Message</button>
					</div>
				</div>

			</div>


			<div class="col-sm-12 col-md-8 col-xl-8">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31699.108805027652!2d79.88991583955077!3d6.72234630000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae2460ff37119d1%3A0xa3668e57219c4e61!2sAsiri-%20Laboratory!5e0!3m2!1sen!2slk!4v1632253817440!5m2!1sen!2slk"
					style="width: 100%; height: 100%;" allowfullscreen=""
					loading="lazy"> </iframe>
			</div>

		</div>
	</div>

</body>
<script type="text/javascript"
	src="./resource/common/js/bootstrap.min.js"></script>
</html>