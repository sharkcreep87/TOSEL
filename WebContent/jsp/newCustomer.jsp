<%@include file="taglib_includes.jsp"%>
<%@include file="header.jsp"%>
 
<section id="main-content">
          <section class="wrapper">
              <!-- page start-->
          
                  <div class="col-lg-12">
                  <div class="row">
                 
                      <section class="panel">
                          <header class="panel-heading">
                              DAFTAR PELANGGAN
                          </header>
                          <div class="panel-body">
                         <form:form action="saveCustomer.do" method="post" commandName="newCustomer" class="form-horizontal" role="form">
                             
              
                            <div class="form-group">
                                          <label class="col-lg-2 control-label">NAMA</label>
                                          <div class="col-lg-10">
                                              <form:input type="text" path="nama" class="form-control"  minlength="5" placeholder="Nama Penuh" required="required"/>
                                          </div>
                                      </div>
                                      
                                       <div class="form-group">
                                          <label class="col-lg-2 control-label">NO. K/P</label>
                                          <div class="col-lg-10">
                                              <form:input type="text" path="ic" class="form-control sm-input" placeholder="NO. K/P" required="required"/>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                          <label class="col-lg-2 control-label">NO. TEL </label>
                                          <div class="col-lg-10">
                                              <form:input type="text" placeholder="NO. TEL" path="tel" data-mask="999-9999999" class="form-control sm-input"/>
                                          </div>
                                      </div>
                                      <div class="form-group">
                                         <label class="col-lg-2 control-label" for="exampleInputEmail2">Email</label>
                                         <div class="col-lg-10">
                                                <form:input type="email" path="email" class="form-control sm-input" id="exampleInputEmail5" placeholder="Alamat Email"/>
                                                </div>
                                          
                                      </div>
                                      
                                                                            <div class="form-group">
                                         <label class="col-lg-2 control-label" for="waris">Nama Waris</label>
                                         <div class="col-lg-10">
                                                <form:input type="email" path="email" class="form-control sm-input" id="exampleInputEmail5" placeholder="Nama Penuh Waris"/>
                                                </div>
                                          
                                      </div>
                                      
                                                                            <div class="form-group">
                                         <label class="col-lg-2 control-label" for="exampleInputEmail2">Nama Bank</label>
                                         <div class="col-lg-10">
                                                <form:select path="nama_bank" class="form-control m-bot15" required="required">
                                              <option>MAYBANK</option>
                                              <option>CIMB BANK</option>
                                              <option>RHB BANK</option>
                                          </form:select>
                                                </div>
                                          
                                      </div>
                                      
                                                                         <div class="form-group">
                                         <label class="col-lg-2 control-label" for="waris">NO. Akaun Bank</label>
                                         <div class="col-lg-10">
                                                <form:input type="email" path="no_acc" class="form-control sm-input"  placeholder="NO. Akaun Bank" required="required"/>
                                                </div>
                                          
                                      </div>  
                                                                      <div class="form-group">
                                         <label class="col-lg-2 control-label" for="waris">Alamat</label>
                                         <div class="col-lg-10">
                                               <form:textarea class="form-control" path="alamat" cols="60" rows="5"></form:textarea>
                                                </div>
                                      </div>
                                        <button type="submit" class="btn btn-info">Submit</button>
                                      </form:form>
                          </div></section></div></div></section></section>
	
<%@include file="footer.jsp"%>