<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Denied</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>

	<%@ include file="header.html" %>
	
	<!-- <div class="product">
	
		<div class="tab" align="center" style="color:red">
			
			<h1>Login Credentials Failed, Please Login First!</h1>
		
		</div>
	</div>
	 -->
<div class="container">
		<div class="card bg-light">
			<article class="card-body mx-auto" style="max-width: 400px;">
				<h4 class="card-title mt-3 text-center">Log In Your Account</h4>
				<p class="text-center">Get started with your shopping</p>
				<p>
					<a href="" class="btn btn-block btn-twitter"> <i
						class="fab fa-twitter"></i>   Login via Twitter
					</a> <a href="" class="btn btn-block btn-facebook"><i
						class="fab fa-facebook-f"></i>   Login via Facebook</a>
				</p>
				<p class="divider-text">
					<span class="bg-light">OR</span>
				</p>
				<form action="./LoginSrv" method="post">
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="username" class="form-control"
							placeholder="Enter Email-Id" required>

					</div>
					
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="password" class="form-control"
							placeholder="password" required>
					</div>
					
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> <i class="fa fa-phone"></i>
							</span>
						</div>
						<select class="bootstrap-select" name="usertype"
							style="font-size: 16px;" required>
							<option value="customer">Customer</option>
							<option value="admin">Admin</option>
						</select>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">
							Log In</button>
					</div>
					<!-- form-group// -->
					<p class="text-center">
						Don't have an account? <a href="register.html">Sign Up</a>
					</p>
				</form>
			</article>
		</div>
		<!-- card.// -->

	</div>

	
	<%@ include file="footer.html" %>

</body>
</html>