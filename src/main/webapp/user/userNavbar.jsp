<%@ page import="model.User"%>

<%

User user = (User) session.getAttribute("user");

%>

<!DOCTYPE html>

<html>
<head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

.navbar{

	background:
	linear-gradient(
	45deg,
	#141e30,
	#243b55);

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

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

```
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

	<ul class="navbar-nav ms-auto">

		<li class="nav-item">

			<a class="nav-link"
				href="userDashboard.jsp">

				Home

			</a>

		</li>

		<li class="nav-item">

			<a class="nav-link"
				href="../products/products.jsp">

				Products

			</a>

		</li>

		<li class="nav-item">

			<a class="nav-link"
				href="userCart.jsp">

				Cart

			</a>

		</li>

		<li class="nav-item">

			<a class="nav-link"
				href="userWishlist.jsp">

				Wishlist

			</a>

		</li>

		<li class="nav-item">

			<a class="nav-link"
				href="userOrders.jsp">

				Orders

			</a>

		</li>

		<li class="nav-item">

			<a class="nav-link"
				href="userProfile.jsp">

				<%= user.getName() %>

			</a>

		</li>

		<li class="nav-item">

			<a class="nav-link"
				href="../LogoutServlet">

				Logout

			</a>

		</li>

	</ul>

</div>
```

</div>

</nav>

</body>
</html>
