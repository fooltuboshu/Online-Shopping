<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.eShop.dao.*,com.eShop.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eShop Home</title>
</head>
<body>

	<%
		String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");
	String userType = (String) session.getAttribute("usertype");
	boolean isValid = false;
	if (userType == null || userName == null || password == null || !userType.equals("customer")) {
		isValid = false;
	}
	%>

	<%if (isValid) {%>
	<%@ include file="userHeader.html"%>
	<%
		} else {
	%>
	<%@ include file="header.html"%>
	<%
		}
	%>


	<div class="">
		<!-- style="background-color: #E6F9E6;" -->
		<div class="card-deck" style="">

			<%
				ProductDaoImpl prodDao = new ProductDaoImpl();

			List<ProductBean> products = new ArrayList<ProductBean>();

			products = prodDao.getAllProducts();

			for (ProductBean product : products) {

				String addToCartUrl = null;
				String buyNowUrl = null;

				if (isValid) {
					addToCartUrl = "./AddtoCart?uid=" + userName + "&pid=" + product.getProdId() + "";
					buyNowUrl = "./BuyNow?uid=" + userName + "&pid=" + product.getProdId() + "";
				} else {
					addToCartUrl = "login.html";
					buyNowUrl = "login.html";
				}
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
								formaction="<%=addToCartUrl%>">Add to Cart</button>
							&nbsp;&nbsp;&nbsp;
							<button class="btn btn-primary btn-sm" type="submit"
								formaction="<%=buyNowUrl%>">Buy Now</button>
						</form>
					</div>
				</div>
			</div>
			<%
				}
			%>

			<%@ include file="footer.html"%>
</body>
</html>