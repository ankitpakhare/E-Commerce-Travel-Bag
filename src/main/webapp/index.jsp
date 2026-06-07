
<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
content="width=device-width, initial-scale=1.0">

<title>E-Travel Bags</title>

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

html,body{

	overflow-x:hidden;
}

body{
	font-family:Arial;
	background:#f4f7fc;
}

/* Navbar */

.navbar{
	background:linear-gradient(45deg,#141e30,#247b55);
	padding:15px;
}

.navbar-brand{
	font-size:28px;
	font-weight:bold;
	color:white !important;
}

.nav-link{
	color:white !important;
	font-size:18px;
	margin-left:15px;
	transition:0.3s;
}

.nav-link:hover{
	color:#00c6ff !important;
	transform:scale(1.05);
}

/* Hero Section */

.hero{
	min-height:90vh;

	background:
	linear-gradient(
	rgba(0,0,0,0.6),
	rgba(0,0,0,0.6)),

	url('https://images.unsplash.com/photo-1748515896775-30b183516cc7?w=600&auto=format&fit=crop&q=60');

	background-size:cover;
	background-position:center;

	display:flex;
	align-items:center;
	justify-content:center;

	text-align:center;
	color:white;

	padding:100px 20px;
}

.hero h1{
	font-size:60px;
	font-weight:bold;
	animation:fadeIn 1.5s ease;
}

.hero p{
	font-size:22px;
	margin-top:15px;
	animation:fadeIn 2s ease;
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

.btn-custom{
	padding:12px 30px;
	font-size:18px;
	border-radius:30px;
	margin:10px;
	font-weight:bold;
	transition:0.4s;
}

.btn-custom:hover{
	transform:scale(1.08);
	box-shadow:0 8px 20px rgba(0,0,0,0.3);
}

/* Features */

.feature-box{
	padding:30px;
	border-radius:20px;
	background:white;
	transition:0.4s;
	box-shadow:0 5px 15px rgba(0,0,0,0.1);
	height:100%;
}

.feature-box:hover{
	transform:translateY(-10px);
	box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.feature-icon{
	font-size:50px;
	margin-bottom:15px;
	color:#0d6efd;
}

/* Product Cards */

.card{
	border-radius:20px;
	overflow:hidden;
	transition:0.4s;
}

.card:hover{

	transform:translateY(-10px);

	box-shadow:0 10px 25px rgba(0,0,0,0.2);
}

.card img{

	object-fit:cover;
}

/* Footer */

footer{
	background:#0d1117;
	color:white;
	padding:25px;
	margin-top:50px;
	text-align:center;
}

/* =========================================================
                    RESPONSIVE DESIGN
========================================================= */

@media(max-width:992px){

	.navbar-brand{

		font-size:24px;
	}

	.navbar-nav{

		text-align:center;

		padding-top:15px;
	}

	.nav-link{

		margin:10px 0;
	}

	.hero{

		padding:80px 20px;
	}

	.hero h1{

		font-size:48px;
	}

	.hero p{

		font-size:20px;
	}

	.btn-custom{

		width:100%;

		max-width:300px;
	}

	.card img{

		height:220px !important;
	}
}

@media(max-width:768px){

	.navbar{

		padding:10px;
	}

	.navbar-brand{

		font-size:22px;
	}

	.hero{

		min-height:auto;

		padding:70px 15px;
	}

	.hero h1{

		font-size:38px;

		line-height:50px;
	}

	.hero p{

		font-size:18px;
	}

	.btn-custom{

		font-size:16px;

		padding:10px 20px;
	}

	.feature-box{

		padding:25px;
	}

	.feature-icon{

		font-size:40px;
	}

	.card img{

		height:220px !important;
	}

	footer h3{

		font-size:24px;
	}
}

@media(max-width:576px){

	.hero h1{

		font-size:30px;

		line-height:40px;
	}

	.hero p{

		font-size:15px;

		line-height:28px;
	}

	.btn-custom{

		width:100%;

		font-size:15px;
	}

	.feature-box{

		padding:20px;
	}

	.feature-box h3{

		font-size:22px;
	}

	.feature-box p{

		font-size:15px;
	}

	.card img{

		height:200px !important;
	}

	footer{

		padding:20px 10px;
	}

	footer p{

		font-size:13px;
	}
}

@media(max-width:400px){

	.hero h1{

		font-size:24px;
	}

	.hero p{

		font-size:14px;
	}
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg">

<div class="container">

	<a class="navbar-brand" href="#">

		<i class="fa fa-cart-shopping"></i>

		E-Travel Bags

	</a>

	<button class="navbar-toggler bg-light"
		type="button"
		data-bs-toggle="collapse"
		data-bs-target="#navbarNav">

		<span class="navbar-toggler-icon"></span>

	</button>

	<div class="collapse navbar-collapse"
		id="navbarNav">

		<ul class="navbar-nav ms-auto">

			<li class="nav-item">

				<a class="nav-link"
					href="jsp/login.jsp">

					User Login

				</a>

			</li>

			<li class="nav-item">

				<a class="nav-link"
					href="jsp/register.jsp">

					Register

				</a>

			</li>

			<li class="nav-item">

				<a class="nav-link"
					href="jsp/adminLogin.jsp">

					Admin Login

				</a>

			</li>

		</ul>

	</div>

</div>

</nav>

<!-- Hero Section -->

<section class="hero">

<div>

	<h1>
		Welcome To E-Travel Bags
	</h1>

	<p>
		Buy amazing products with secure checkout
		and fast delivery 🚀
	</p>

	<div class="mt-4">

		<a href="jsp/login.jsp"
			class="btn btn-primary btn-custom">

			<i class="fa fa-user"></i>

			Login

		</a>

		<a href="jsp/register.jsp"
			class="btn btn-success btn-custom">

			<i class="fa fa-user-plus"></i>

			Register

		</a>

		<a href="jsp/adminLogin.jsp"
			class="btn btn-danger btn-custom">

			<i class="fa fa-lock"></i>

			Admin Login

		</a>

	</div>

</div>

</section>

<!-- Features -->

<div class="container mt-5">

<div class="row g-4">

	<div class="col-lg-4 col-md-6">

		<div class="feature-box text-center">

			<i class="fa fa-box feature-icon"></i>

			<h3>Best Products</h3>

			<p>
				Get high quality products
				at affordable prices.
			</p>

		</div>

	</div>

	<div class="col-lg-4 col-md-6">

		<div class="feature-box text-center">

			<i class="fa fa-truck feature-icon"></i>

			<h3>Fast Delivery</h3>

			<p>
				Quick and secure delivery
				at your doorstep.
			</p>

		</div>

	</div>

	<div class="col-lg-4 col-md-12">

		<div class="feature-box text-center">

			<i class="fa fa-credit-card feature-icon"></i>

			<h3>Secure Payment</h3>

			<p>
				100% secure payment gateway
				for online shopping.
			</p>

		</div>

	</div>

</div>

</div>

<!-- About Section -->

<div class="container mt-5">

<div class="row align-items-center g-4">

	<div class="col-lg-6">

		<img
src="https://media.istockphoto.com/id/1271796113/photo/women-is-holding-handbag-near-luxury-car.webp?a=1&b=1&s=612x612&w=0&k=20&c=x8oxK-1ByIUdks4SIndcB49L7JXIHgwsenGpEt7B1tk="
			class="img-fluid rounded-4 shadow">

	</div>

	<div class="col-lg-6 text-center text-lg-start">

		<h2 class="fw-bold mb-4">
			About Our Store
		</h2>

		<p class="fs-5 text-secondary">

			We provide high quality travel bags with fast delivery and secure payment system.

			<br><br>

			Our ecommerce platform helps customers to shop stylish and durable travel bags easily from anywhere.

		</p>

		<a href="jsp/login.jsp"
			class="btn btn-primary btn-custom">

			Learn More

		</a>

	</div>

</div>

</div>

<!-- Statistics -->

<div class="container mt-5">

<div class="row g-4 text-center">

	<div class="col-lg-3 col-md-6">

		<div class="feature-box">

			<h1 class="text-primary">500+</h1>

			<h5>Products</h5>

		</div>

	</div>

	<div class="col-lg-3 col-md-6">

		<div class="feature-box">

			<h1 class="text-success">1200+</h1>

			<h5>Customers</h5>

		</div>

	</div>

	<div class="col-lg-3 col-md-6">

		<div class="feature-box">

			<h1 class="text-danger">850+</h1>

			<h5>Orders</h5>

		</div>

	</div>

	<div class="col-lg-3 col-md-6">

		<div class="feature-box">

			<h1 class="text-warning">99%</h1>

			<h5>Satisfaction</h5>

		</div>

	</div>

</div>

</div>

<!-- Featured Products -->

<div class="container mt-5">

<h2 class="text-center fw-bold mb-5">
	Featured Products
</h2>

<div class="row g-4">

	<div class="col-lg-4 col-md-6">

		<div class="card shadow border-0">

			<img src="images/bag3.jpg"
				class="card-img-top"
				height="250">

			<div class="card-body text-center">

				<h4>Trolly Bag</h4>

				<p>Best quality travel bag</p>

				<h5 class="text-success">₹1999</h5>

			</div>

		</div>

	</div>

	<div class="col-lg-4 col-md-6">

		<div class="card shadow border-0">

			<img src="images/bag5.jpg"
				class="card-img-top"
				height="250">

			<div class="card-body text-center">

				<h4>Travel Bag</h4>

				<p>Premium stylish bag</p>

				<h5 class="text-success">₹14999</h5>

			</div>

		</div>

	</div>

	<div class="col-lg-4 col-md-12">

		<div class="card shadow border-0">

			<img src="images/bag1.jpg"
				class="card-img-top"
				height="250">

			<div class="card-body text-center">

				<h4>American Tourist Bag</h4>

				<p>Luxury travelling backpack</p>

				<h5 class="text-success">₹799</h5>

			</div>

		</div>

	</div>

</div>

</div>

<!-- Footer -->

<footer>

<div class="container">

	<h3>
		<i class="fa fa-cart-shopping"></i>
		E-Travel Bags
	</h3>

	<p class="mt-3">
		Buy products easily with secure shopping experience.
	</p>

	<hr class="bg-light">

	<p class="mb-0">
		© 2026 All Rights Reserved |
		Developed By Ankit Pakhare
		<br>
		Contact No.: 7499712437
	</p>

</div>

</footer>

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>

