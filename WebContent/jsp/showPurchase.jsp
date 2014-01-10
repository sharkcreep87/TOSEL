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
</head>
<body>
	<section id="container">
		<div class="CSSTableGenerator">
			<table>
			<h2>Detail Bayaran</h2>
				<tr>
					<td>Id Pelangan</td>
					<td>Jenis produk</td>
					<td>Tarikh Bayaran</td>
				</tr>
				<c:choose>
					<c:when test="${empty SEARCH_PURCHASE_RESULTS_KEY}">
						<tr>
							<td colspan="4">No Results found</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="Purchase" items="${SEARCH_PURCHASE_RESULTS_KEY}">
							<tr>
								<td>${Purchase.customerID}</td>
								<td>${Purchase.purchasetype}</td>
								<fmt:formatDate value="${Purchase.purchasedate}" pattern="MM/dd/yyyy" var="date" />
								<td>${date}</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table>
		</div>
	</section>
</body>
</html>