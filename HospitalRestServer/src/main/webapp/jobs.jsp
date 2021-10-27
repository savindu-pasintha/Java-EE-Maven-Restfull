<%@ page import="modelsPkg.*"%>
<%@ page import="databasePkg.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Appoinment</title>
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
		console.log(tagId.toString());
		document.getElementById(tagId.toString()).disabled = false;
		document.getElementById(tagId.toString() + "p").disabled = false;
		document.getElementById(tagId.toString() + "n").disabled = false;
		document.getElementById(tagId.toString() + "c").disabled = false;
		document.getElementById(tagId.toString() + "m").disabled = false;
		document.getElementById(tagId.toString() + "t").disabled = false;
		
		document.getElementById(tagId.toString() + "a").disabled = false;
		document.getElementById(tagId.toString() + "b").disabled = false;
		document.getElementById(tagId.toString() + "f").disabled = false;
		document.getElementById(tagId.toString() + "d").disabled = false;
		document.getElementById(tagId.toString() + "e").disabled = false;
	}
	function disable(tagId) {
		document.getElementById(tagId.toString()).disabled = true;
		document.getElementById(tagId.toString() + "p").disabled = true;
		document.getElementById(tagId.toString() + "n").disabled = true;
		document.getElementById(tagId.toString() + "c").disabled = true;
		document.getElementById(tagId.toString() + "m").disabled = true;
		document.getElementById(tagId.toString() + "t").disabled = true;
		
		document.getElementById(tagId.toString()  +"a").disabled = true;
		document.getElementById(tagId.toString() + "b").disabled = true;
		document.getElementById(tagId.toString() + "f").disabled = true;
		document.getElementById(tagId.toString() + "d").disabled = true;
		document.getElementById(tagId.toString() + "e").disabled = true;
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
					<th scope="col">First_Name</th>
					<th scope="col">Last</th>
					<th scope="col">Email</th>
					<th scope="col">Call</th>
					<th scope="col">City</th>
					<th scope="col">Collage</th>
					<th scope="col">Digree</th>
					<th scope="col">Medical_Id</th>
					<th scope="col">Specialyzation</th>
					<th scope="col">Timestamp</th>

					<th scope="col">E</th>
					<th scope="col">S</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<JobRegistrationModel> al = new ArrayList<JobRegistrationModel>();
				al = new JobRegistration().read();
				if (al.size() != 0) {
					for (int i = 0; i < al.size(); i++) {
				%>
				<tr>
					<td scope="row"><input disabled value="<%out.print(i);%>" />
					</td>
					<td><input id="<%out.print(Integer.toString(i));%>" disabled
						value="<%out.print(al.get(i).getId());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "p");%>"
						disabled value="<%out.print(al.get(i).getFirst());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "n");%>"
						disabled value="<%out.print(al.get(i).getLast());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "c");%>"
						disabled value="<%out.print(al.get(i).getEmail());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "m");%>"
						disabled value="<%out.print(al.get(i).getMobile());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "t");%>"
						disabled value="<%out.print(al.get(i).getCity());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "a");%>"
						disabled value="<%out.print(al.get(i).getCollage());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "b");%>"
						disabled value="<%out.print(al.get(i).getDigree());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "f");%>"
						disabled value="<%out.print(al.get(i).getMcid());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "d");%>"
						disabled value="<%out.print(al.get(i).getSpc());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "e");%>"
						disabled value="<%out.print(al.get(i).getTimestamp());%>" /></td>
					<td><i
						onclick="toggleEnable('<%out.print(Integer.toString(i));%>')"
						class="fa fa-edit"></i></td>
					<td><i onclick="save('<%out.print(Integer.toString(i));%>')"
						class="fa fa-save"></i></td>
					<td><i onclick="delet('<%out.print(Integer.toString(i));%>')"
						class="fa fa-trash"></i></td>
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