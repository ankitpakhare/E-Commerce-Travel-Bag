<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

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

	min-height:100vh;

	background:
	linear-gradient(
	135deg,
	#141e30,
	#243b55,
	#0f2027);

	display:flex;
	align-items:center;
	justify-content:center;

	font-family:Arial;

	overflow-x:hidden;

	padding:100px 15px 40px;
}

/* Floating Circles */

.circle{

	position:absolute;
	border-radius:50%;
	background:rgba(255,255,255,0.1);

	animation:float 8s infinite ease-in-out;
}

.circle1{

	width:220px;
	height:220px;

	top:10%;
	left:10%;
}

.circle2{

	width:300px;
	height:300px;

	bottom:10%;
	right:10%;

	animation-delay:2s;
}

@keyframes float{

	0%{
		transform:translateY(0);
	}

	50%{
		transform:translateY(-30px);
	}

	100%{
		transform:translateY(0);
	}
}

/* Register Card */

.register-card{

	width:100%;
	max-width:450px;

	background:rgba(255,255,255,0.15);

	backdrop-filter:blur(15px);

	padding:40px;

	border-radius:25px;

	box-shadow:0 10px 30px rgba(0,0,0,0.4);

	animation:fadeIn 1.2s ease;

	position:relative;
	z-index:10;
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

/* Title */

.register-title{

	text-align:center;
	color:white;

	margin-bottom:30px;
}

.register-title i{

	font-size:60px;

	color:#00c6ff;

	margin-bottom:15px;
	display:block;
}

.register-title h2{

	font-size:35px;
	font-weight:bold;
}

/* Inputs */

.input-group{

	margin-bottom:25px;
}

.input-group-text{

	background:#00c6ff;
	color:white;

	border:none;

	border-radius:12px 0 0 12px;
}

.form-control{

	height:50px;

	border:none;

	border-radius:0 12px 12px 0;
}

.form-control:focus{

	box-shadow:0 0 15px rgba(0,198,255,0.7);
}

/* Button */

.btn-register{

	width:100%;

	padding:12px;

	border:none;

	border-radius:30px;

	font-size:18px;

	font-weight:bold;

	background:
	linear-gradient(
	45deg,
	#11998e,
	#38ef7d);

	color:white;

	transition:0.4s;
}

.btn-register:hover{

	transform:scale(1.03);

	box-shadow:0 8px 20px rgba(0,0,0,0.4);
}

/* Login Link */

.login-link{

	text-align:center;

	margin-top:20px;

	color:white;

	font-size:15px;
}

.login-link a{

	color:#00c6ff;

	font-weight:bold;

	text-decoration:none;
}

.login-link a:hover{

	text-decoration:underline;
}

/* Navbar */

.custom-navbar{

	position:fixed;
	top:0;
	left:0;
	width:100%;
	z-index:1000;

	background:rgba(0,0,0,0.3);

	backdrop-filter:blur(10px);

	padding:12px 0;

	box-shadow:0 4px 10px rgba(0,0,0,0.3);
}

.navbar-brand{

	font-size:28px;
	color:#00c6ff !important;
}

.navbar-brand i{

	margin-right:8px;
}

.nav-link{

	color:white !important;

	font-size:17px;

	margin-left:15px;

	transition:0.3s;
}

.nav-link:hover{

	color:#00c6ff !important;

	transform:translateY(-2px);
}

/* =========================
   RESPONSIVE DESIGN
========================= */

@media(max-width:991px){

	.navbar-nav{

		text-align:center;
		padding-top:15px;
	}

	.nav-link{

		margin:10px 0;
	}

	.register-card{

		margin-top:30px;
	}
}

@media(max-width:768px){

	body{

		padding:110px 15px 30px;
	}

	.register-card{

		padding:30px 22px;
		border-radius:20px;
	}

	.register-title h2{

		font-size:28px;
	}

	.register-title i{

		font-size:50px;
	}

	.navbar-brand{

		font-size:22px;
	}

	.circle1{

		width:150px;
		height:150px;
	}

	.circle2{

		width:180px;
		height:180px;
	}
}

@media(max-width:576px){

	body{

		align-items:flex-start;
	}

	.register-card{

		padding:25px 18px;
		margin-top:20px;
	}

	.register-title h2{

		font-size:24px;
	}

	.form-control{

		height:45px;
		font-size:14px;
	}

	.input-group-text{

		padding:10px 14px;
	}

	.btn-register{

		font-size:16px;
		padding:10px;
	}

	.login-link{

		font-size:14px;
	}

	.navbar-brand{

		font-size:20px;
	}

	.circle1{

		width:110px;
		height:110px;
		top:12%;
		left:-20px;
	}

	.circle2{

		width:140px;
		height:140px;
		right:-30px;
		bottom:8%;
	}
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">

	<div class="container">

		<a class="navbar-brand fw-bold" href="#">

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

			<ul class="navbar-nav ms-auto">

				<li class="nav-item">

					<a class="nav-link active"
						href="../index.jsp">

						Home

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link"
						href="login.jsp">

						Login

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link"
						href="register.jsp">

						Register

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link"
						href="adminLogin.jsp">

						Admin Login

					</a>

				</li>

			</ul>

		</div>

	</div>

</nav>

<!-- Floating Background -->

<div class="circle circle1"></div>

<div class="circle circle2"></div>

<!-- Register Card -->

<div class="register-card">

	<div class="register-title">

		<i class="fa fa-user-plus"></i>

		<h2>User Registration</h2>

	</div>

	<form action="../RegisterServlet"
		method="post">

		<!-- Name -->

		<div class="input-group">

			<span class="input-group-text">

				<i class="fa fa-user"></i>

			</span>

			<input type="text"
				name="name"
				class="form-control"
				placeholder="Enter Full Name"
				required>

		</div>

		<!-- Email -->

		<div class="input-group">

			<span class="input-group-text">

				<i class="fa fa-envelope"></i>

			</span>

			<input type="email"
				name="email"
				class="form-control"
				placeholder="Enter Email"
				required>

		</div>

		<!-- Password -->

		<div class="input-group">

			<span class="input-group-text">

				<i class="fa fa-lock"></i>

			</span>

			<input type="password"
				name="password"
				class="form-control"
				placeholder="Enter Password"
				required>

		</div>

		<!-- Register Button -->

		<button type="submit"
			class="btn btn-register">

			<i class="fa fa-user-check"></i>

			Register

		</button>

	</form>

	<!-- Login Link -->

	<div class="login-link">

		Already have an account?

		<a href="login.jsp">

			Login Here

		</a>

	</div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>