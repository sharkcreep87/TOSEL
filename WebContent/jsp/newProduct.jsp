<%@include file="taglib_includes.jsp"%>

<html>
<head>
<script type="text/javascript" src="js/contacts.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="style.css">
<link rel="stylesheet" type="text/css" media="all" href="responsive.css">
<link rel="stylesheet" href="js/jquery-ui-1.10.3.custom.css">
<link rel="stylesheet" href="js/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet" href="js/style.css">
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui-1.10.3.custom.js"></script>
<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
<link rel="stylesheet" href="js/nav.css">
<title><spring:message code="App.Title"></spring:message></title>


<script>

$(function() {
	// $('#datepicker').datepicker({dateFormat : 'dd/mm/yy'}).val();
	$("#datepicker").datepicker();
});



$(document).ready(function(){
    function DateFromString(str){ 
        str = str.split(/\D+/);
        str = new Date(str[2],str[0]-1,(parseInt(str[1])+30));
        return MMDDYYYY(str);
    }
    function MMDDYYYY(str) {
        var ndateArr = str.toString().split(' ');
        var Months = 'Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec';
        return (parseInt(Months.indexOf(ndateArr[1])/4)+1)+'/'+ndateArr[2]+'/'+ndateArr[3];
    }

    function Add7Days() {
        var date = $('.datestart').val();
        var ndate = DateFromString(date);
        return ndate;
    }

    $('.datestart').change(function(){
    	
  
    	$('.dateEnd').val(Add7Days());
    	
    });

});

	
</script>
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
		<h3>Daftar Produk</h3>
		<form:form action="saveProduct.do" method="post" commandName="newProduct">
			<p>
				<label for="customerID">ID Pelanggan</label>
				<form:input type="text" id="customerID" name="customerID" path="customerID" value="${customer.customerID}" readonly="true" />
				<form:errors path="customerID" cssStyle="color:red"></form:errors>
			</p>
			
			<p>
				<label for="nama">Nama Pelanggan</label>
				<input type="text" id="nama" value="${customer.nama}" readonly="true" />
			
			</p>

			<p>
				<label for="producttype">Jenis produk</label>
				<form:select id="producttype" name="producttype" path="producttype">
				<form:option value ="Tosel Jantan">Tosel Jantan</form:option>
				<form:option value ="Tosel Serama">Tosel Serama</form:option>
				</form:select>
			</p>

			<p>
				<label for="productvalue">Nilai Produk RM:</label>
				<form:input type="text" id="productvalue" name="productvalue" path="productvalue" />
				<form:errors path="productvalue" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<label for="commision">Saguhati RM:</label>
				<form:input type="text" id="commision" name="commision" path="commision"/>
				<form:errors path="commision" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<label for="orderdate">Tarikh Belian *</label>
				<fmt:formatDate value="${newProduct.orderdate}" pattern="MM/dd/yyyy" var="date" />
				<form:input type="text" class="datestart" id="datepicker" name="orderdate" path="orderdate" value="" readonly="true" />
				<form:errors path="orderdate" cssStyle="color:red"></form:errors>
			</p>

		

			<p>
				<label for="deliverydate">Tarikh Bayaran *</label>
				<form:input type="text" class="dateEnd" name="deliverydate" path="deliverydate" readonly="true" />
				<form:errors path="deliverydate" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<label for="weight">Berat Produk</label>
				<form:input type="text" id="weight" name="weight" path="weight"  />
				<form:errors path="weight" cssStyle="color:red"></form:errors>
			</p>

			<p>
				<button id="submit" type=submit>Save</button>
				<button id="reset" type="reset">Reset</button>
				<button id="reset" type="reset" onclick="javascript:go('viewAllCustomer.do');">Back</button>
			</p>
		</form:form>
	</section>
</body>
</html>