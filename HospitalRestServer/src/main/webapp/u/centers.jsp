<%@ page import="modelsPkg.*"%>
<%@ page import="databasePkg.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Centers</title>
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
function toggleEnable(tagId) {
    document.getElementById(tagId.toString()).disabled = false;
    document.getElementById(tagId.toString()+"p").disabled = false;
    document.getElementById(tagId.toString()+"n").disabled = false;
}
function save(tagId) {
    document.getElementById(tagId.toString()).disabled = true;
    document.getElementById(tagId.toString()+"p").disabled = true;
    document.getElementById(tagId.toString()+"n").disabled = true;
}
function delet(this.tagId,this.Id) {
	deleteFunction(Id);
    document.getElementById(tagId.toString()).disabled = true;
    document.getElementById(tagId.toString()+"p").disabled = true;
    document.getElementById(tagId.toString()+"n").disabled = true;
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
               await fetch(url+username+"/"+password+"/"+id, options)
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
async function deleteFunction(deleteId) {  
	const options = {
                       method: "DELETE",
                       headers: new Headers({'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}),
                       mode: 'no-cors',
                       dataType: 'json'
                };
	           var url =  const url='http://localhost:8080/HospitalRestServer/webapi/database/user/';
	           swal({
	        	   title: "Are you sure?",
	        	   text: "Once deleted, you will not be able to recover this record file!",
	        	   icon: "warning",
	        	   buttons: true,
	        	   dangerMode: true,
	        	 })
	        	 .then((willDelete) => {
	        	   if (willDelete) {
	        		   
	        		   await fetch(url+deleteId, options)
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
					<th scope="col">Code</th>
					<th scope="col">Center_Name</th>
					<th scope="col">Location</th>
					<th scope="col">E</th>
					<th scope="col">S</th>
					<th scope="col">D</th>
				</tr>
			</thead>
			<tbody>
				<%
				ArrayList<CentersModel> al = new ArrayList<CentersModel>();
				al = new Centers().read();
				if (al.size() != 0) {
					for (int i = 0; i < al.size(); i++) {
				%>
				<tr>
					<th scope="row"><input disabled value="<%out.print(i);%>" />
					</th>
					<td><input id="<%out.print(Integer.toString(i));%>" disabled
						value="<%out.print(al.get(i).getId());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "n");%>"
						disabled value="<%out.print(al.get(i).getName());%>" /></td>
					<td><input id="<%out.print(Integer.toString(i) + "p");%>"
						disabled value="<%out.print(al.get(i).getLocation());%>" /></td>


					<td><i
						onclick="toggleEnable('<%out.print(Integer.toString(i));%>');"
						class="fa fa-edit"></i></td>
					<td><i onclick="save('<%out.print(Integer.toString(i));%>');"
						class="fa fa-save"></i></td>
					<td><i
						onclick="delet('<%out.print(Integer.toString(i));%>','<%out.print(al.get(i).getId());%>');"
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