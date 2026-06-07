<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>

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

	padding-top:90px;
}

/* CARD */

.product-card{

	border:none;

	border-radius:25px;

	overflow:hidden;

	animation:fadeIn 1s ease;

	box-shadow:
	0 10px 30px rgba(0,0,0,0.4);
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

/* HEADER */

.card-header{

	background:
	linear-gradient(
	45deg,
	#ff416c,
	#ff4b2b);

	color:white;

	padding:30px 20px;

	text-align:center;
}

.icon{

	font-size:60px;

	margin-bottom:15px;
}

.card-header h2{

	font-size:32px;

	font-weight:bold;
}

/* FORM */

.form-control{

	border-radius:12px;

	padding:12px;

	transition:0.3s;
}

.form-control:focus{

	box-shadow:
	0 0 12px rgba(0,123,255,0.5);

	border-color:#007bff;

	transform:scale(1.02);
}

/* BUTTON */

.btn-add{

	background:
	linear-gradient(
	45deg,
	#11998e,
	#38ef7d);

	border:none;

	padding:12px 35px;

	font-size:18px;

	font-weight:bold;

	border-radius:30px;

	color:white;

	transition:0.4s;

	width:100%;
	max-width:250px;
}

.btn-add:hover{

	transform:scale(1.05);

	box-shadow:
	0 8px 20px rgba(0,0,0,0.3);
}

/* IMAGE PREVIEW */

.preview-box{

	text-align:center;

	margin-top:20px;
}

.preview-box img{

	width:150px;
	height:150px;

	object-fit:cover;

	border-radius:15px;

	border:3px solid #ddd;

	display:none;
}

/* =========================
   MOBILE RESPONSIVE
========================= */

@media(max-width:992px){

	body{
		padding-top:100px;
	}

	.card-header h2{
		font-size:28px;
	}

	.icon{
		font-size:50px;
	}
}

@media(max-width:768px){

	.container{
		padding-left:15px;
		padding-right:15px;
	}

	.product-card{
		border-radius:20px;
	}

	.card-header{
		padding:25px 15px;
	}

	.card-header h2{
		font-size:25px;
	}

	.card-header p{
		font-size:14px;
	}

	.icon{
		font-size:45px;
	}

	.form-control{
		padding:10px;
		font-size:15px;
	}

	.btn-add{
		font-size:16px;
		padding:10px 25px;
	}

	.preview-box img{
		width:120px;
		height:120px;
	}
}

@media(max-width:576px){

	body{
		padding-top:85px;
	}

	.card-header h2{
		font-size:22px;
	}

	.card-body{
		padding:20px !important;
	}

	label{
		font-size:14px;
	}

	.form-control{
		font-size:14px;
		height:45px;
	}

	.btn-add{
		width:100%;
		font-size:15px;
	}

	.preview-box img{
		width:100px;
		height:100px;
	}
}

</style>

</head>

<body>

<!-- NAVBAR -->

<jsp:include page="navbar.jsp"></jsp:include>

<!-- ADD PRODUCT FORM -->

<div class="container mb-5">

	<div class="row justify-content-center">

		<div class="col-lg-6 col-md-8 col-sm-11">

			<div class="card product-card">

				<div class="card-header">

					<i class="fa fa-cart-plus icon"></i>

					<h2>Add Product</h2>

					<p class="mb-0">
						Add new ecommerce product easily
					</p>

				</div>

				<div class="card-body p-4">

					<form action="../AddProductServlet"
						method="post">

						<!-- PRODUCT NAME -->

						<div class="mb-3">

							<label class="fw-bold mb-2">

								Product Name

							</label>

							<input type="text"
								name="name"
								class="form-control"
								placeholder="Enter product name"
								required>

						</div>

						<!-- CATEGORY -->

						<div class="mb-3">

							<label class="fw-bold mb-2">

								Category

							</label>

							<input type="text"
								name="category"
								class="form-control"
								placeholder="Enter category"
								required>

						</div>

						<!-- PRICE -->

						<div class="mb-3">

							<label class="fw-bold mb-2">

								Price

							</label>

							<input type="number"
								name="price"
								class="form-control"
								placeholder="Enter product price"
								required>

						</div>

						<!-- IMAGE -->

						<div class="mb-3">

							<label class="fw-bold mb-2">

								Image Name

							</label>

							<input type="text"
								name="image"
								id="imageInput"
								class="form-control"
								placeholder="example.jpg">

						</div>

						<!-- PREVIEW -->

						<div class="preview-box">

							<img id="preview"
								src="">

						</div>

						<!-- BUTTON -->

						<div class="text-center mt-4">

							<button type="submit"
								class="btn btn-add">

								<i class="fa fa-plus-circle"></i>

								Add Product

							</button>

						</div>

					</form>

				</div>

			</div>

		</div>

	</div>

</div>

<script>

const imageInput =
	document.getElementById("imageInput");

const preview =
	document.getElementById("preview");

imageInput.addEventListener("keyup",function(){

	let imageName =
		imageInput.value;

	if(imageName !== ""){

		preview.style.display = "block";

		preview.src =
			"images/" + imageName;

	}else{

		preview.style.display = "none";
	}
});

</script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>