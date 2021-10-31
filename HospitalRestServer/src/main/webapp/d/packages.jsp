<%@ page import="modelsPkg.*"%>
<%@ page import="databasePkg.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Packages</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<style>
#top {
	width: auto;
	height: auto;
	position: relative;
	top: 0%;
}

#bottom {
	width: auto;
	height: auto;
	position: relative;
	top: 120px;
}

i:hover {
	color: yellow;
}
</style>
<script type="text/javascript">
	function toggleEnable(tagId) {
		document.getElementById(tagId.toString()).disabled = false;
		document.getElementById(tagId.toString() + "p").disabled = false;
		document.getElementById(tagId.toString() + "n").disabled = false;
		document.getElementById(tagId.toString() + "c").disabled = false;
		document.getElementById(tagId.toString() + "m").disabled = false;
		document.getElementById(tagId.toString() + "t").disabled = false;
		document.getElementById(tagId.toString() + "s").disabled = false;
		document.getElementById(tagId.toString() + "h").disabled = false;
	}
	function disable(tagId) {
		document.getElementById(tagId.toString()).disabled = true;
		document.getElementById(tagId.toString() + "p").disabled = true;
		document.getElementById(tagId.toString() + "n").disabled = true;
		document.getElementById(tagId.toString() + "c").disabled = true;
		document.getElementById(tagId.toString() + "m").disabled = true;
		document.getElementById(tagId.toString() + "t").disabled = true;
		document.getElementById(tagId.toString() + "s").disabled = true;
		document.getElementById(tagId.toString() + "h").disabled = true;
	}
	function save(tagId) {
		disable(tagId)
	}
	function delet(tagId) {
		disable(tagId)
	}
</script>
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<body>
	<div id="top">
		<jsp:include page="./navigation.jsp" />
	</div>
	<div id="bottom">
		<table class="table table-primary">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Code</th>
					<th scope="col">Package_Name</th>
					<th scope="col">Category</th>
					<th scope="col">Service</th>
					<th scope="col">Description</th>
					<th scope="col">Location</th>
					<th scope="col">Call</th>
					<th scope="col">Price</th>


					
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<MedicalPackagesModel> al = new ArrayList<MedicalPackagesModel>();
				al = new MedicalPackages().read();
				if (al.size() != 0) {
					for (int i = 0; i < al.size(); i++) {
				%>
				<tr>
					<td scope="row"><input disabled value="<%out.print(i);%>" />
					</td>
					<td><input id="<%out.print(Integer.toString(i));%>" disabled
						value="<%out.print(al.get(i).getId());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "n");%>"
						disabled value="<%out.print(al.get(i).getName());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "p");%>"
						disabled value="<%out.print(al.get(i).getCategry());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "h");%>"
						disabled value="<%out.print(al.get(i).getCategry());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "c");%>"
						disabled value="<%out.print(al.get(i).getDescription());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "m");%>"
						disabled value="<%out.print(al.get(i).getLocation());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "t");%>"
						disabled value="<%out.print(al.get(i).getCall());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "s");%>"
						disabled value="<%out.print(al.get(i).getPrice());%>" /></td>
					<td><button type="submit" id="delete" name="delete" value="delete"><i class="fa fa-trash"></i></button></td>
		
				</tr>
				<%
				}
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>