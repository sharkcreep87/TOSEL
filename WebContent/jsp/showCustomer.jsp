<%@include file="taglib_includes.jsp"%>
<%@include file="header.jsp"%>
 
 <section id="main-content">
          <section class="wrapper">
          
              
 <!-- page start-->
              <div class="row">
                  <div class="col-lg-12">
                      <section class="panel">
                          <header class="panel-heading">
                             BUTIRAN PELANGGAN
                          </header>
                          <div class="panel-body">
                                <div class="adv-table">
                                    <table  class="display table table-bordered table-striped" id="example">
                                      <thead>
                                      <tr>
	<%-- 	<form:form action="searchCustomer.do" method="post" commandName="showCustomer">
		
				
						Masukkan No K/P Pelanggan :
					
						<input type="text" name="ic" />
					
						<button id="submit" type="submit">Search</button>
				
			
		</form:form><br>
		<div class="CSSTableGenerator">
			<table> --%>
			
			
					<td>Nama</td>
					<td>Alamat</td>
					<td>No. Ic</td>
					<td>Email</td>
					<td>No.tel</td>
					<td>Produk</td>
					<td>Produk Detail</td>
					<td>Kemaskini</td>
				</tr>
				<c:choose>
					<c:when test="${empty SEARCH_CONTACTS_RESULTS_KEY}">
						<tr>
							<td colspan="4">No Results found</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="Customer" items="${SEARCH_CONTACTS_RESULTS_KEY}">
							<tr>
								
								<td>${Customer.nama}</td>
								<td>${Customer.alamat}</td>
								<td>${Customer.ic}</td>
								<td>${Customer.email}</td>
								<td>${Customer.tel}</td>
								<td> <a class="btn btn-warning" data-toggle="modal" href="#myModal">
                                  Tambah Produk
                              </a></td>
								<td> <a class="btn btn-success" data-toggle="modal" href="#myModal2">
                                 Produk
                              </a></td>
								<td>
								
								<a href="updateCustomer.do?id=${Customer.customerID}"><i class=" icon-edit"></i></a>
								<i class=" icon-trash"><a href="javascript:deleteContact('deleteCustomer.do?id=${Customer.customerID}');"></a></i>
								
								</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</table> 
			
			 <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
                                  <div class="modal-dialog">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                              <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                              <h4 class="modal-title">Tambah Produk</h4>
                                          </div>
                                          <div class="modal-body">

                                              <form:form role="form" action="saveProduct.do" method="post" commandName="newProduct">
                                                  <div class="form-group">
                                                      <label for="exampleInputEmail1">Email address</label>
                                                      <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Enter email">
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="exampleInputPassword1">Password</label>
                                                      <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
                                                  </div>
                                                  <div class="form-group">
                                                      <label for="exampleInputFile">File input</label>
                                                      <input type="file" id="exampleInputFile3">
                                                      <p class="help-block">Example block-level help text here.</p>
                                                  </div>
                                                  <div class="checkbox">
                                                      <label>
                                                          <input type="checkbox"> Check me out
                                                      </label>
                                                  </div>
                                                  <button type="submit" class="btn btn-default">Submit</button>
                                              </form:form>
                                          </div>
                                      </div>
                                  </div>
                              </div>
		           </div>
                          </div>
                      </section>
                  </div>
              </div>
<%@include file="footer.jsp"%>