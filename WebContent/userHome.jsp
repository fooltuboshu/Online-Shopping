<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.eShop.dao.*,com.eShop.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Ellison Electronics</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<body>

	<%
		/* Checking the user credentials */
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userName == null || password == null) {

		response.sendRedirect("loginFirst.jsp");
	}
	%>

	<jsp:include page="userHeader.jsp">
		<jsp:param name="userName" value="<%=userName%>" />
	</jsp:include>


	<div class="">
		<!-- style="background-color: #E6F9E6;" -->
		<div class="card-deck" style="">

			<%
				ProductDaoImpl prodDao = new ProductDaoImpl();

			List<ProductBean> products = new ArrayList<ProductBean>();

			products = prodDao.getAllProducts();

			for (ProductBean product : products) {
			%>
			<div class="col-md-3 col-sm-6 row mt-5 justify-content-center">
				<div class="card" style="max-width: 400px; max-height: 800px">
					<!-- style="width: 3rem; height: 4rem" -->
					<img class="card-img-top" width="20" height="300"
						src="./ShowImage?pid=<%=product.getProdId()%>" alt="Product">
					<div class="card-body">
						<h5 class="card-title"><%=product.getProdName()%></h5>
						<p class="card-text"><%=product.getProdInfo()%></p>
						<p class="card-text">
							$<%=product.getProdPrice()%></p>
						<form method="post">
							<button class="btn btn-primary btn-sm" type="submit"
								formaction="./AddtoCart?uid=<%=userName%>&pid=<%=product.getProdId()%>&pqty=1">Add
								to Cart</button>
							&nbsp;&nbsp;
							<button class="btn btn-primary btn-sm" type="submit"
								formaction="./AddtoCart?uid=<%=userName%>&pid=<%=product.getProdId()%>&pqty=1">Buy
								Now</button>
						</form>
					</div>
				</div>
			</div>
			<%
				}
			%>

		</div>
	</div>


	<%@ include file="footer.html"%>

</body>
</html>