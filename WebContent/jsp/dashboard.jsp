<%@include file="taglib_includes.jsp"%>
<%@include file="header.jsp"%>
 <section id="main-content">
          <section class="wrapper">
              <!--state overview start-->
              <div class="row state-overview">
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol terques">
                              <i class="icon-user"></i>
                          </div>
                          <div class="value">
                            <h1 class=" count1">
                             ${count}
                             </h1>
                              <p>BIL. PELANGGAN</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol red">
                              <i class="icon-tags"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count2">
                                  10
                              </h1>
                              <p>BIL. PRODUK</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol yellow">
                              <i class="icon-shopping-cart"></i>
                          </div>
                          <div class="value">
                              <h1 class=" count3">
                                  50
                              </h1>
                              <p>INVOIS</p>
                          </div>
                      </section>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                      <section class="panel">
                          <div class="symbol blue">
                              <i class="icon-bar-chart"></i>
                          </div>
                          <div class="value">
                              <h1>
                                  40
                              </h1>
                              <p>Total Profit</p>
                          </div>
                      </section>
                  </div>
              </div>
              
                 <div class="col-lg-8">
                      <!--work progress start-->
                      <section class="panel">
                          <div class="panel-body progress-panel">
                              <div class="task-progress">
                                  <h1>Tempoh Tamat</h1>
                                  
                              </div>
                              
                          </div>
                          <table class="table table-hover personal-task">
                              <tbody>
                              
                              	<c:choose>
					<c:when test="${empty SEARCH_PURCHASE_RESULTS_KEY}">
						<tr>
							<td colspan="4">No Results found</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="Product" items="${SEARCH_PURCHASE_RESULTS_KEY}">
                              <tr>
                                  <td>Pelanggan</td>
                                  <td>
                                      ${Product.customerID}
                                  </td>
                                  <fmt:formatDate value="${Product.orderdate}" pattern="MM/dd/yyyy" var="date" />
                                  <td>
                                      <span class="badge bg-important">${date}</span>
                                  </td>
                                  
                              </tr>
                            </c:forEach></c:otherwise></c:choose>
                              </tbody>
                          </table>
                     </section>
      </section>
                      <!--work progress end-->
                  </div>
 <%@include file="footer.jsp"%>