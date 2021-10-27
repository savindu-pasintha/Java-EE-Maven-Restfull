<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<style type="text/css">
@media(max-width:1100px) {
	.checkbox-inline {
		display: none;
	}
	.checkbox-second {
		margin-top: 20px
	}

}

@media(min-width:1100px) {
	.checkbox-second {
		display: none
	}
}


/* Start My Style doctorSignUp */

.login {
	
	background-size: cover;
	/*height: 793px;*/
	margin-top: 50px;
  background-color:black;
}

.login h2 {
	color: #feffff;
	padding-top: 30px;
	line-height: 100%
}

main {
	min-width: 450px;
	margin: 35px auto
}

@media (max-width:665px) {
	main {
		max-width: 480px !important;
	}
}

@media(max-width:563px) {
	main {
		max-width: 480px !important;
	}
}

@media(max-width:529px) {
	main {
		/* width: 50%; */
		min-width: 365px;
	}
}

.form-container {
	border: 2px solid #457697;
	height: auto;
	background-color: #feffff;
	min-width: 480px;
	border-radius: 8px;
}

.form-container h1 {
	text-align: center;
	font-size: 25px;
	color: #2e79b6;
	padding: 12px 0
}

.form-container form {
	width: 86%;
	margin: 1rem auto
}

.input-lg {
	margin-bottom: 20px;
}

.checkbox-inline,
.checkbox-second {
	color: #B8B8B8;
	font-size: 16px;
	font-weight: normal;
}

.checkbox-inline a,
.checkbox-second a,
.spanSign a {
	color: #0886DD
}

.form-container span.bookType,
.spanSign {
	color: #B8B8B8;
	display: block;
	font-size: 16px;
	margin-bottom: 10px
}

.spanRadio {
	color: #606060
}

.form-container form .or-divider {
	position: relative;
	text-align: center;
	margin: 20px 198px;
	color: #dcc1c1
}

.or-divider::after,
.or-divider::before {
	content: "";
	display: block;
	height: .5rem;
	width: 44%;
	border-bottom: 1px solid #cecece;
	float: left;
	margin-top: 5px;
	text-align: center
}

.or-divider::before {
	float: right;
}

input[type=submit],
input[type=submit]:hover {
	margin-top: 40px;
	background-color: #05a0f2;
	color: #c2f3fc
}

@media(max-width:991px) {
	input[type=submit] {
		margin-top: 17px;
	}

}

/* End My Style doctorSignUp */


</style>
</head>
<body>
<!--Start: Sign up-->
	<section class="login">
		<div class="container">
			<div class="row">
				<h2 class="text-center">Doctor Registration</h2>
			</div>
			<main>
				<!-- Start: Form -->
				<artical>
					<div class="form-container">
						
						<!-- Start: Form -->
						<form action="">
							<div class="row">
								<div class="left col-md-6 col-sm-12 col-xs-12">
									<input type="text" class="form-control input-lg" id="firstName" placeholder="First Name">
									<input type="text" class="form-control input-lg" placeholder="Last name">
									<input type="tel" class="form-control input-lg" placeholder="Mobile">
									<input type="email" class="form-control input-lg" placeholder="Email">
									<input type="text" class="form-control input-lg" placeholder="City">
								</div>
								<div class="right col-md-6 col-sm-12 col-xs-12">
									<input type="text" class="form-control input-lg" id="area" placeholder="Education Institute Name">
									<input type="text" class="form-control input-lg" placeholder="Medical ID">
									<input type="password" class="form-control input-lg" placeholder="Specialization Area">
									<input type="password" class="form-control input-lg" placeholder="Digree Name">

									<label class="checkbox-inline">
				 						<input type="checkbox"  name="remember" value=""> By signing up you agree<br>to our <a href="Terms.html">terms and condition </a> 
									</label>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
										<label class="checkbox-second col-md-6 ">
				 					<input type="checkbox"  name="remember" value=""> By signing up you agree<br>to our <a href="#">terms and condition </a> 
								</label>
								</div>
								
							

							</div>
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6 text-center">
									<input type="submit" class="btn btn-primary btn-lg btn-block btn_form  col-sm-12" value="SUBMIT">
								</div>
								<div class="col-md-3"></div>
							</div>
							<br/>
							<div class="text-center or-divider">or</div>
							<div class="text-center">
								<span class="spanSign">Go Back
								    <a href="../../index.jsp">Home</a><br/>
								</span>
							</div>
						</form>
					</div>
				</artical>
			</main>
		</div>
	</section>
	<!-- End: Sign up --->
	
</body>
</html>