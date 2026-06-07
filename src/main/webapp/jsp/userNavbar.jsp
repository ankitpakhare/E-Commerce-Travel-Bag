<%@ page import="model.User" %>

<%
User user =
(User)session.getAttribute("user");

if(user == null){

	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1">

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

/* =========================
   GLOBAL
========================= */

*{

	margin:0;
	padding:0;
	box-sizing:border-box;
}

body{

	overflow-x:hidden;

	font-family:Arial;
}

/* =========================
   PROFESSIONAL NAVBAR
========================= */

.custom-navbar{

	background:
	linear-gradient(
	135deg,
	#141e30,
	#243b55);

	padding:14px 20px;

	position:sticky;

	top:0;

	z-index:1000;

	box-shadow:
	0 8px 25px rgba(0,0,0,0.3);

	animation:navbarFade 1s ease;
}

@keyframes navbarFade{

	from{

		opacity:0;

		transform:translateY(-40px);
	}

	to{

		opacity:1;

		transform:translateY(0);
	}
}

/* =========================
   LOGO
========================= */

.navbar-brand{

	font-size:30px;

	font-weight:bold;

	color:white !important;

	transition:0.4s;

	display:flex;

	align-items:center;

	gap:10px;
}

.navbar-brand i{

	color:#00d4ff;

	animation:rotateLogo 5s linear infinite;
}

@keyframes rotateLogo{

	100%{

		transform:rotate(360deg);
	}
}

.navbar-brand:hover{

	transform:scale(1.03);

	color:#00d4ff !important;
}

/* =========================
   TOGGLER
========================= */

.navbar-toggler{

	border:none;



	padding:8px 12px;

	border-radius:10px;
}

.navbar-toggler:focus{

	box-shadow:none;
}

/* =========================
   NAV LINKS
========================= */

.navbar-nav{

	gap:10px;
}

.nav-link{

	color:white !important;

	font-size:16px;

	font-weight:bold;

	padding:10px 18px !important;

	border-radius:30px;

	transition:0.4s;

	text-align:center;
}

.nav-link:hover{

	background:
	linear-gradient(
	45deg,
	#00c6ff,
	#0072ff);

	transform:
	translateY(-3px);

	box-shadow:
	0 8px 20px rgba(0,198,255,0.5);
}

/* =========================
   PROFILE
========================= */

.profile-link{

	background:
	linear-gradient(
	45deg,
	#ff512f,
	#dd2476);
}

/* =========================
   LOGOUT
========================= */

.logout-link{

	background:
	linear-gradient(
	45deg,
	#ff416c,
	#ff4b2b);
}

/* =========================
   MOBILE MENU
========================= */

@media(max-width:991px){

	.custom-navbar{

		padding:12px 15px;
	}

	.navbar-brand{

		font-size:22px;
	}

	.navbar-collapse{

		background:
		rgba(255,255,255,0.08);

		margin-top:15px;

		padding:20px;

		border-radius:20px;

		backdrop-filter:blur(10px);
	}

	.navbar-nav{

		width:100%;
	}

	.nav-item{

		width:100%;
	}

	.nav-link{

		width:100%;

		margin:5px 0;

		font-size:15px;
	}
}

/* EXTRA SMALL */

@media(max-width:576px){

	.navbar-brand{

		font-size:20px;
	}

	.navbar-brand i{

		font-size:18px;
	}

	.nav-link{

		font-size:14px;

		padding:10px !important;
	}
}

</style>

</head>

<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark custom-navbar">

	<div class="container-fluid">

		<!-- LOGO -->

		<a class="navbar-brand"
			href="userDashboard.jsp">

			<i class="fa fa-bag-shopping"></i>

			Travel Bag Shop

		</a>

		<!-- MOBILE BUTTON -->

		<button class="navbar-toggler"
			type="button"
			data-bs-toggle="collapse"
			data-bs-target="#navbarNav">

			<span class="navbar-toggler-icon"></span>

		</button>

		<!-- MENU -->

		<div class="collapse navbar-collapse"
			id="navbarNav">

			<ul class="navbar-nav ms-auto align-items-lg-center">

				<!-- HOME -->

				<li class="nav-item">

                    <a class="nav-link"
                     href="dashboard.jsp">

                        <i class="fa fa-house"></i>

                        Home

                    </a>

                </li>

				<!-- PRODUCTS -->

				<li class="nav-item">

                    <a class="nav-link"
                     href="products.jsp">

                        <i class="fa fa-box"></i>

                        Products

                    </a>

                </li>

                <!-- CART -->

                <li class="nav-item">

                    <a class="nav-link"
                     href="cart.jsp">

                        <i class="fa fa-shopping-cart"></i>

                        Cart

                    </a>

                </li>

				<!-- PROFILE -->

				<li class="nav-item">

					<a class="nav-link profile-link"
						href="userProfile.jsp">

						<i class="fa fa-user-circle"></i>

						<%= user.getName() %>

					</a>

				</li>

				<!-- LOGOUT -->

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

<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>