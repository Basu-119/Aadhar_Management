<%@page import="com.Digit.Aahar_pro.bean.AadharDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="Aadhar.css">

<title>Aadhar Card Details</title>

</head>
<body>
	<div class="aadhar-card">
		<div class="aadhar-logo">Aadhar Card</div>

		<div class="aadhar-details">
			<%
			session = request.getSession();
			AadharDetails p = (AadharDetails) session.getAttribute("spx");
			%>

			<div class="card">
				<header>
					<nav>
						<img class="logo" src="img/logo.png" alt="">
						<ul>
							<li><a href="" id="h">Bharat Sarkar</a></li>
							<br>
							<li><a href="" id="e">Government of India</a></li>
						</ul>
					</nav>

				</header>
				<section>
					<img class="pic" src="img/peace.png" alt="">
					<div class="detail">
						<p></p>
						<p>
							NAME:
							<%=p.getU_name()%></p>
						<p>
							DOB:
							<%=p.getDob()%></p>
						<p>MALE</p>

					</div>
					<div class="barcode">
						<img src="img/qrcode.png" alt="">
					</div>

				</section>
				<h1 id="btm">
					<%=p.getA_id()%>
				</h1>
				<div class="bottom">
					<h1>
						<span></span>
					</h1>
				</div>





			</div>

		</div>
	</div>
</body>
</html>