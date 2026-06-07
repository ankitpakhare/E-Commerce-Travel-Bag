<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

*{
	margin:0;
	padding:0;
	box-sizing:border-box;
}

body{
	background:#f4f7fc;
	font-family:Arial;
	overflow-x:hidden;
}

/* =========================
   DASHBOARD TITLE
========================= */

.dashboard-title{

	font-size:42px;
	font-weight:bold;
	color:#0d6efd;

	animation:fadeIn 2s ease;
}

@keyframes fadeIn{

	from{
		opacity:0;
		transform:translateY(-30px);
	}

	to{
		opacity:1;
		transform:translateY(0);
	}
}

/* =========================
   CARDS
========================= */

.card{

	border:none;
	border-radius:20px;

	transition:0.4s;

	overflow:hidden;
}

.card:hover{

	transform:translateY(-10px);

	box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

.card-body{

	padding:40px 25px;
}

.icon{

	font-size:60px;

	margin-bottom:20px;

	color:white;
}

.bg1{

	background:
	linear-gradient(
	45deg,
	#ff416c,
	#ff4b2b);
}

.bg2{

	background:
	linear-gradient(
	45deg,
	#1d976c,
	#93f9b9);
}

.bg3{

	background:
	linear-gradient(
	45deg,
	#396afc,
	#2948ff);
}

.bg4{

	background:
	linear-gradient(
	45deg,
	#834d9b,
	#d04ed6);
}

/* =========================
   BUTTONS
========================= */

.btn-custom{

	border-radius:30px;

	padding:10px 25px;

	font-weight:bold;
}

/* =========================
   WELCOME BANNER
========================= */

.welcome-box{

	background:
	linear-gradient(
	45deg,
	#141e30,
	#243b55);

	border-radius:25px;

	padding:40px;
}

/* =========================
   TABLE
========================= */

.table-responsive{

	border-radius:15px;
}

.table{

	min-width:700px;
}

/* =========================
   FOOTER
========================= */

footer{

	background:#0d1117;
}

/* =========================
   RESPONSIVE
========================= */

@media(max-width:991px){

	.dashboard-title{

		font-size:34px;
	}

	.card-body{

		padding:30px 20px;
	}

	.icon{

		font-size:50px;
	}
}

@media(max-width:768px){

	.dashboard-title{

		font-size:28px;
	}

	.welcome-box{

		padding:25px;
		text-align:center;
	}

	.card-body{

		padding:25px 15px;
	}

	.icon{

		font-size:45px;
	}

	.btn-custom{

		width:100%;
	}

	.table{

		font-size:14px;
	}

	footer h5{

		font-size:20px;
	}
}

@media(max-width:576px){

	.dashboard-title{

		font-size:24px;
	}

	.welcome-box h2{

		font-size:24px;
	}

	.welcome-box p{

		font-size:14px;
	}

	.card-body h3{

		font-size:22px;
	}

	.card-body p{

		font-size:14px;
	}

	.table{

		font-size:13px;
	}

	footer{

		padding:20px 10px;
	}
}

</style>

</head>

<body>

<jsp:include page="navbar.jsp"></jsp:include>

<%

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

int totalProducts = 0;
int totalOrders = 0;
double totalRevenue = 0;

try {

	Class.forName("com.mysql.cj.jdbc.Driver");

	con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/ecommerce",
		"root",
		"root");

	// Total Products

	ps = con.prepareStatement(
		"SELECT COUNT(*) FROM products");

	rs = ps.executeQuery();

	if(rs.next()) {

		totalProducts = rs.getInt(1);
	}

	// Total Orders

	ps = con.prepareStatement(
		"SELECT COUNT(*) FROM orders");

	rs = ps.executeQuery();

	if(rs.next()) {

		totalOrders = rs.getInt(1);
	}

	// Total Revenue

	ps = con.prepareStatement(
		"SELECT SUM(total_amount) FROM orders");

	rs = ps.executeQuery();

	if(rs.next()) {

		totalRevenue = rs.getDouble(1);
	}

} catch(Exception e) {

	out.println(e);
}

%>

<!-- Welcome Banner -->

<div class="container mt-4">

	<div class="welcome-box text-white">

		<h2>

			Welcome Admin 

		</h2>

		<p class="mb-0">

			Manage products, orders and customers easily.

		</p>

	</div>

</div>

<!-- Dashboard -->

<div class="container mt-5">

	<h1 class="text-center dashboard-title mb-5">

		Admin Dashboard

	</h1>

	<div class="row g-4">

		<!-- Add Product -->

		<div class="col-lg-4 col-md-6">

			<div class="card bg1 text-center text-white h-100">

				<div class="card-body">

					<i class="fa fa-plus-circle icon"></i>

					<h3>Add Product</h3>

					<p>

						Add new ecommerce products

					</p>

					<a href="addProduct.jsp"
						class="btn btn-light btn-custom">

						Open

					</a>

				</div>

			</div>

		</div>

		<!-- View Products -->

		<div class="col-lg-4 col-md-6">

			<div class="card bg2 text-center text-white h-100">

				<div class="card-body">

					<i class="fa fa-box icon"></i>

					<h3>View Products</h3>

					<p>

						Manage all products

					</p>

					<a href="viewProducts.jsp"
						class="btn btn-light btn-custom">

						Open

					</a>

				</div>

			</div>

		</div>

		<!-- Orders -->

		<div class="col-lg-4 col-md-12">

			<div class="card bg4 text-center text-white h-100">

				<div class="card-body">

					<i class="fa fa-truck icon"></i>

					<h3>Orders</h3>

					<p>

						View placed orders

					</p>

					<a href="orders.jsp"
						class="btn btn-light btn-custom">

						Open

					</a>

				</div>

			</div>

		</div>

	</div>

</div>

<!-- Statistics -->

<div class="container mt-5">

	<div class="row g-4">

		<!-- Products -->

		<div class="col-lg-4 col-md-6">

			<div class="card text-center shadow h-100">

				<div class="card-body">

					<i class="fa fa-box fa-3x text-primary mb-3"></i>

					<h3>

						<%= totalProducts %>

					</h3>

					<h5>

						Total Products

					</h5>

				</div>

			</div>

		</div>

		<!-- Orders -->

		<div class="col-lg-4 col-md-6">

			<div class="card text-center shadow h-100">

				<div class="card-body">

					<i class="fa fa-shopping-bag fa-3x text-danger mb-3"></i>

					<h3>

						<%= totalOrders %>

					</h3>

					<h5>

						Total Orders

					</h5>

				</div>

			</div>

		</div>

		<!-- Revenue -->

		<div class="col-lg-4 col-md-12">

			<div class="card text-center shadow h-100">

				<div class="card-body">

					<i class="fa fa-indian-rupee-sign fa-3x text-warning mb-3"></i>

					<h3>

						<%= totalRevenue %>

					</h3>

					<h5>

						Total Revenue

					</h5>

				</div>

			</div>

		</div>

	</div>

</div>

<!-- Recent Orders -->

<div class="container mt-5 mb-5">

	<div class="card shadow border-0">

		<div class="card-header bg-dark text-white">

			<h4 class="mb-0">

				Recent Orders

			</h4>

		</div>

		<div class="card-body">

			<div class="table-responsive">

				<table class="table table-hover align-middle">

					<thead class="table-dark">

						<tr>

							<th>Order ID</th>
							<th>Customer Name</th>
							<th>Mobile</th>
							<th>Address</th>
							<th>Total Amount</th>

						</tr>

					</thead>

					<tbody>

					<%

					try {

						ps = con.prepareStatement(
							"SELECT * FROM orders ORDER BY id DESC LIMIT 5");

						rs = ps.executeQuery();

						while(rs.next()) {

					%>

						<tr>

							<td>

								#<%= rs.getInt("id") %>

							</td>

							<td>

								<%= rs.getString("customer_name") %>

							</td>

							<td>

								<%= rs.getString("mobile") %>

							</td>

							<td>

								<%= rs.getString("address") %>

							</td>

							<td>

								Rs.<%= rs.getDouble("total_amount") %>

							</td>

						</tr>

					<%

						}

					} catch(Exception e) {

						out.println(e);
					}

					%>

					</tbody>

				</table>

			</div>

		</div>

	</div>

</div>

<!-- Footer -->

<footer class="text-center text-white p-4">

	<h5>

		Ecommerce Admin Panel

	</h5>

	<p class="mb-1">

		Manage your products, orders and customers efficiently.

	</p>

	<p class="mb-0">

		© 2026 All Rights Reserved | Developed By You 🚀

	</p>

</footer>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>