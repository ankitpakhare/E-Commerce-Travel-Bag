<%@ page import="java.util.List"%>
<%@ page import="model.Product"%>
<%@ page import="dao.UserDAO"%>

<%
UserDAO dao = new UserDAO();

List<Product> products = dao.getAllProducts();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

body{

	background:
	linear-gradient(
	135deg,
	#eef2f7,
	#dbe7ff);

	font-family:Arial;

	min-height:100vh;
}

/* TITLE */

.page-title{

	font-size:45px;

	font-weight:bold;

	text-align:center;

	color:#0d6efd;

	margin-bottom:40px;

	animation:fadeIn 1s ease;
}

@keyframes fadeIn{

	from{

		opacity:0;

		transform:translateY(-30px);
	}

	to{

		opacity:1;

		transform:translateY(0);
	}
}

/* CARD */

.product-card{

	border:none;

	border-radius:25px;

	overflow:hidden;

	background:white;

	transition:0.5s;

	box-shadow:
	0 10px 25px rgba(0,0,0,0.15);

	animation:cardFade 1s ease;
}

@keyframes cardFade{

	from{

		opacity:0;

		transform:translateY(40px);
	}

	to{

		opacity:1;

		transform:translateY(0);
	}
}

.product-card:hover{

	transform:
	translateY(-12px)
	scale(1.03);

	box-shadow:
	0 20px 40px rgba(0,0,0,0.25);
}

/* IMAGE */

.product-img{

	height:250px;

	width:100%;

	object-fit:cover;

	transition:0.5s;
}

.product-card:hover .product-img{

	transform:scale(1.08);
}

/* BODY */

.card-body{

	padding:25px;
}

.product-name{

	font-size:24px;

	font-weight:bold;

	color:#222;
}

.category{

	color:#6c757d;

	font-size:16px;

	margin:10px 0;
}

.price{

	font-size:28px;

	font-weight:bold;

	color:#198754;

	margin-bottom:20px;
}

/* BUTTON */

.btn-cart{

	background:
	linear-gradient(
	45deg,
	#0072ff,
	#00c6ff);

	border:none;

	border-radius:30px;

	padding:12px;

	font-size:17px;

	font-weight:bold;

	color:white;

	width:100%;

	transition:0.4s;
}

.btn-cart:hover{

	transform:scale(1.05);

	box-shadow:
	0 10px 20px rgba(0,114,255,0.4);
}

/* RESPONSIVE */

@media(max-width:768px){

	.page-title{

		font-size:35px;
	}

	.product-img{

		height:220px;
	}
}

</style>

</head>

<body>

<jsp:include page="userNavbar.jsp"></jsp:include>

<div class="container py-5">

	<h1 class="page-title">

		<i class="fa fa-bag-shopping"></i>

		All Products

	</h1>

	<div class="row g-4">

		<%
		for (Product p : products) {
		%>

		<div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">

			<div class="card product-card h-100">

				<img src="../images/<%=p.getImage()%>"
					class="product-img">

				<div class="card-body text-center d-flex flex-column">

					<h4 class="product-name">

						<%=p.getName()%>

					</h4>

					<p class="category">

						<i class="fa fa-layer-group"></i>

						Category :
						<%=p.getCategory()%>

					</p>

					<div class="price">

						<i class="fa fa-indian-rupee-sign"></i>

						<%=p.getPrice()%>

					</div>

					<div class="mt-auto">

						<a href="../AddToCartServlet?id=<%=p.getId()%>"
							class="btn btn-cart">

							<i class="fa fa-cart-shopping"></i>

							Add To Cart

						</a>

					</div>

				</div>

			</div>

		</div>

		<%
		}
		%>

	</div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>