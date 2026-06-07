<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Admin Navbar</title>

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
	margin:0;
	padding:0;
}

/* =========================
        NAVBAR
========================= */

.navbar{

	background:
	linear-gradient(
	45deg,
	#000428,
	#004e92);

	padding:15px 0;

	box-shadow:
	0 4px 15px rgba(0,0,0,0.4);

	animation:navAnimation 1.2s ease;
}

@keyframes navAnimation{

	from{

		transform:translateY(-100%);

		opacity:0;
	}

	to{

		transform:translateY(0);

		opacity:1;
	}
}

/* LOGO */

.navbar-brand{

	font-size:28px;

	font-weight:bold;

	color:white !important;

	letter-spacing:1px;

	transition:0.4s;
}

.navbar-brand i{

	color:#ffc107;

	margin-right:8px;
}

.navbar-brand:hover{

	transform:scale(1.05);

	color:#ffc107 !important;
}

/* NAV LINKS */

.nav-link{

	color:white !important;

	font-size:17px;

	font-weight:500;

	margin-left:10px;

	padding:10px 18px !important;

	border-radius:30px;

	position:relative;

	transition:0.4s;
}

.nav-link:hover{

	color:#ffc107 !important;

	transform:translateY(-3px);

	background:rgba(255,255,255,0.1);
}

/* UNDERLINE EFFECT */

.nav-link::after{

	content:"";

	position:absolute;

	left:15px;

	bottom:5px;

	width:0;

	height:2px;

	background:#ffc107;

	transition:0.4s;
}

.nav-link:hover::after{

	width:60%;
}

/* ICON */

.nav-link i{

	margin-right:6px;
}

/* LOGOUT BUTTON */

.logout-btn{

	background:#dc3545;

	color:white !important;

	border-radius:30px;

	padding:10px 20px !important;

	transition:0.4s;
}

.logout-btn:hover{

	background:white;

	color:#dc3545 !important;

	transform:scale(1.05);
}

/* MOBILE RESPONSIVE */

@media(max-width:991px){

	.navbar-nav{

		text-align:center;

		padding-top:20px;
	}

	.nav-link{

		margin:8px 0;

		width:100%;
	}

	.logout-btn{

		display:block;

		width:100%;
	}
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

	<div class="container">

		<!-- LOGO -->

		<a class="navbar-brand"
			href="admin.jsp">

			<i class="fa fa-bag-shopping"></i>

			E-Travel Bags

		</a>

		<!-- TOGGLE BUTTON -->

		<button class="navbar-toggler"
			type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<!-- MENU -->

		<div class="collapse navbar-collapse"
			id="navbarNav">

			<ul class="navbar-nav ms-auto align-items-center">

				<!-- DASHBOARD -->

				<li class="nav-item">

					<a class="nav-link"
						href="admin.jsp">

						<i class="fa fa-gauge-high"></i>

						Dashboard

					</a>

				</li>

				<!-- ADD PRODUCT -->

				<li class="nav-item">

					<a class="nav-link"
						href="addProduct.jsp">

						<i class="fa fa-plus-circle"></i>

						Add Product

					</a>

				</li>

				<!-- VIEW PRODUCTS -->

				<li class="nav-item">

					<a class="nav-link"
						href="viewProducts.jsp">

						<i class="fa fa-box-open"></i>

						Products

					</a>

				</li>

				<!-- ORDERS -->

				<li class="nav-item">

					<a class="nav-link"
						href="orders.jsp">

						<i class="fa fa-truck"></i>

						Orders

					</a>

				</li>

				<!-- LOGOUT -->

				<li class="nav-item">

					<a class="nav-link logout-btn"
						href="../LogoutServlet">

						<i class="fa fa-right-from-bracket"></i>

						Logout

					</a>

				</li>

			</ul>

		</div>

	</div>

</nav>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>