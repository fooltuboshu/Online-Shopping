<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.eShop.dao.*,com.eShop.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Ellison Electronics</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
  
</head>
<body>


<div id="outer">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.jsp">eShop</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent-4">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active">
						<a class="nav-link waves-effect waves-light" href="userHome.jsp"> <i
							class="fas fa-envelope"></i> Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link waves-effect waves-light" href="cartDetails.jsp"> <i
							class="fas fa-gear"></i> Cart <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link waves-effect waves-light" href="./LogoutSrv"> <i
							class="fas fa-gear"></i> Log Out</a>
					</li>

				</ul>
				&nbsp &nbsp 
				<span class="navbar-text">
      				Hello there, <%= request.getParameter("userName") %>
    			</span>
			</div>
		</nav>
	</div>


<!--Company Header Starting  -->
<div class="jumbotron text-center">
  <h1>Welcome to eShop</h1>
  <p>We focus on what you need</p>
  <p  align="center" style="color:blue;font-weight:bold;margin-top:15px;margin-bottom:-15px;" id="message"></p>
</div>
<!-- Company Header Ending -->




<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
crossorigin="anonymous"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
crossorigin="anonymous"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
crossorigin="anonymous"></script>

</body>

</html>