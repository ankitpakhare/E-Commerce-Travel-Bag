<%@ page import="model.User"%>

<%

User user = (User) session.getAttribute("user");

if(user == null){

response.sendRedirect("login.jsp");

return;


}

%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

body{

	background:
	linear-gradient(
	135deg,
	#141e30,
	#243b55);

	font-family:Arial;

	min-height:100vh;
}

/* Banner */

.banner{

	background:
	linear-gradient(
	45deg,
	#ff416c,
	#ff4b2b);

	padding:50px;

	border-radius:25px;

	color:white;

	box-shadow:0 10px 25px rgba(0,0,0,0.3);

	animation:fadeIn 1s ease;
}

@keyframes fadeIn{

	from{

		opacity:0;
		transform:translateY(30px);
	}

	to{

		opacity:1;
		transform:translateY(0);
	}
}

/* Cards */

.dashboard-card{

	border:none;

	border-radius:20px;

	transition:0.4s;

	overflow:hidden;
}

.dashboard-card:hover{

	transform:translateY(-10px);

	box-shadow:0 10px 25px rgba(0,0,0,0.4);
}

.card-body{

	padding:35px;
}

.icon{

	font-size:55px;

	margin-bottom:20px;

	color:white;
}

/* Colors */

.bg1{

	background:
	linear-gradient(
	45deg,
	#11998e,
	#38ef7d);
}

.bg2{

	background:
	linear-gradient(
	45deg,
	#396afc,
	#2948ff);
}

.bg3{

	background:
	linear-gradient(
	45deg,
	#ff416c,
	#ff4b2b);
}

.bg4{

	background:
	linear-gradient(
	45deg,
	#834d9b,
	#d04ed6);
}

/* Buttons */

.btn-custom{

	border-radius:30px;

	padding:10px 25px;

	font-weight:bold;
}

</style>

</head>

<body>

<jsp:include page="userNavbar.jsp"></jsp:include>

<div class="container mt-5">


<!-- Welcome Banner -->

<div class="banner text-center">

	<h1>

		Welcome

		<%= user.getName() %>

		

	</h1>

	<p class="mt-3">

		Buy amazing travel bags with secure shopping experience.

	</p>

</div>

<!-- Dashboard Cards -->

<div class="row g-4 mt-4">

	<!-- Products -->

	<div class="col-md-3">

		<div class="card dashboard-card bg1 text-center text-white">

			<div class="card-body">

				<i class="fa fa-bag-shopping icon"></i>

				<h3>Products</h3>

				<p>Explore latest travel bags</p>

				<a href="../products/products.jsp"
					class="btn btn-light btn-custom">

					View

				</a>

			</div>

		</div>

	</div>

	<!-- Cart -->

	<div class="col-md-3">

		<div class="card dashboard-card bg2 text-center text-white">

			<div class="card-body">

				<i class="fa fa-cart-shopping icon"></i>

				<h3>My Cart</h3>

				<p>View added cart products</p>

				<a href="userCart.jsp"
					class="btn btn-light btn-custom">

					Open

				</a>

			</div>

		</div>

	</div>

	<!-- Wishlist -->

	<div class="col-md-3">

		<div class="card dashboard-card bg3 text-center text-white">

			<div class="card-body">

				<i class="fa fa-heart icon"></i>

				<h3>Wishlist</h3>

				<p>Save favorite bags</p>

				<a href="userWishlist.jsp"
					class="btn btn-light btn-custom">

					View

				</a>

			</div>

		</div>

	</div>

	<!-- Orders -->

	<div class="col-md-3">

		<div class="card dashboard-card bg4 text-center text-white">

			<div class="card-body">

				<i class="fa fa-box icon"></i>

				<h3>Orders</h3>

				<p>Track your orders</p>

				<a href="userOrders.jsp"
					class="btn btn-light btn-custom">

					Track

				</a>

			</div>

		</div>

	</div>

</div>

<!-- Profile Section -->

<div class="card mt-5 border-0 shadow-lg">

	<div class="card-body p-5">

		<h2 class="mb-4">

			<i class="fa fa-user"></i>

			My Profile

		</h2>

		<div class="row">

			<div class="col-md-6">

				<h5>

					Name :
					<%= user.getName() %>

				</h5>

			</div>

			<div class="col-md-6">

				<h5>

					Email :
					<%= user.getEmail() %>

				</h5>

			</div>

		</div>

	</div>

</div>
```

</div>

</body>
</html>
