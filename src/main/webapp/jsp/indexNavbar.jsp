<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">

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

.navbar{

	background:
	linear-gradient(
	45deg,
	#141e30,
	#243b55);

	padding:15px 0;

	box-shadow:0 5px 15px rgba(0,0,0,0.3);
}

.navbar-brand{

	font-size:28px;

	font-weight:bold;

	color:white !important;

	transition:0.3s;
}

.navbar-brand:hover{

	transform:scale(1.05);

	color:#00c6ff !important;
}

.navbar-brand i{

	margin-right:8px;

	color:#00c6ff;
}

.nav-link{

	color:white !important;

	font-size:17px;

	margin-left:12px;

	transition:0.3s;
}

.nav-link:hover{

	color:#00c6ff !important;

	transform:translateY(-2px);
}

.btn-custom{

	border-radius:30px;

	padding:8px 20px;

	font-weight:bold;

	margin-left:10px;

	transition:0.4s;

	border:none;
}

.btn-custom:hover{

	transform:scale(1.08);
}

/* Mobile Responsive */

@media(max-width:991px){

	.navbar-nav{

		text-align:center;

		padding-top:20px;
	}

	.btn-custom{

		width:100%;

		margin:10px 0;
	}

	.nav-link{

		margin-left:0;
	}
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

	<div class="container">

		<!-- Logo -->

		<a class="navbar-brand"
			href="../index.jsp">

			<i class="fa fa-bag-shopping"></i>

			Travel Bag Shop

		</a>

		<!-- Mobile Toggle -->

		<button class="navbar-toggler"
			type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<!-- Menu -->

		<div class="collapse navbar-collapse"
			id="navbarNav">

			<ul class="navbar-nav ms-auto align-items-center">

				<!-- Login -->

				<li class="nav-item">

					<a href="login.jsp"
						class="btn btn-primary btn-custom">

						<i class="fa fa-user"></i>

						Login

					</a>

				</li>

				<!-- Register -->

				<li class="nav-item">

					<a href="register.jsp"
						class="btn btn-success btn-custom">

						<i class="fa fa-user-plus"></i>

						Register

					</a>

				</li>

				<!-- Admin -->

				<li class="nav-item">

					<a href="adminLogin.jsp"
						class="btn btn-danger btn-custom">

						<i class="fa fa-lock"></i>

						Admin

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