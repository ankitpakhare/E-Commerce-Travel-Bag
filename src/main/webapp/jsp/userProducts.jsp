<%@ page import="java.util.List"%>
<%@ page import="model.Product"%>
<%@ page import="dao.UserDAO"%>

<%
UserDAO dao = new UserDAO();

List<Product> products =
dao.getAllProducts();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Luxury Travel Store</title>

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

    background:#0f172a;

    font-family:Arial;

    color:white;
}

/* NAVBAR */

.custom-navbar{

    background:#111827;

    padding:18px 50px;

    display:flex;

    justify-content:space-between;

    align-items:center;

    position:sticky;

    top:0;

    z-index:1000;
}

.logo{

    font-size:32px;

    font-weight:bold;

    color:#38bdf8;
}

.nav-links a{

    color:white;

    text-decoration:none;

    margin-left:30px;

    font-size:18px;

    transition:0.4s;
}

.nav-links a:hover{

    color:#38bdf8;
}

/* HERO */

.hero{

    height:90vh;

    background:
    linear-gradient(rgba(0,0,0,0.6),
    rgba(0,0,0,0.6)),

    url('../images/banner.jpg');

    background-size:cover;

    background-position:center;

    display:flex;

    align-items:center;

    justify-content:center;

    text-align:center;

    flex-direction:column;
}

.hero h1{

    font-size:80px;

    font-weight:bold;

    text-transform:uppercase;

    animation:slideDown 2s ease;
}

.hero p{

    font-size:24px;

    margin-top:20px;

    color:#ddd;
}

.hero-btn{

    margin-top:30px;

    background:#38bdf8;

    color:white;

    padding:15px 35px;

    border-radius:40px;

    text-decoration:none;

    font-size:20px;

    transition:0.4s;
}

.hero-btn:hover{

    background:white;

    color:#111827;
}

@keyframes slideDown{

    from{
        opacity:0;
        transform:translateY(-80px);
    }

    to{
        opacity:1;
        transform:translateY(0);
    }
}

/* PRODUCT SECTION */

.section-title{

    text-align:center;

    font-size:55px;

    margin:80px 0 50px;

    font-weight:bold;

    color:#38bdf8;
}

/* PRODUCT CARD */

.product-card{

    background:#1e293b;

    border-radius:25px;

    overflow:hidden;

    transition:0.5s;

    position:relative;
}

.product-card:hover{

    transform:translateY(-15px);

    box-shadow:0 15px 30px rgba(0,0,0,0.5);
}

.product-img{

    overflow:hidden;
}

.product-img img{

    width:100%;

    height:280px;

    transition:0.5s;
}

.product-card:hover img{

    transform:scale(1.1);
}

.product-body{

    padding:25px;
}

.product-name{

    font-size:28px;

    font-weight:bold;

    margin-bottom:10px;
}

.product-category{

    color:#94a3b8;

    margin-bottom:15px;
}

.price{

    font-size:30px;

    color:#38bdf8;

    font-weight:bold;

    margin-bottom:20px;
}

.rating{

    color:gold;

    margin-bottom:15px;
}

.buy-btn{

    width:100%;

    padding:12px;

    border:none;

    border-radius:40px;

    background:#38bdf8;

    color:white;

    font-size:18px;

    transition:0.4s;
}

.buy-btn:hover{

    background:white;

    color:#111827;
}

/* OFFER TAG */

.offer{

    position:absolute;

    top:15px;

    left:15px;

    background:red;

    padding:8px 15px;

    border-radius:20px;

    font-size:14px;

    font-weight:bold;
}

/* SERVICES */

.services{

    margin-top:100px;
}

.service-box{

    background:#1e293b;

    padding:40px;

    border-radius:20px;

    text-align:center;

    transition:0.4s;
}

.service-box:hover{

    transform:translateY(-10px);
}

.service-icon{

    font-size:60px;

    color:#38bdf8;

    margin-bottom:20px;
}

/* FOOTER */

.footer{

    margin-top:100px;

    background:#111827;

    padding:40px;

    text-align:center;

    color:#aaa;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<div class="custom-navbar">

    <div class="logo">

        BAG STORE

    </div>

    <div class="nav-links">

        <a href="dashboard.jsp">Home</a>

        <a href="#">Products</a>

        <a href="#">Cart</a>

        <a href="#">Orders</a>

    </div>

</div>

<!-- HERO -->

<div class="hero">

    <h1>

        Premium Travel Bags

    </h1>

    <p>

        Stylish || Luxury || Trending Collection

    </p>

    <a href="#products"
     class="hero-btn">

        Shop Now

    </a>

</div>

<!-- PRODUCTS -->

<div class="container"
 id="products">

    <h1 class="section-title">

        Featured Products

    </h1>

    <div class="row g-4">

<%
for(Product p : products){
%>

<div class="col-md-4">

    <div class="product-card">

        <div class="offer">

            20% OFF

        </div>

        <div class="product-img">

            <img src="../images/<%=p.getImage()%>">

        </div>

        <div class="product-body">

            <div class="product-name">

                <%= p.getName() %>

            </div>

            <div class="product-category">

                <i class="fa fa-tag"></i>

                <%= p.getCategory() %>

            </div>

            <div class="rating">

                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-half-alt"></i>

            </div>

            <div class="price">

                <%= p.getPrice() %>

            </div>

            <p>

                Waterproof premium quality
                travel bag with modern design.

            </p>

            <a href="../UserCartServlet?id=<%=p.getId()%>">

                <button class="buy-btn">

                    <i class="fa fa-shopping-cart"></i>

                    Add To Cart

                </button>

            </a>

        </div>

    </div>

</div>

<%
}
%>

    </div>

</div>

<!-- SERVICES -->

<div class="container services">

    <div class="row g-4">

        <div class="col-md-4">

            <div class="service-box">

                <div class="service-icon">

                    <i class="fa fa-truck-fast"></i>

                </div>

                <h3>Fast Delivery</h3>

                <p>

                    Free delivery across India

                </p>

            </div>

        </div>

        <div class="col-md-4">

            <div class="service-box">

                <div class="service-icon">

                    <i class="fa fa-credit-card"></i>

                </div>

                <h3>Secure Payment</h3>

                <p>

                    100% secure online payment

                </p>

            </div>

        </div>

        <div class="col-md-4">

            <div class="service-box">

                <div class="service-icon">

                    <i class="fa fa-headset"></i>

                </div>

                <h3>24x7 Support</h3>

                <p>

                    Customer support anytime

                </p>

            </div>

        </div>

    </div>

</div>

<!-- FOOTER -->

<div class="footer">

    <h3>

        BAG STORE

    </h3>

    <p>

        Premium Ecommerce Shopping Website

    </p>

    <p>

        © 2026 All Rights Reserved

    </p>

</div>

</body>
</html>