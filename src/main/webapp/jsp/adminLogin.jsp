<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
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

	display:flex;
	justify-content:center;
	align-items:center;

	background:linear-gradient(-45deg,
	#1d2671,
	#c33764,
	#11998e,
	#38ef7d);

	background-size:400% 400%;

	animation:bgAnimation 10s ease infinite;

	font-family:Arial;

	padding:100px 15px 40px;

	overflow-x:hidden;
}

@keyframes bgAnimation{

	0%{
		background-position:0% 50%;
	}

	50%{
		background-position:100% 50%;
	}

	100%{
		background-position:0% 50%;
	}
}

/* Login Card */

.login-card{

	width:100%;
	max-width:420px;

	background:rgba(255,255,255,0.15);

	backdrop-filter:blur(10px);

	border-radius:25px;

	padding:40px;

	box-shadow:0 8px 32px rgba(0,0,0,0.3);

	animation:slideUp 1s ease;
}

@keyframes slideUp{

	from{
		transform:translateY(100px);
		opacity:0;
	}

	to{
		transform:translateY(0);
		opacity:1;
	}
}

.title{

	text-align:center;

	color:white;

	margin-bottom:30px;

	font-size:35px;

	font-weight:bold;
}

.form-control{

	height:50px;

	border-radius:15px;

	border:none;

	margin-bottom:20px;
}

.form-control:focus{

	box-shadow:0 0 15px #00f2fe;
}

.login-btn{

	width:100%;

	height:50px;

	border:none;

	border-radius:30px;

	background:linear-gradient(45deg,#00c6ff,#0072ff);

	color:white;

	font-size:20px;

	font-weight:bold;

	transition:0.4s;
}

.login-btn:hover{

	transform:scale(1.03);

	box-shadow:0 0 20px #00c6ff;
}

.icon{

	text-align:center;

	font-size:70px;

	color:white;

	margin-bottom:20px;

	animation:rotate 4s linear infinite;
}

@keyframes rotate{

	100%{
		transform:rotate(360deg);
	}
}

.register-link{

	text-align:center;

	margin-top:20px;

	color:white;
}

.register-link a{

	color:yellow;

	text-decoration:none;

	font-weight:bold;
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
}

@media(max-width:768px){

	body{

		padding:110px 15px 30px;
	}

	.login-card{

		padding:30px 22px;
		border-radius:20px;
	}

	.title{

		font-size:28px;
	}

	.icon{

		font-size:55px;
	}

	.navbar-brand{

		font-size:22px;
	}
}

@media(max-width:576px){

	body{

		align-items:flex-start;
	}

	.login-card{

		padding:25px 18px;
		margin-top:20px;
	}

	.title{

		font-size:24px;
	}

	.form-control{

		height:45px;
		font-size:14px;
	}

	.login-btn{

		height:45px;
		font-size:16px;
	}

	.navbar-brand{

		font-size:20px;
	}

	.nav-link{

		font-size:15px;
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

						Admin

					</a>

				</li>

			</ul>

		</div>

	</div>

</nav>

<!-- Login Card -->

<div class="login-card">

	<div class="icon">

		<i class="fa fa-user-shield"></i>

	</div>

	<h1 class="title">

		Admin Login

	</h1>

	<form action="../AdminLoginServlet"
		method="post">

		<input type="email"
			name="email"
			class="form-control"
			placeholder="Enter Email"
			required>

		<input type="password"
			name="password"
			class="form-control"
			placeholder="Enter Password"
			required>

		<button type="submit"
			class="login-btn">

			Login

		</button>

	</form>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>