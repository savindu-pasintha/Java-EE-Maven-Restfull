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

const delay = ms => new Promise(res => setTimeout(res, ms));

async function updateFunction(url) {  
	const options = {
                       method: "POST",
                       headers: new Headers({'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}),
                       mode: 'no-cors',
                       dataType: 'json'
                };
	           var url='http://localhost:8080/HospitalRestServer/webapi/database/user/';
               fetch(url+username+"/"+password+"/"+id, options)
               .then(function(response) {
            	      return response.json();
            	    }).then(function(data) {
            	      var valid = JSON.parse(data);
            	     if(valid === true){
            	    	 swal( "A" ,  "Success !" ,  "success" );
            	    	 delay(3000);
            	    	 window.location.href = "http://localhost:8080/HospitalRestServer/admin.jsp";
            	     }else{
            	    	 swal( "Login" ,  "Failed !" ,  "error" );
            	     } 
            	    });
               
            }
 function deleteFunction(deleteId) {  
	const options = {
                       method: "DELETE",
                       headers: new Headers({'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}),
                       mode: 'no-cors',
                       dataType: 'json'
                };
	           var url ='http://localhost:8080/HospitalRestServer/webapi/database/user/';
	           swal({
	        	   title: "Are you sure?",
	        	   text: "Once deleted, you will not be able to recover this record file!",
	        	   icon: "warning",
	        	   buttons: true,
	        	   dangerMode: true,
	        	 })
	        	 .then((willDelete) => {
	        	   if (willDelete) {
	        		    fetch(url+deleteId, options)
	                   .then(function(response) {
	                	      return response.json();
	                	    }).then(function(data) {
	                	      var valid = JSON.parse(data);
	                	     if(valid === true){
	                	    	 swal("Poof! Your record file has been deleted!", {
	          	        	       icon: "success",
	          	        	     });
	                	     } else{
	                	    	 swal("Your record file is safe!");
	                	     }
	                	    });
	        	    
	        	   } else {
	        	     swal("Your record file is safe!");
	        	   }
	        	 });
	           }

</script>


<body>
	<div id="top">
		<jsp:include page="./navigation.jsp" />
	</div>
	<div id="bottom">

		<table class="table table-primary">

			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">User_Name</th>
					<th scope="col">Password</th>
					<th scope="col">Timestamp</th>
					<th scope="col">E</th>
					<th scope="col">S</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>


				<%
				ArrayList<LoginModel> al = new ArrayList<LoginModel>();
				al = new Login().read();
				if (al.size() != 0) {
					for (int i = 0; i < al.size(); i++) {
				%>

				<tr>
					<form action="Users" method="POST" target="_blank" onsubmit="preventDefault();">
					<th scope="row"><input disabled
						value="<%out.print(al.get(i).getId());%>" />
						<input hidden name="id"
						value="<%out.print(al.get(i).getUsername());%>" />
						</th>
					
					<td><input id="<%out.print(Integer.toString(i));%>"
						name="username" value="<%out.print(al.get(i).getUsername());%>" />
					</td>
					
					<td><input id="<%out.print(Integer.toString(i) + "p");%>"
						 name="password"
						value="<%out.print(al.get(i).getPassword());%>" /></td>
					<td>
						<%
						out.print(al.get(i).getTimestamp());
						%>
					</td>
					
					<td> <i
						id="<%out.print(Integer.toString(i) + "abc");%>"
						class="fa fa-edit"></i></td>

					<td>
					<button type="submit"  id="save" name="save" value="save">
					<i onclick="save('<%out.print(Integer.toString(i));%>');"
						class="fa fa-save"></i>
						</button>
						</td>
					<td>
					<button type="submit" id="delete" name="delete" value="delete" >
					<i onclick="delet('<%out.print(Integer.toString(i));%>');"
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
</body>
</html>