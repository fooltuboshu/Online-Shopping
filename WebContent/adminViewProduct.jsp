<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.eShop.dao.*,com.eShop.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>Online Shopping Card</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	String userType = (String) session.getAttribute("usertype");

	if (userType == null || userName == null || password == null || !userType.equals("admin")) {

		response.sendRedirect("loginFirst.jsp");
	}
	%>



	<%@ include file="adminHeader.html"%>

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
						src="./ShowImage?pid=<%=product.getProdId()%>" height="50px"
						width="50px" alt="avatar">
					<div class="card-body">
						<h5 class="card-title"><%=product.getProdName()%>
							(
							<%=product.getProdId()%>
							)
						</h5>
						<p class="card-text"><%=product.getProdInfo()%></p>
						<p class="card-text">
							$<%=product.getProdPrice()%></p>
						<form method="post">
							<button class="btn btn-primary btn-sm" type="submit"
								formaction="./RemoveProductSrv?prodid=<%=product.getProdId()%>">Remove
								it</button>
							&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary btn-sm" type="submit"
								formaction="updateProduct.jsp?prodid=<%=product.getProdId()%>">Update
								it</button>
						</form>
					</div>
				</div>
			</div>

			<%
				}
			%>

		</div>
	</div>
	<!-- ENd of Product Items List -->


	<%@ include file="footer.html"%>

</body>
</html>