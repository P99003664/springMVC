<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <style>
.button {
  position: relative;
  background-color: #4CAF50;
  border: none;
  font-size: 22px;
  color: #FFFFFF;
  padding: 10px;
  width: 150px;
  text-align: center;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
}

.button:after {
  content: "";
  background: #90EE90;
  display: block;
  position: absolute;
  padding-top: 300%;
  padding-left: 350%;
  margin-left: -20px!important;
  margin-top: -120%;
  opacity: 0;
  transition: all 0.8s
}


.button:active:after {
  padding: 0;
  margin: 0;
  opacity: 1;
  transition: 0s
}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:rgb(173,216,230);">
<h1 style="text-align:center">Complaint Management System</h1><br><br>
<div>
<center>
 <a href="login" > <button class="button">Login</button> </a><br><br>
<a href="registration"><button class="button">Registration</button></a><br>

</center>
</div>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.Project{
    position: absolute;
    top: 10%;
    left: 50%;
    transform: translate(-50%,-50%);
    font-size: 2pc;
    color:White;
}
.button{
  background-color: white;
 position: relative;
  background-color: #4CAF50;
  border: 1px;
  font-size: 22px;
  color: #FFFFFF;
  padding: 10px;
  width: 150px;
  text-align: center;
  -webkit-transition-duration: 0.4s; 
  transition-duration: 0.4s;
  text-decoration: none;
  overflow: hidden;
  cursor: pointer;
}


</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
 <div>
<img src="https://external-preview.redd.it/18Mr_6gRgkf3Dk7qeOCAFRmeMeD6GhzuLP00gMTuDLo.jpg?auto=webp&s=2c910d98c5e149d674a6c654ccb5932f6c43cfbe" alt="Image" width="100%" height="30%">
<div class="Project">COMPLAINT MANAGEMENT SYSTEM
<center><br>
<a href="registration"><button class="button">Registration</button></a><br><br>
<a href="login"> <button class="button">Login</button></a><br><br><br>
</center>
</div>
</div>
</body>
</html>
