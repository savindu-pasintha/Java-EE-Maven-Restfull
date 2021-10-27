<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC HOSPITAL</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');

*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}


body{
    min-height: 100vh;
    padding: 40px 0;
    background-color: #ecedef;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: 'Roboto', sans-serif;
}

.card{
    background-color: #fff;
    padding: 30px;
    max-width: 375px;
    width: 100%;
    border-radius: 20px;
    animation: big 0.5s linear;
}

.card h2{
    font-size: 27px;
    margin-bottom: 40px;
}

.inputs{
    display: flex;
    flex-direction: column;
    margin-bottom: 10px;
}

.inputs label{
    font-size: 14px;
    margin-bottom: 5px;
}

.inputs input{
    display: block;
    padding: 10px;
    font-size: 16px;
    border-radius: 7px;
    border: 1px solid #464277;
    background-color: #f4f8fb;
    outline: none;
}

.text-right{
    font-size: 16px;
    text-align: right;
    display: block;
    color: #212121;
    margin-bottom: 20px;
}

.btn-login{
    display: block;
    width: 100%;
    height: 40px;
    background-color: #212121;
    color: #fff;
    text-decoration: none;
    text-align: center;
    line-height: 40px;
    border-radius: 7px;
    margin-bottom: 20px;
    transition: 0.3s;
}

.btn-login:hover{
    transform: translateY(-5px);
    box-shadow: 2px 2px 5px rgba(0,0,0,0.4);
}

.text{
    display: block;
    text-align: center;
    color: #888;
    margin-bottom: 20px;
}

.text-long{
    color: #212121;
    margin-bottom: 20px;
}

.social-icons{
    display: flex;
    justify-content: space-between;
    align-items: center;
    flex-wrap: wrap;
}

.social-icons a{
    height: 50px;
    width: 50px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-decoration: none;
    transition: 0.3s;
}

.social-icons a:hover{
    border-radius: 50%;
    transform: translateY(-5px);
    box-shadow: 2px 2px 10px rgba(0,0,0,0.2);
}

.social-icons .google{
    background: #feecea;
    color: #9d4843;
}
.social-icons .twitter{
    background: #ecf4ff;
    color: #34a8f1;
}
.social-icons .facebook{
    background: #edf1fa;
    color: #5e83b0;
}
.social-icons .apple{
    background: #e9e9e9;
    color: #000;
}

.social-icons a i{
    font-size: 20px;
}

@keyframes big {
    from {
        transform: scale(0.7);
      }
    
      to {
        transform: scale(1);
      }
}
</style>
<script type="text/javascript" src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
           async function delay(ms){new Promise(res => setTimeout(res, ms));}
           const url='http://localhost:8080/HospitalRestServer/webapi/database/registration/';
           async function regFunction() {  
        	   var username = document.getElementById("emailInput").value;
               var password = document.getElementById("passwordInput").value;
               var cp = document.getElementById("cmpasswordInput").value;
               if(username != null && password != null && username !== "" && password !=="" && cp === password){
                const options = {
                       method: "POST",
                       headers: new Headers({'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*'}),
                       mode: 'no-cors',
                       dataType: 'json'
                };

               await fetch(url+username+"/"+password, options)
               .then(function(response) {
            	      return response.json();
            	    })
            	    .then(function(data) {
            	      var valid = JSON.parse(data);
            	      console.log(valid)
            	     if(valid === true){
            	    	 swal( "Registration" ,  "Success !" ,  "success" );
            	    	 delay(5000);
            	    	 window.location.href = "http://localhost:8080/Hospital/index.jsp";
            	     }else{
            	    	 swal( "Registartion" ,  "Failed !" ,  "error" );
            	     }
            	      
            	    });
               
               }else{
            	   swal( "Oops" ,  "Something went wrong!" ,  "error" );
               }
            }
           
            
           
</script>
</head>
<body>
<div class="card">
       <h2>Welcome To Registration</h2>
       <div class="inputs">
           <label>Email</label>
            <input type="email" required id="emailInput">
       </div>
       <div class="inputs">
           <label>Password</label>
           <input type="password" required id="passwordInput">
       </div>
       <div class="inputs">
           <label>Re - Password </label>
            <input type="password" required id="cmpasswordInput">
       </div>
       <a target="_blank" href="#" class="text-right"></a>
       <a  target="_blank" onclick="regFunction()" class="btn-login">Registration</a>
       <p class="text">OR</p>
        <a  target="_blank" href="../../index.jsp" class="btn-login">Home</a>
     
       <p class="long-text">Join Magic Pattern with your social media account</p>
       <div class="social-icons">
           <a  target="_blank" href="#" class="social-icon google">
               <i class="fa fa-google"></i>
           </a>
           <a  target="_blank" href="#" class="social-icon twitter">
               <i class="fa fa-twitter"></i>
           </a>
           <a  target="_blank" href="#" class="social-icon facebook">
               <i class="fa fa-facebook-f"></i>
           </a>
           <a  target="_blank" href="#" class="social-icon apple">
               <i class="fa fa-apple"></i>
           </a>
       </div>
   </div>
</body>
</html>