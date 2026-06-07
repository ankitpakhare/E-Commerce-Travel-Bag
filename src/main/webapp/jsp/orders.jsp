<%@ page import="java.util.List" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="model.Order" %>

<%
UserDAO dao = new UserDAO();

List<Order> list =
        dao.getAllOrders();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Orders</title>

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
	#eef2f7,
	#d9e4f5);

	font-family:Arial;

	min-height:100vh;

	overflow-x:hidden;
}

/* PAGE TITLE */

.page-title{

	font-size:45px;

	font-weight:bold;

	color:#0d6efd;

	text-align:center;

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

/* TABLE CARD */

.table-card{

	background:white;

	border-radius:25px;

	padding:25px;

	box-shadow:
	0 10px 30px rgba(0,0,0,0.15);

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

/* TABLE */

.table{

	margin-bottom:0;

	border-radius:15px;

	overflow:hidden;
}

.table thead{

	background:
	linear-gradient(
	45deg,
	#141e30,
	#243b55);

	color:white;
}

.table th{

	font-size:16px;

	padding:16px;

	text-align:center;

	vertical-align:middle;
}

.table td{

	padding:16px;

	vertical-align:middle;

	text-align:center;

	font-size:15px;
}

/* ROW HOVER */

.table tbody tr{

	transition:0.3s;
}

.table tbody tr:hover{

	background:#f1f7ff;

	transform:scale(1.01);
}

/* PRICE */

.price{

	font-weight:bold;

	color:#198754;

	font-size:17px;
}

/* MOBILE CARD VIEW */

.mobile-card{

	display:none;
}

/* RESPONSIVE */

@media(max-width:992px){

	.page-title{

		font-size:38px;
	}
}

@media(max-width:768px){

	.page-title{

		font-size:32px;
	}

	.table-card{

		padding:15px;
	}

	.desktop-table{

		display:none;
	}

	.mobile-card{

		display:block;
	}

	.order-card{

		background:white;

		border-radius:20px;

		padding:20px;

		margin-bottom:20px;

		box-shadow:
		0 8px 20px rgba(0,0,0,0.12);

		transition:0.4s;
	}

	.order-card:hover{

		transform:translateY(-5px);
	}

	.order-item{

		margin-bottom:10px;

		font-size:15px;

		word-break:break-word;
	}

	.order-label{

		font-weight:bold;

		color:#0d6efd;
	}
}

@media(max-width:576px){

	.page-title{

		font-size:26px;
	}

	.order-card{

		padding:15px;
	}

	.order-item{

		font-size:14px;
	}
}

</style>

</head>

<body>

<jsp:include page="navbar.jsp"></jsp:include>

<div class="container py-5">

    <h1 class="page-title">

    	<i class="fa fa-cart-shopping"></i>

        All Orders

    </h1>

    <div class="table-card">

	    <!-- DESKTOP TABLE -->

	    <div class="table-responsive desktop-table">

		    <table class="table table-hover align-middle">

		        <thead>

		            <tr>

		                <th>ID</th>
		                <th>Customer Name</th>
		                <th>Mobile</th>
		                <th>Address</th>
		                <th>Total Amount</th>

		            </tr>

		        </thead>

		        <tbody>

		        <%
		        for(Order o : list){
		        %>

		            <tr>

		                <td>

		                    #<%= o.getId() %>

		                </td>

		                <td>

		                    <%= o.getCustomerName() %>

		                </td>

		                <td>

		                    <%= o.getMobile() %>

		                </td>

		                <td>

		                    <%= o.getAddress() %>

		                </td>

		                <td class="price">

		                     <i class="fa fa-indian-rupee-sign"></i>

		                     <%= o.getTotalAmount() %>

		                </td>

		            </tr>

		        <%
		        }
		        %>

		        </tbody>

		    </table>

	    </div>

	    <!-- MOBILE VIEW -->

	    <div class="mobile-card">

	    <%
	    for(Order o : list){
	    %>

	    	<div class="order-card">

	    		<div class="order-item">

	    			<span class="order-label">
	    				Order ID :
	    			</span>

	    			#<%= o.getId() %>

	    		</div>

	    		<div class="order-item">

	    			<span class="order-label">
	    				Customer :
	    			</span>

	    			<%= o.getCustomerName() %>

	    		</div>

	    		<div class="order-item">

	    			<span class="order-label">
	    				Mobile :
	    			</span>

	    			<%= o.getMobile() %>

	    		</div>

	    		<div class="order-item">

	    			<span class="order-label">
	    				Address :
	    			</span>

	    			<%= o.getAddress() %>

	    		</div>

	    		<div class="order-item price">

	    			<i class="fa fa-indian-rupee-sign"></i>

	    			<%= o.getTotalAmount() %>

	    		</div>

	    	</div>

	    <%
	    }
	    %>

	    </div>

    </div>

</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>