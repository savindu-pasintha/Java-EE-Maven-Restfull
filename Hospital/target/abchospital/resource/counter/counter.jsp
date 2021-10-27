
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.counter-box {
	position: relative;
	;
	display: flex;
	flex-wrap: wrap;
	flex-direction: row;
	padding: 40px 0;
	margin: 0 auto;
	
}

.counter{
text-align:center;
}
</style>
<script type="text/javascript">
	var a = document.getElementById("a");
	var b = document.getElementById("b");
	var c = document.getElementById("c");

	document.getElementById("a").innerHTML = "LOADING...";
	document.getElementById("b").innerHTML = "LOADING...";
	document.getElementById("c").innerHTML = "LOADING...";
</script>
</head>
<body class="container-fluid">
	<div class="row pt-5" id="counter-box">
		<div class='col-md-4'>
			<span class="counter"
			
			 data-from="0" data-to="2051" id="a">188
			 Over Sea Projects
			 </span>
		</div>
		<div class='col-md-4'>
			<span class="counter" data-from="0" data-to="3063" id="b">
				3063
			Local Patients
				 </span>

		</div>
		<div class='col-md-4'>
			<span class="counter" data-from="0" data-to="2078" id="c">
				2078 
				Foreign Patients
				</span>

		</div>
	</div>
</body>
</html>