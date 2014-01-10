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
		<h3>Edit Customer Form</h3>
		<form:form action="updateCustomer.do" method="post" commandName="editCustomer">
			<p>
				<label for="name">Id</label>
				<form:input type="text" id="customerID" name="customerID" path="customerID" readonly="true" />
				<form:errors path="nama" cssStyle="color:red"></form:errors>
			</p>
			
			<p>
				<label for="name">Nama *</label>
				<form:input type="text" id="nama" name="nama" path="nama" />
				<form:errors path="nama" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<label for="waris">Nama Waris</label>
				<form:input type="text" id="waris" name="waris" path="waris" />
			</p>

			<p>
				<label for="ic">No. IC *</label>
				<form:input type="text" id="ic" name="ic" path="ic" />
				<form:errors path="ic" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<label for="tel">H/P *</label>
				<form:input type="text" id="tel" name="tel" path="tel" />
				<form:errors path="tel" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<label for="acc">Nombor Akaun bank *</label>
				<form:input type="text" id="no_acc" name="no_acc" path="no_acc" />
				<form:errors path="no_acc" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<label for="email">Email *</label>
				<form:input type="text" id="email" name="email" path="email" />
				<form:errors path="email" cssStyle="color:red"></form:errors>
			</p>

				<form:input type="hidden" name="produk" path="produk" />
				<fmt:formatDate value="${editCustomer.paymentDate}" pattern="MM/dd/yyyy" var="date" />
				<input type="hidden" name="paymentDate" value="${date}" />

			<p>
				<label for="alamat">Alamat *</label>
				<form:textarea id="alamat" path="alamat" name="alamat" cols="30" rows="10" />
				<form:errors path="alamat" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<button id="submit" type=submit>Save</button>
				<button id="reset" type="reset">Reset</button>
				<button id="reset" type="reset" onclick="javascript:deleteContact('deleteCustomer.do?id=${editCustomer.customerID}');">Delete</button>
				<button id="reset" type="reset" onclick="javascript:go('viewAllCustomer.do');">Back</button>
			</p>
		</form:form>
	</section>
</body>
</html>