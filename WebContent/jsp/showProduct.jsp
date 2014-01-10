<%@include file="taglib_includes.jsp"%>

<html>
<head>
<script type="text/javascript" src="js/contacts.js"></script>
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>
<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
<title><spring:message code="App.Title"></spring:message></title>
<link rel="stylesheet" type="text/css" media="all" href="style.css">
<link rel="stylesheet" type="text/css" media="all" href="responsive.css">
<link rel="stylesheet" href="js/style.css">
<link rel="stylesheet" href="js/jquery-ui-1.10.3.custom.css">
<link rel="stylesheet" href="js/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet" href="js/nav.css">
</head>
<body>
	<section id="container">
	<div id='cssmenu'>
<ul>
   <li class='active'><a href='viewAllCustomer.do'><span>Home</span></a></li>
   <li><a href='saveCustomer.do'><span>Daftar Pelanggan</span></a></li>
   <li><a href='searchNotpay.do'><span>Bayaran Tertunggak</span></a></li>
   <li class='last'><a href='#'><span>Contact</span></a></li>
</ul>
</div>
		<div class="CSSTableGenerator">
			<table>
			<h2>Produk Detail</h2>
				<tr>
					<td>Jenis Produk</td>
					<td>Nilai produk</td>
					<td>Nilai Saguhati</td>
					<td>Tarikh Belian</td>
					<td>Tarikh Bayaran</td>
					<td>Berat Produk</td>
				</tr>
				<c:choose>
					<c:when test="${empty SEARCH_PRODUCT_RESULTS_KEY}">
						<tr>
							<td colspan="4">No Results found</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="Product" items="${SEARCH_PRODUCT_RESULTS_KEY}">
							<tr>
								
								<td>${Product.producttype}</td>
								<td>${Product.productvalue}</td>
								<td>${Product.commision}</td>
								<fmt:formatDate value="${Product.orderdate}" pattern="MM/dd/yyyy" var="orderdate" />
								<td>${orderdate}</td>
								<fmt:formatDate value="${Product.deliverydate}" pattern="MM/dd/yyyy" var="deliverydate" />
								<td>${deliverydate}</td>
								<td>${Product.weight}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</section>
</body>
</html>