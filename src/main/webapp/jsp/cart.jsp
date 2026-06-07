<%@ page import="java.util.List"%>
<%@ page import="dao.UserDAO"%>
<%@ page import="model.Cart"%>

<%
UserDAO dao = new UserDAO();

List<Cart> cartList = dao.getCartProducts();

double total = 0;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping Cart</title>

<meta name="viewport"
	content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>

body{
	background:#f4f7fc;
	font-family:Arial;
}

/* Page Title */

.cart-title{
	font-size:42px;
	font-weight:bold;
	color:#0d6efd;
	text-align:center;
	margin-bottom:30px;
	animation:fadeIn 1s ease;
}

@keyframes fadeIn{

	from{
		opacity:0;
		transform:translateY(-20px);
	}

	to{
		opacity:1;
		transform:translateY(0);
	}
}

/* Cart Table */

.cart-card{
	background:white;
	border-radius:20px;
	padding:20px;
	box-shadow:0 8px 20px rgba(0,0,0,0.1);
	overflow-x:auto;
}

.table{
	min-width:700px;
}

.table th{
	background:#0d6efd;
	color:white;
	text-align:center;
	vertical-align:middle;
}

.table td{
	text-align:center;
	vertical-align:middle;
}

/* Remove Button */

.btn-remove{
	background:linear-gradient(45deg,#ff416c,#ff4b2b);
	border:none;
	color:white;
	padding:8px 16px;
	border-radius:25px;
	font-weight:bold;
	transition:0.3s;
}

.btn-remove:hover{
	transform:scale(1.05);
	box-shadow:0 6px 15px rgba(0,0,0,0.2);
	color:white;
}

/* Checkout Section */

.summary-box{
	background:white;
	padding:25px;
	border-radius:20px;
	box-shadow:0 8px 20px rgba(0,0,0,0.1);
	margin-top:25px;
}

.total-text{
	font-size:30px;
	font-weight:bold;
	color:#198754;
}

.checkout-btn{
	background:linear-gradient(45deg,#11998e,#38ef7d);
	border:none;
	padding:12px 30px;
	border-radius:30px;
	font-size:18px;
	font-weight:bold;
	color:white;
	transition:0.3s;
}

.checkout-btn:hover{
	transform:scale(1.05);
	box-shadow:0 8px 20px rgba(0,0,0,0.2);
	color:white;
}

/* Empty Cart */

.empty-cart{
	background:white;
	padding:40px;
	border-radius:20px;
	text-align:center;
	box-shadow:0 8px 20px rgba(0,0,0,0.1);
}

.empty-cart i{
	font-size:70px;
	color:#dc3545;
	margin-bottom:20px;
}

/* Responsive */

@media(max-width:768px){

	.cart-title{
		font-size:32px;
	}

	.total-text{
		font-size:24px;
	}

	.checkout-btn{
		width:100%;
		margin-top:15px;
	}

	.summary-box{
		text-align:center;
	}

	.table{
		min-width:650px;
	}
}

@media(max-width:576px){

	.container{
		padding-left:12px;
		padding-right:12px;
	}

	.cart-title{
		font-size:26px;
	}

	.summary-box{
		padding:20px;
	}

	.checkout-btn{
		font-size:16px;
		padding:10px 20px;
	}
}

</style>

</head>

<body>

<jsp:include page="userNavbar.jsp"></jsp:include>

<div class="container py-5">

	<h1 class="cart-title">

		<i class="fa fa-cart-shopping"></i>

		Shopping Cart

	</h1>

	<%
	if(cartList.size() > 0){
	%>

	<div class="cart-card">

		<div class="table-responsive">

			<table class="table table-bordered align-middle">

				<tr>

					<th>ID</th>
					<th>Product</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total</th>
					<th>Action</th>

				</tr>

				<%
				for (Cart c : cartList) {

					double subTotal =
						c.getPrice() *
						c.getQuantity();

					total += subTotal;
				%>

				<tr>

					<td>
						<%=c.getId()%>
					</td>

					<td>
						<%=c.getProductName()%>
					</td>

					<td>
						<%=c.getPrice()%>
					</td>

					<td>
						<%=c.getQuantity()%>
					</td>

					<td>
						<%=subTotal%>
					</td>

					<td>

						<a href="../RemoveCartServlet?id=<%=c.getId()%>"
							class="btn btn-remove">

							<i class="fa fa-trash"></i>

							Remove

						</a>

					</td>

				</tr>

				<%
				}
				%>

			</table>

		</div>

	</div>

	<!-- Summary -->

	<div class="summary-box">

		<div class="row align-items-center">

			<div class="col-md-6">

				<h3 class="total-text">

					Grand Total :
					<%=total%>

				</h3>

			</div>

			<div class="col-md-6 text-md-end">

				<a href="checkout.jsp"
					class="btn checkout-btn">

					<i class="fa fa-credit-card"></i>

					Proceed To Checkout

				</a>

			</div>

		</div>

	</div>

	<%
	}else{
	%>

	<!-- Empty Cart -->

	<div class="empty-cart">

		<i class="fa fa-cart-shopping"></i>

		<h2>Your Cart Is Empty</h2>

		<p class="text-muted mt-3">
			Add products to cart and continue shopping.
		</p>

		<a href="products.jsp"
			class="btn btn-primary mt-3">

			

			Continue Shopping

		</a>

	</div>

	<%
	}
	%>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>