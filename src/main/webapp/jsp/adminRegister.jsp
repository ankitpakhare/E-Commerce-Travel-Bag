<!-- <!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0">

<title>Admin Register</title>

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

	display:flex;
	justify-content:center;
	align-items:center;

	padding:100px 15px 30px;

	background:
	linear-gradient(
	-45deg,
	#fc466b,
	#3f5efb,
	#00c9ff,
	#92fe9d);

	background-size:400% 400%;

	animation:bgMove 10s ease infinite;

	font-family:Arial;

	overflow-x:hidden;
}

/* =========================
   BACKGROUND ANIMATION
========================= */

@keyframes bgMove{

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

/* =========================
   REGISTER CARD
========================= */

.register-card{

	width:100%;
	max-width:450px;

	background:rgba(255,255,255,0.15);

	backdrop-filter:blur(12px);

	border-radius:25px;

	padding:40px;

	box-shadow:0 8px 32px rgba(0,0,0,0.3);

	animation:zoomIn 1s ease;
}

@keyframes zoomIn{

	from{
		transform:scale(0.5);
		opacity:0;
	}

	to{
		transform:scale(1);
		opacity:1;
	}
}

/* =========================
   TITLE
========================= */

.title{

	text-align:center;

	color:white;

	margin-bottom:30px;

	font-size:35px;

	font-weight:bold;
}

/* =========================
   ICON
========================= */

.icon{

	text-align:center;

	font-size:70px;

	color:white;

	margin-bottom:20px;

	animation:bounce 2s infinite;
}

@keyframes bounce{

	0%,100%{
		transform:translateY(0);
	}

	50%{
		transform:translateY(-15px);
	}
}

/* =========================
   FORM
========================= */

.form-control{

	height:50px;

	border-radius:15px;

	border:none;

	margin-bottom:20px;

	font-size:16px;
}

.form-control:focus{

	box-shadow:0 0 15px yellow;
}

/* =========================
   BUTTON
========================= */

.register-btn{

	width:100%;

	height:50px;

	border:none;

	border-radius:30px;

	background:
	linear-gradient(
	45deg,
	#ff512f,
	#dd2476);

	color:white;

	font-size:20px;

	font-weight:bold;

	transition:0.4s;
}

.register-btn:hover{

	transform:scale(1.05);

	box-shadow:0 0 20px #ff512f;
}

/* =========================
   LOGIN LINK
========================= */

.login-link{

	text-align:center;

	margin-top:20px;

	color:white;

	font-size:16px;
}

.login-link a{

	color:yellow;

	text-decoration:none;

	font-weight:bold;
}

.login-link a:hover{

	text-decoration:underline;
}

/* =========================
   NAVBAR
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
   RESPONSIVE
========================= */

@media(max-width:768px){

	body{

		padding-top:120px;
	}

	.register-card{

		padding:30px 25px;
	}

	.title{

		font-size:30px;
	}

	.icon{

		font-size:60px;
	}

	.navbar-brand{

		font-size:24px;
	}

	.nav-link{

		margin-left:0;
		padding:10px 0;
		text-align:center;
	}
}

@media(max-width:576px){

	body{

		padding:110px 12px 20px;
	}

	.register-card{

		padding:25px 20px;
		border-radius:20px;
	}

	.title{

		font-size:26px;
	}

	.icon{

		font-size:50px;
	}

	.form-control{

		height:45px;
		font-size:14px;
	}

	.register-btn{

		height:45px;
		font-size:17px;
	}

	.login-link{

		font-size:14px;
	}

	.navbar-brand{

		font-size:20px;
	}
}

</style>

</head>

<body>

<!-- Navbar --

<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">

	<div class="container">

		<a class="navbar-brand" href="#">

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

					<a class="nav-link"
						href="../index.jsp">

						Home

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link"
						href="login.jsp">

						User Login

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link"
						href="register.jsp">

						User Register

					</a>

				</li>

				<li class="nav-item">

					<a class="nav-link active"
						href="adminLogin.jsp">

						Admin Login

					</a>

				</li>

			</ul>

		</div>

	</div>

</nav>

<!-- Register Card --

<div class="register-card">

	<div class="icon">

		<i class="fa fa-user-plus"></i>

	</div>

	<h1 class="title">

		Admin Register

	</h1>

	<form action="../AdminRegisterServlet"
		method="post">

		<input type="text"
			name="name"
			class="form-control"
			placeholder="Enter Name"
			required>

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
			class="register-btn">

			Register

		</button>

	</form>

	<div class="login-link">

		Already have account?

		<a href="adminLogin.jsp">

			Login

		</a>

	</div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>  -->