<%@ page import="java.util.List" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="model.Product" %>

<%
UserDAO dao = new UserDAO();

List<Product> list =
        dao.getAllProducts();
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1">

<title>View Products</title>

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
}

/* =========================
          TITLE
========================= */

.page-title{

	font-size:48px;

	font-weight:bold;

	color:#0d6efd;

	text-align:center;

	margin-bottom:50px;

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

/* =========================
       PRODUCT CARD
========================= */

.product-card{

	border:none;

	border-radius:25px;

	overflow:hidden;

	background:white;

	height:100%;

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

/* =========================
           IMAGE
========================= */

.product-img{

	width:100%;

	height:240px;

	object-fit:cover;

	transition:0.5s;
}

.product-card:hover .product-img{

	transform:scale(1.08);
}

/* =========================
         CARD BODY
========================= */

.card-body{

	padding:25px;

	display:flex;

	flex-direction:column;

	justify-content:space-between;
}

.product-name{

	font-size:24px;

	font-weight:bold;

	color:#333;

	margin-bottom:12px;
}

.category{

	color:#666;

	font-size:16px;

	margin-bottom:15px;
}

.price{

	font-size:26px;

	font-weight:bold;

	color:#198754;

	margin-bottom:25px;
}

/* =========================
          BUTTON
========================= */

.btn-custom{

	border:none;

	padding:12px 20px;

	font-weight:bold;

	border-radius:35px;

	transition:0.4s;

	width:100%;
}

.btn-delete{

	background:
	linear-gradient(
	45deg,
	#ff416c,
	#ff4b2b);

	color:white;
}

.btn-delete:hover{

	transform:scale(1.05);

	box-shadow:
	0 10px 20px rgba(255,65,108,0.4);

	color:white;
}

/* =========================
        RESPONSIVE
========================= */

@media(max-width:1200px){

	.product-img{

		height:230px;
	}
}

@media(max-width:992px){

	.page-title{

		font-size:40px;
	}

	.product-name{

		font-size:22px;
	}

	.price{

		font-size:24px;
	}
}

@media(max-width:768px){

	.page-title{

		font-size:34px;

		margin-bottom:35px;
	}

	.product-img{

		height:220px;
	}

	.card-body{

		padding:20px;
	}
}

@media(max-width:576px){

	.container{

		padding-left:15px;

		padding-right:15px;
	}

	.page-title{

		font-size:28px;
	}

	.product-img{

		height:200px;
	}

	.product-name{

		font-size:20px;
	}

	.category{

		font-size:14px;
	}

	.price{

		font-size:22px;
	}

	.btn-custom{

		font-size:15px;

		padding:10px;
	}
}

</style>

</head>

<body>

<jsp:include page="navbar.jsp"></jsp:include>

<div class="container py-5">

	<h1 class="page-title">

		<i class="fa fa-box-open"></i>

		All Products

	</h1>

	<div class="row g-4">

	<%
	for(Product p : list){
	%>

		<div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-3">

			<div class="card product-card">

				<img src="../images/<%= p.getImage() %>"
					class="product-img">

				<div class="card-body text-center">

					<div>

						<h4 class="product-name">

							<%= p.getName() %>

						</h4>

						<p class="category">

							<i class="fa fa-tag"></i>

							<%= p.getCategory() %>

						</p>

						<div class="price">

							<i class="fa fa-indian-rupee-sign"></i>

							<%= p.getPrice() %>

						</div>

					</div>

					<div>

						<a href="../DeleteProductServlet?id=<%= p.getId() %>"
							class="btn btn-custom btn-delete">

							<i class="fa fa-trash"></i>

							Delete Product

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