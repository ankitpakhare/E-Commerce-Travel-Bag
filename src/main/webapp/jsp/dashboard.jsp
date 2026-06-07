<%@ page import="model.User" %>

<%
User user =
(User)session.getAttribute("user");

if(user == null){

	response.sendRedirect("login.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1">

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
	background:
	linear-gradient(
	135deg,
	#eef2f7,
	#d9e4f5);

	font-family:Arial;
	min-height:100vh;
	overflow-x:hidden;
}

/* =========================
   NAVBAR
========================= */

.custom-navbar{

	background:
	linear-gradient(
	135deg,
	#141e30,
	#243b55);

	padding:15px 20px;

	position:sticky;
	top:0;
	z-index:1000;

	box-shadow:
	0 8px 25px rgba(0,0,0,0.3);
}

.navbar-brand{

	font-size:28px;
	font-weight:bold;
	color:white !important;
}

.navbar-brand i{

	color:#00d4ff;
	margin-right:8px;
}

.nav-link{

	color:white !important;
	font-size:16px;
	font-weight:bold;

	margin-left:10px;

	padding:10px 16px !important;

	border-radius:30px;

	transition:0.4s;
}

.nav-link:hover{

	background:
	linear-gradient(
	45deg,
	#00c6ff,
	#0072ff);

	transform:translateY(-3px);
}

.profile-link{

	background:
	linear-gradient(
	45deg,
	#ff512f,
	#dd2476);
}

.logout-link{

	background:
	linear-gradient(
	45deg,
	#ff416c,
	#ff4b2b);
}

/* =========================
   TITLE
========================= */

.dashboard-title{

	font-size:50px;
	font-weight:bold;

	color:#0d6efd;

	text-align:center;

	margin-top:40px;

	animation:fadeIn 1s ease;
}

@keyframes fadeIn{

	from{
		opacity:0;
		transform:translateY(40px);
	}

	to{
		opacity:1;
		transform:translateY(0);
	}
}

/* =========================
   PRODUCT CARD
========================= */

.product-card{

	border:none;

	border-radius:25px;

	overflow:hidden;

	background:white;

	transition:0.5s;

	height:100%;

	box-shadow:
	0 10px 25px rgba(0,0,0,0.15);
}

.product-card:hover{

	transform:
	translateY(-10px)
	scale(1.02);

	box-shadow:
	0 20px 40px rgba(0,0,0,0.3);
}

.product-img{

	height:260px;

	object-fit:cover;

	width:100%;

	transition:0.5s;
}

.product-card:hover .product-img{

	transform:scale(1.05);
}

.card-body{

	padding:25px;
}

.card-body h4{

	font-weight:bold;
	color:#333;
}

.price{

	font-size:28px;
	font-weight:bold;
	color:#198754;
}

/* =========================
   BUTTONS
========================= */

.btn-custom{

	border:none;

	padding:12px 18px;

	font-weight:bold;

	border-radius:30px;

	transition:0.4s;
}

.btn-cart{

	background:
	linear-gradient(
	45deg,
	#0072ff,
	#00c6ff);

	color:white;

	width:100%;
}

.btn-cart:hover{

	transform:scale(1.03);

	color:white;
}

.btn-buy{

	background:
	linear-gradient(
	45deg,
	#11998e,
	#38ef7d);

	color:white;

	width:100%;
}

.btn-buy:hover{

	transform:scale(1.03);

	color:white;
}

/* =========================
   OFFER BANNER
========================= */

.offer-banner{

	background:
	linear-gradient(
	45deg,
	#0072ff,
	#00c6ff);

	padding:50px;

	border-radius:25px;

	color:white;

	box-shadow:
	0 10px 30px rgba(0,0,0,0.3);
}

.offer-banner h1{

	font-size:50px;
	font-weight:bold;
}

.banner-img{

	max-height:250px;
	width:100%;

	animation:float 4s ease-in-out infinite;
}

@keyframes float{

	50%{
		transform:translateY(-15px);
	}
}

/* =========================
   FEATURES
========================= */

.feature-box{

	background:white;

	padding:35px;

	text-align:center;

	border-radius:20px;

	transition:0.4s;

	height:100%;

	box-shadow:
	0 8px 20px rgba(0,0,0,0.15);
}

.feature-box:hover{

	transform:translateY(-10px);

	background:#0d6efd;

	color:white;
}

.feature-box i{

	font-size:50px;

	margin-bottom:20px;
}

/* =========================
   CATEGORY
========================= */

.section-title{

	text-align:center;

	font-size:40px;

	font-weight:bold;

	color:#0d6efd;

	margin-bottom:40px;
}

.category-card{

	position:relative;

	border-radius:20px;

	overflow:hidden;

	box-shadow:
	0 10px 25px rgba(0,0,0,0.2);

	transition:0.4s;
}

.category-card:hover{

	transform:scale(1.03);
}

.category-img{

	width:100%;

	height:300px;

	object-fit:cover;
}

.category-overlay{

	position:absolute;

	top:0;
	left:0;

	width:100%;
	height:100%;

	background:rgba(0,0,0,0.5);

	display:flex;

	align-items:center;
	justify-content:center;

	color:white;

	font-size:30px;

	font-weight:bold;
}

/* =========================
   REVIEWS
========================= */

.review-card{

	background:white;

	padding:35px;

	border-radius:20px;

	text-align:center;

	transition:0.4s;

	height:100%;

	box-shadow:
	0 8px 20px rgba(0,0,0,0.15);
}

.review-card:hover{

	transform:translateY(-10px);
}

.review-user{

	width:90px;
	height:90px;

	border-radius:50%;

	object-fit:cover;

	margin-bottom:20px;
}

.stars{

	color:gold;

	font-size:22px;
}

/* =========================
   NEWSLETTER
========================= */

.newsletter-box{

	background:
	linear-gradient(
	45deg,
	#141e30,
	#243b55);

	padding:60px;

	border-radius:25px;

	color:white;

	box-shadow:
	0 10px 30px rgba(0,0,0,0.3);
}

/* =========================
   FOOTER
========================= */

.footer{

	background:#141e30;

	color:white;

	padding:25px;

	text-align:center;

	margin-top:60px;
}

/* =========================
   RESPONSIVE
========================= */

@media(max-width:991px){

	.dashboard-title{

		font-size:38px;
	}

	.offer-banner{

		text-align:center;
		padding:35px;
	}

	.offer-banner h1{

		font-size:35px;
	}

	.banner-img{

		margin-top:25px;
		max-height:200px;
	}

	.newsletter-box{

		padding:35px 20px;
	}

	.section-title{

		font-size:32px;
	}
}

@media(max-width:768px){

	.navbar-brand{

		font-size:22px;
	}

	.nav-link{

		margin:8px 0;
		text-align:center;
	}

	.dashboard-title{

		font-size:30px;
		margin-top:25px;
	}

	.product-img{

		height:220px;
	}

	.card-body{

		padding:20px;
	}

	.price{

		font-size:24px;
	}

	.offer-banner h1{

		font-size:28px;
	}

	.section-title{

		font-size:28px;
	}

	.category-img{

		height:220px;
	}

	.newsletter-box h2{

		font-size:28px;
	}

	.review-card,
	.feature-box{

		padding:25px;
	}
}

@media(max-width:576px){

	.dashboard-title{

		font-size:24px;
	}

	.offer-banner{

		padding:25px 20px;
	}

	.offer-banner h1{

		font-size:24px;
	}

	.section-title{

		font-size:24px;
	}

	.btn-custom{

		font-size:14px;
		padding:10px 14px;
	}

	.newsletter-box{

		padding:25px 15px;
	}

	.footer h5{

		font-size:18px;
	}
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">

	<div class="container-fluid">

		<a class="navbar-brand"
			href="userDashboard.jsp">

			<i class="fa fa-bag-shopping"></i>

			Travel Bag Shop

		</a>

		<button class="navbar-toggler"
			type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<div class="collapse navbar-collapse"
			id="navbarNav">

			<ul class="navbar-nav ms-auto align-items-lg-center">

				<li class="nav-item">

                    <a class="nav-link"
                     href="dashboard.jsp">

                        <i class="fa fa-house"></i>

                        Home

                    </a>

                </li>

				<li class="nav-item">

                    <a class="nav-link"
                     href="products.jsp">

                        <i class="fa fa-box"></i>

                        Products

                    </a>

                </li>

                <li class="nav-item">

                    <a class="nav-link"
                     href="cart.jsp">

                        <i class="fa fa-shopping-cart"></i>

                        Cart

                    </a>

                </li>

				<li class="nav-item">

					<a class="nav-link profile-link"
						href="userProfile.jsp">

						<i class="fa fa-user-circle"></i>

						<%= user.getName() %>

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link logout-link"
						href="../LogoutServlet">

						<i class="fa fa-right-from-bracket"></i>

						Logout

					</a>

				</li>

			</ul>

		</div>

	</div>

</nav>

<!-- TITLE -->

<div class="container">

	<h1 class="dashboard-title">

		Trending Travel Bags

	</h1>

</div>

<!-- PRODUCTS -->

<div class="container mt-5">

	<div class="row g-4">

		<!-- PRODUCT 1 -->

		<div class="col-lg-4 col-md-6">

			<div class="card product-card">

				<img src="../images/bag1.jpg"
					class="card-img-top product-img">

				<div class="card-body text-center">

					<h4>Sky Travel Bag</h4>

					<p>
						Premium waterproof travel bag
						with large storage.
					</p>

					<div class="price">
						Rs. 1999
					</div>

					<div class="mt-4">

						<a href="../AddToCartServlet?id=1"
							class="btn btn-custom btn-cart">

							<i class="fa fa-cart-shopping"></i>

							Add To Cart

						</a>

					</div>

					<div class="mt-3">

						<a href="checkout.jsp"
							class="btn btn-custom btn-buy">

							Buy Now

						</a>

					</div>

				</div>

			</div>

		</div>

		<!-- PRODUCT 2 -->

		<div class="col-lg-4 col-md-6">

			<div class="card product-card">

				<img src="../images/bag2.jpg"
					class="card-img-top product-img">

				<div class="card-body text-center">

					<h4>Office Laptop Bag</h4>

					<p>
						Professional stylish office bag
						for daily use.
					</p>

					<div class="price">
						Rs. 999
					</div>

					<div class="mt-4">

						<a href="../AddToCartServlet?id=2"
							class="btn btn-custom btn-cart">

							<i class="fa fa-cart-shopping"></i>

							Add To Cart

						</a>

					</div>

					<div class="mt-3">

						<a href="../BuyNowServlet?id=2"
							class="btn btn-custom btn-buy">

							Buy Now

						</a>

					</div>

				</div>

			</div>

		</div>

		<!-- PRODUCT 3 -->

		<div class="col-lg-4 col-md-6">

			<div class="card product-card">

				<img src="../images/bag3.jpg"
					class="card-img-top product-img">

				<div class="card-body text-center">

					<h4>Adventure Backpack</h4>

					<p>
						Perfect backpack for trekking
						and travelling.
					</p>

					<div class="price">
						Rs. 799
					</div>

					<div class="mt-4">

						<a href="../AddToCartServlet?id=3"
							class="btn btn-custom btn-cart">

							<i class="fa fa-cart-shopping"></i>

							Add To Cart

						</a>

					</div>

					<div class="mt-3">

						<a href="../BuyNowServlet?id=3"
							class="btn btn-custom btn-buy">

							Buy Now

						</a>

					</div>

				</div>

			</div>

		</div>

	</div>

</div>

<!-- OFFER -->

<div class="container mt-5">

	<div class="offer-banner">

		<div class="row align-items-center">

			<div class="col-lg-8">

				<h1>
					50% OFF On Premium Bags
				</h1>

				<p>
					Limited Time Offer For Travel Lovers.
				</p>

				<a href="products.jsp"
					class="btn btn-light btn-lg">

					Shop Now

				</a>

			</div>

			<div class="col-lg-4 text-center">

				<img src="../images/bannerbag.png"
					class="img-fluid banner-img">

			</div>

		</div>

	</div>

</div>

<!-- FEATURES -->

<div class="container mt-5">

	<div class="row g-4">

		<div class="col-lg-3 col-md-6">

			<div class="feature-box">

				<i class="fa fa-truck-fast"></i>

				<h4>Free Delivery</h4>

				<p>Free shipping on all orders.</p>

			</div>

		</div>

		<div class="col-lg-3 col-md-6">

			<div class="feature-box">

				<i class="fa fa-shield-heart"></i>

				<h4>Secure Payment</h4>

				<p>100% secure payment system.</p>

			</div>

		</div>

		<div class="col-lg-3 col-md-6">

			<div class="feature-box">

				<i class="fa fa-rotate-left"></i>

				<h4>Easy Returns</h4>

				<p>7 days easy return policy.</p>

			</div>

		</div>

		<div class="col-lg-3 col-md-6">

			<div class="feature-box">

				<i class="fa fa-headset"></i>

				<h4>24/7 Support</h4>

				<p>Customer support anytime.</p>

			</div>

		</div>

	</div>

</div>

<!-- CATEGORY -->

<div class="container mt-5">

	<h2 class="section-title">

		Shop By Category

	</h2>

	<div class="row g-4">

		<div class="col-lg-4 col-md-6">

			<div class="category-card">

				<img src="../images/bag11.jpg"
					class="category-img">

				<div class="category-overlay">

					<h3>Travel Bags</h3>

				</div>

			</div>

		</div>

		<div class="col-lg-4 col-md-6">

			<div class="category-card">

				<img src="../images/american.jpg"
					class="category-img">

				<div class="category-overlay">

					<h3>Laptop Bags</h3>

				</div>

			</div>

		</div>

		<div class="col-lg-4 col-md-6">

			<div class="category-card">

				<img src="../images/bag13.jpg"
					class="category-img">

				<div class="category-overlay">

					<h3>Backpacks</h3>

				</div>

			</div>

		</div>

	</div>

</div>

<!-- REVIEWS -->

<div class="container mt-5">

	<h2 class="section-title">

		Customer Reviews

	</h2>

	<div class="row g-4">

		<div class="col-lg-4 col-md-6">

			<div class="review-card">

				<img src="../images/user1.jpg"
					class="review-user">

				<h4>Rahul Sharma</h4>

				<p>
					Excellent quality bags and
					super fast delivery.
				</p>

				<div class="stars">
					★★★★★
				</div>

			</div>

		</div>

		<div class="col-lg-4 col-md-6">

			<div class="review-card">

				<img src="../images/user2.jpg"
					class="review-user">

				<h4>Priya Patil</h4>

				<p>
					Stylish and comfortable bags
					for travelling.
				</p>

				<div class="stars">
					★★★★★
				</div>

			</div>

		</div>

		<div class="col-lg-4 col-md-6">

			<div class="review-card">

				<img src="../images/user3.jpg"
					class="review-user">

				<h4>Amit Joshi</h4>

				<p>
					Best ecommerce shopping
					experience.
				</p>

				<div class="stars">
					★★★★★
				</div>

			</div>

		</div>

	</div>

</div>

<!-- NEWSLETTER -->

<div class="container mt-5 mb-5">

	<div class="newsletter-box text-center">

		<h2>
			Subscribe Newsletter
		</h2>

		<p>
			Get latest offers and updates.
		</p>

		<form class="row g-3 justify-content-center">

			<div class="col-lg-6 col-md-8">

				<input type="email"
					class="form-control form-control-lg"
					placeholder="Enter Email">

			</div>

			<div class="col-lg-2 col-md-4">

				<button class="btn btn-primary btn-lg w-100">

					Subscribe

				</button>

			</div>

		</form>

	</div>

</div>

<!-- FOOTER -->

<div class="footer">

	<h5>

		<i class="fa fa-bag-shopping"></i>

		Travel Bag Shop

	</h5>

	<p>
		Premium Bags For Every Journey ✈
	</p>

</div>

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>