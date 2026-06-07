<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1.0">

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
	#1e3c72 0%,
	#2a5298 50%,
	#6dd5ed 100%);

	display:flex;
	align-items:center;
	justify-content:center;

	font-family:Arial;

	padding:100px 15px 30px;

	position:relative;

	overflow-x:hidden;
}

/* =========================
   Animated Background
========================= */

.circle{

	position:absolute;

	border-radius:50%;

	background:rgba(255,255,255,0.1);

	animation:float 8s infinite ease-in-out;
}

.circle1{

	width:200px;
	height:200px;

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
		transform:translateY(0px);
	}

	50%{
		transform:translateY(-30px);
	}

	100%{
		transform:translateY(0px);
	}
}

/* =========================
   Navbar
========================= */

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

	font-weight:bold;
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
   Login Card
========================= */

.login-card{

	width:100%;

	max-width:420px;

	background:rgba(255,255,255,0.15);

	backdrop-filter:blur(15px);

	border-radius:25px;

	padding:40px;

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

.login-title{

	color:white;

	font-size:35px;

	font-weight:bold;

	text-align:center;

	margin-bottom:30px;
}

.login-title i{

	font-size:55px;

	margin-bottom:15px;

	display:block;

	color:#00c6ff;
}

/* =========================
   Inputs
========================= */

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

/* =========================
   Button
========================= */

.btn-login{

	width:100%;

	padding:12px;

	font-size:18px;

	font-weight:bold;

	border:none;

	border-radius:30px;

	background:
	linear-gradient(
	45deg,
	#00c6ff,
	#0072ff);

	color:white;

	transition:0.4s;
}

.btn-login:hover{

	transform:scale(1.03);

	box-shadow:0 8px 20px rgba(0,0,0,0.4);
}

/* =========================
   Register Text
========================= */

.register-text{

	text-align:center;

	margin-top:20px;

	color:white;

	font-size:16px;
}

.register-text a{

	color:#00c6ff;

	text-decoration:none;

	font-weight:bold;
}

.register-text a:hover{

	text-decoration:underline;
}

/* =========================
   Responsive
========================= */

@media(max-width:992px){

	.nav-link{

		margin-left:0;

		margin-top:10px;
	}

	.navbar-collapse{

		padding-top:10px;
	}

	.login-card{

		max-width:450px;
	}
}

@media(max-width:768px){

	body{

		padding-top:120px;
	}

	.login-card{

		padding:30px 20px;
	}

	.login-title{

		font-size:30px;
	}

	.login-title i{

		font-size:45px;
	}

	.navbar-brand{

		font-size:22px;
	}

	.circle1{

		width:120px;
		height:120px;
	}

	.circle2{

		width:180px;
		height:180px;
	}
}

@media(max-width:576px){

	body{

		padding:110px 12px 20px;
	}

	.login-card{

		padding:25px 18px;

		border-radius:20px;
	}

	.login-title{

		font-size:26px;
	}

	.form-control{

		height:45px;
	}

	.btn-login{

		font-size:16px;

		padding:10px;
	}

	.register-text{

		font-size:14px;
	}

	.navbar-brand{

		font-size:20px;
	}
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">

	<div class="container">

		<a class="navbar-brand"
			href="#">

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

<!-- Animated Background -->

<div class="circle circle1"></div>

<div class="circle circle2"></div>

<!-- Login Card -->

<div class="login-card">

	<div class="login-title">

		<i class="fa fa-user-circle"></i>

		User Login

	</div>

	<form action="../LoginServlet"
		method="post">

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

		<!-- Login Button -->

		<button type="submit"
			class="btn btn-login">

			<i class="fa fa-right-to-bracket"></i>

			Login

		</button>

	</form>

	<!-- Register -->

	<div class="register-text">

		Don't have an account?

		<a href="register.jsp">

			Register Here

		</a>

	</div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>