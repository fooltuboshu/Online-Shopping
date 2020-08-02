<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
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
	<%
		/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userType == null || !userType.equals("admin")) {

		response.sendRedirect("loginFirst.jsp");

	}

	else if (userName == null || password == null) {

		response.sendRedirect("loginFirst.jsp");
	}
	%>

	<%@ include file="adminHeader.html"%>


	<div class="container">
		<div class="card bg-light">
			<article class="card-body mx-auto" style="max-width: 400px;">
			<h1 class="card-title mt-3 text-center">
				Add Product
				</h4>
				<form action="./AddProductSrv" method="post"
					enctype="multipart/form-data">
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> name </span>
						</div>
						<input name="name" class="form-control" placeholder="name"
							type="text" required>
					</div>
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> type</i>
							</span>
						</div>
						<select class="bootstrap-select" name="type"
							style="font-size: 16px;" required>
							<option value="mobile">Mobile</option>
							<option value="tv">Tv</option>
							<option value="camera">Camera</option>
							<option value="laptop">Laptop</option>
							<option value="tablet">Tablet</option>
							<option value="speaker">Speaker</option>
							<option value="other">Some Other Appliances</option>
						</select>
					</div>

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> info </i>
							</span>
						</div>
						<textarea name="info" class="form-control" placeholder="info"
							required></textarea>
					</div>
					<!-- form-group// -->

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> price</i>
							</span>
						</div>

						<input name="price" class="form-control" placeholder="price"
							type="text" required>
					</div>
					<!-- form-group// -->

					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> quantity</i>
							</span>
						</div>
						<input name="quantity" class="form-control" placeholder="quantity"
							type="number" required>
					</div>
					<!-- form-group// -->
					<div class="form-group input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"> Picture
							</span>
						</div>
						<input type="file" name="image">
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">
							Add to Stocks</button>
					</div>
					<!-- form-group// -->
					<a href="adminHome.jsp">Cancel</a>
				</form>
			</article>
		</div>
		<!-- card.// -->

	</div>

	<%@ include file="footer.html"%>
</body>
</html>