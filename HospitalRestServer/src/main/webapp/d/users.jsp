<%@ page import="modelsPkg.LoginModel"%>
<%@ page import="databasePkg.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>USERS</title>
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
<script type="text/javascript"
	src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">

var cl = document.getElementById("0abc");
cl.addEventListener('click',toogleEnable("10"), false);

async function toggleEnable(tagId) {
	console.log(tagId.toString());
    document.getElementById(tagId.toString()).disabled = false;
    document.getElementById(tagId.toString()+"p").disabled = false;
}
function save(tagId) {
	console.log(tagId.toString());
    document.getElementById(tagId.toString()).disabled = true;
    document.getElementById(tagId.toString()+"p").disabled = true;
}
async function delet(tagId) {
	var id = getElementById(tagId.toString()).value;
	await deleteFunction(id);
    document.getElementById(tagId.toString()).disabled = true;
    document.getElementById(tagId.toString()+"p").disabled = true;
}
</script>
<body>

	<div id="top">
		<jsp:include page="./navigation.jsp" />
	</div>
	
	<%
	if (true) {
	%>
	<div id="bottom">
		<table class="table table-primary">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">User_Name</th>
					<th scope="col">Password</th>
					<th scope="col">Timestamp</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<LoginModel> al = new ArrayList<LoginModel>();
				String method = "delete";
				al = new Login().read();
				if (al.size() != 0) {
					for (int i = 0; i < al.size(); i++) {
				%>
				<tr>
					<form action="Users" method="<%out.print(method);%>"
						target="_blank" onsubmit="preventDefault();">
						<th scope="row"><input disabled
							value="<%out.print(al.get(i).getId());%>" /> <input hidden
							name="id" value="<%out.print(al.get(i).getUsername());%>" /></th>

						<td><input id="<%out.print(Integer.toString(i));%>"
							name="username" value="<%out.print(al.get(i).getUsername());%>" />
						</td>

						<td><input id="<%out.print(Integer.toString(i) + "p");%>"
							name="password" value="<%out.print(al.get(i).getPassword());%>" /></td>
						<td>
							<%
							out.print(al.get(i).getTimestamp());
							%>
						</td>

						<td>
							<button type="submit" id="delete" name="delete" value="delete">
								<i
									class="fa fa-trash"></i>
							</button>
						</td>
					</form>
				</tr>

				<%
				}
				}
				%>
			</tbody>
		</table>
	</div>
	<%
	}
	%>
</body>

</html>