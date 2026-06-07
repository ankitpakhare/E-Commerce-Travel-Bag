<%@ page import="java.sql.*" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1">

<title>Checkout</title>

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
	background:linear-gradient(135deg,#1e3c72,#2a5298);
	min-height:100vh;
	font-family:Arial;
	padding-bottom:40px;
}

/* Checkout Card */

.checkout-card{
	border:none;
	border-radius:25px;
	overflow:hidden;
	animation:fadeIn 1s ease;
	box-shadow:0 10px 30px rgba(0,0,0,0.3);
	background:white;
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

/* Header */

.card-header{
	background:linear-gradient(45deg,#00c6ff,#0072ff);
	color:white;
	padding:30px 20px;
	text-align:center;
}

.icon{
	font-size:60px;
	margin-bottom:15px;
}

/* Form */

.form-control{
	border-radius:12px;
	padding:12px;
	font-size:16px;
}

.form-control:focus{
	box-shadow:0 0 10px rgba(0,123,255,0.5);
	border-color:#007bff;
}

textarea.form-control{
	resize:none;
}

/* Amount Box */

.amount-box{
	background:#f8f9fa;
	font-size:22px;
	font-weight:bold;
	color:#198754;
	text-align:center;
}

/* Button */

.btn-order{
	background:linear-gradient(45deg,#11998e,#38ef7d);
	border:none;
	padding:12px 35px;
	font-size:18px;
	font-weight:bold;
	border-radius:30px;
	color:white;
	transition:0.4s;
	width:100%;
	max-width:280px;
}

.btn-order:hover{
	transform:scale(1.05);
	box-shadow:0 8px 20px rgba(0,0,0,0.3);
	color:white;
}

/* Responsive */

@media(max-width:992px){

	.container{
		padding-left:20px;
		padding-right:20px;
	}
}

@media(max-width:768px){

	body{
		padding-top:20px;
	}

	.checkout-card{
		border-radius:20px;
	}

	.card-header{
		padding:25px 15px;
	}

	.icon{
		font-size:50px;
	}

	.card-header h2{
		font-size:28px;
	}

	.form-control{
		font-size:15px;
		padding:10px;
	}

	.amount-box{
		font-size:20px;
	}

	.btn-order{
		width:100%;
		font-size:17px;
	}
}

@media(max-width:576px){

	.container{
		padding-left:12px;
		padding-right:12px;
	}

	.card-body{
		padding:20px !important;
	}

	.icon{
		font-size:42px;
	}

	.card-header h2{
		font-size:24px;
	}

	.card-header p{
		font-size:14px;
	}

	.amount-box{
		font-size:18px;
	}

	.btn-order{
		font-size:16px;
		padding:10px 20px;
	}
}

</style>

</head>

<body>

<jsp:include page="userNavbar.jsp"></jsp:include>

<%

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

double totalAmount = 0;

try{

	Class.forName("com.mysql.cj.jdbc.Driver");

	con = DriverManager.getConnection(
		"jdbc:mysql://localhost:3306/ecommerce",
		"root",
		"root");

	// Calculate Cart Total

	ps = con.prepareStatement(
		"SELECT SUM(price * quantity) FROM cart");

	rs = ps.executeQuery();

	if(rs.next()){

		totalAmount = rs.getDouble(1);

	}

}catch(Exception e){

	out.println(e);

}

%>

<div class="container mt-5">

	<div class="row justify-content-center">

		<div class="col-lg-6 col-md-8 col-sm-12">

			<div class="card checkout-card">

				<div class="card-header">

					<i class="fa fa-credit-card icon"></i>

					<h2>Checkout</h2>

					<p class="mb-0">
						Complete your order securely
					</p>

				</div>

				<div class="card-body p-4">

					<form action="../PlaceOrderServlet"
						method="post">

						<!-- Customer Name -->

						<div class="mb-3">

							<label class="fw-bold mb-2">
								Customer Name
							</label>

							<input type="text"
								name="name"
								class="form-control"
								placeholder="Enter your name"
								required>

						</div>

						<!-- Mobile -->

						<div class="mb-3">

							<label class="fw-bold mb-2">
								Mobile
							</label>

							<input type="text"
								name="mobile"
								class="form-control"
								placeholder="Enter mobile number"
								required>

						</div>

						<!-- Address -->

						<div class="mb-3">

							<label class="fw-bold mb-2">
								Address
							</label>

							<textarea name="address"
								class="form-control"
								rows="4"
								placeholder="Enter delivery address"
								required></textarea>

						</div>

						<!-- Total Amount -->

						<div class="mb-4">

							<label class="fw-bold mb-2">
								Total Amount
							</label>

							<input type="text"
								name="total"
								class="form-control amount-box"
								value=" <%= totalAmount %>"
								readonly>

						</div>

						<!-- Button -->

						<div class="text-center">

							<button type="submit"
								class="btn btn-order">

								<i class="fa fa-check-circle"></i>

								Place Order

							</button>

						</div>

					</form>

				</div>

			</div>

		</div>

	</div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>