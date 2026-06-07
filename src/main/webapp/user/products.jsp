<%@ page import="java.sql.*"%>
<%@ page import="model.User"%>

<%

User user = (User) session.getAttribute("user");

if(user == null){

response.sendRedirect("../jsp/login.jsp");

return;

}

%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Products</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

body{

	background:#f4f7fc;

	font-family:Arial;
}

/* Banner */

.banner{

	background:
	linear-gradient(
	45deg,
	#141e30,
	#243b55);

	padding:50px;

	border-radius:25px;

	color:white;

	text-align:center;

	box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

/* Product Card */

.product-card{

	border:none;

	border-radius:20px;

	overflow:hidden;

	transition:0.4s;

	background:white;
}

.product-card:hover{

	transform:translateY(-10px);

	box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

.product-img{

	height:250px;

	object-fit:cover;
}

/* Buttons */

.btn-custom{

	border-radius:30px;

	font-weight:bold;

	padding:10px 20px;
}

</style>

</head>

<body>

<jsp:include page="../user/userNavbar.jsp"></jsp:include>

<div class="container mt-5">

```
<!-- Banner -->

<div class="banner">

	<h1>

		<i class="fa fa-bag-shopping"></i>

		Travel Bag Collection

	</h1>

	<p class="mt-3">

		Buy premium quality bags with secure shopping experience.

	</p>

</div>

<!-- Search -->

<div class="row mt-5">

	<div class="col-md-6">

		<form method="get">

			<input type="text"
				name="keyword"
				class="form-control"
				placeholder="Search Bags">

		</form>

	</div>

	<div class="col-md-3">

		<form method="get">

			<select name="category"
				class="form-control">

				<option value="">
					All Categories
				</option>

				<option>
					Travel Bag
				</option>

				<option>
					Laptop Bag
				</option>

				<option>
					School Bag
				</option>

			</select>

		</form>

	</div>

</div>

<!-- Products -->

<div class="row g-4 mt-3">

<%

Connection con = null;

PreparedStatement ps = null;

ResultSet rs = null;

try{

	Class.forName("com.mysql.cj.jdbc.Driver");

	con = DriverManager.getConnection(

		"jdbc:mysql://localhost:3306/ecommerce",
		"root",
		"root"

	);

	String keyword = request.getParameter("keyword");

	String category = request.getParameter("category");

	String query = "SELECT * FROM products WHERE 1=1";

	if(keyword != null && !keyword.equals("")){

		query += " AND name LIKE '%"+keyword+"%'";
	}

	if(category != null && !category.equals("")){

		query += " AND category='"+category+"'";
	}

	ps = con.prepareStatement(query);

	rs = ps.executeQuery();

	while(rs.next()){

%>

	<div class="col-md-4">

		<div class="card product-card shadow">

			<img src="../images/<%= rs.getString("image") %>"
				class="card-img-top product-img">

			<div class="card-body text-center">

				<h3>

					<%= rs.getString("name") %>

				</h3>

				<h5 class="text-primary">

					₹ <%= rs.getDouble("price") %>

				</h5>

				<p>

					<%= rs.getString("category") %>

				</p>

				<!-- Buttons -->

				<div class="d-grid gap-2">

					<a href="../AddToCartServlet?id=<%= rs.getInt("id") %>"
						class="btn btn-primary btn-custom">

						<i class="fa fa-cart-shopping"></i>

						Add To Cart

					</a>

					<a href="../WishlistServlet?id=<%= rs.getInt("id") %>"
						class="btn btn-warning btn-custom">

						<i class="fa fa-heart"></i>

						Wishlist

					</a>

					<a href="../BuyNowServlet?id=<%= rs.getInt("id") %>"
						class="btn btn-success btn-custom">

						<i class="fa fa-bolt"></i>

						Buy Now

					</a>

				</div>

			</div>

		</div>

	</div>

<%

	}

}catch(Exception e){

	out.println(e);

}

%>

</div>


</div>

</body>
</html>
