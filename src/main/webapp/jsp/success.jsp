<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>

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

	background:
	linear-gradient(
	135deg,
	#141e30,
	#243b55);

	min-height:100vh;

	font-family:Arial;

	display:flex;

	flex-direction:column;

	overflow-x:hidden;
}

/* SUCCESS CARD */

.success-card{

	background:white;

	border:none;

	border-radius:30px;

	padding:50px 35px;

	box-shadow:
	0 15px 40px rgba(0,0,0,0.3);

	animation:fadeIn 1s ease;

	width:100%;
}

/* ANIMATION */

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

/* ICON */

.success-icon{

	font-size:90px;

	color:#198754;

	margin-bottom:25px;

	animation:bounce 2s infinite;
}

@keyframes bounce{

	0%,100%{

		transform:translateY(0);
	}

	50%{

		transform:translateY(-12px);
	}
}

/* TITLE */

.success-title{

	font-size:42px;

	font-weight:bold;

	color:#198754;

	margin-bottom:15px;

	line-height:1.3;
}

/* TEXT */

.success-text{

	font-size:18px;

	color:#555;

	margin-bottom:30px;

	line-height:1.8;
}

/* BUTTON */

.shop-btn{

	background:
	linear-gradient(
	45deg,
	#0072ff,
	#00c6ff);

	color:white;

	border:none;

	padding:14px 35px;

	border-radius:40px;

	font-size:18px;

	font-weight:bold;

	transition:0.4s;

	text-decoration:none;

	display:inline-block;
}

.shop-btn:hover{

	transform:scale(1.08);

	box-shadow:
	0 10px 25px rgba(0,114,255,0.4);

	color:white;
}

/* RESPONSIVE */

@media(max-width:992px){

	.success-title{

		font-size:36px;
	}
}

@media(max-width:768px){

	body{

		padding:0;
	}

	.success-card{

		padding:40px 20px;

		border-radius:20px;
	}

	.success-title{

		font-size:30px;
	}

	.success-icon{

		font-size:70px;
	}

	.success-text{

		font-size:16px;
	}

	.shop-btn{

		width:100%;

		font-size:16px;

		padding:12px 20px;
	}
}

@media(max-width:576px){

	.container{

		padding-left:15px;

		padding-right:15px;
	}

	.success-card{

		padding:30px 15px;
	}

	.success-title{

		font-size:24px;
	}

	.success-icon{

		font-size:60px;
	}

	.success-text{

		font-size:15px;
	}

	.shop-btn{

		font-size:15px;
	}
}

</style>

</head>

<body>

<jsp:include page="userNavbar.jsp"></jsp:include>

<div class="container flex-grow-1 d-flex justify-content-center align-items-center py-5">

	<div class="col-xl-6 col-lg-7 col-md-9 col-sm-11 col-12">

		<div class="success-card text-center">

			<div class="success-icon">

				<i class="fa fa-circle-check"></i>

			</div>

			<h1 class="success-title">

				Order Placed Successfully!

			</h1>

			<p class="success-text">

				Thank you for shopping with us.
				Your order has been placed successfully
				and will be delivered soon.

			</p>

			<a href="products.jsp"
				class="shop-btn">

				<i class="fa fa-bag-shopping"></i>

				Continue Shopping

			</a>

		</div>

	</div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>