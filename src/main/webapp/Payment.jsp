<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Payment.css">
</head>
<body>
	<!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <!-- include top bar -->
    <jsp:include page="TopBar.jsp"/>
    
    <!-- Card details -->
     
    <div class="container1 d-flex justify-content-end p-5 ms-4 me-4">
        <div class="container">
            <div class="row">
              <!-- Left Side - Text -->
              <div class=" textarea col-md-5 d-flex flex-column justify-content-center p-3">
                <h2 class="mb-3">"Secure Payments for Every Drive"</h2>
                <p>
                    This payment page ensures a seamless and secure checkout experience. With SSL encryption, users can confidently enter card details, review the bill summary, and confirm payments for their automobile spare parts effortlessly.
                </p>
              </div>
          
              <!-- Right Side - Payment Form -->
              <div class="col-md-7">
        <div class="row g-3">
            <div class="col-md-6">     
              <div class="card">
                <div class="accordion" id="accordionExample"> 
                  <div class="card">
                    <div class="card-header p-1" >
                        <button class="btn btn-light p-3" type="button">
                          <div class=" paypal d-flex align-items-center justify-content-between">
                            <span>Paypal</span>
                            <img src="https://i.imgur.com/7kQEsHU.png" width="30">  
                          </div>
                        </button>
                    </div>
  
                  </div>
                  <div class="card">
                    <div class="card-header p-0">
                      <h2 class="mb-0">
                        <button class="btn btn-light  p-3 " >
                          <div class="d-flex align-items-center justify-content-between">
  
                            <span>Credit card</span>
                            <div class="icons">
                              <img src="https://i.imgur.com/2ISgYja.png" width="30">
                              <img src="https://i.imgur.com/W1vtnOV.png" width="30">
                              <img src="https://i.imgur.com/35tC99g.png" width="30">
                              <img src="https://i.imgur.com/2ISgYja.png" width="30">
                            </div>
                            
                          </div>
                        </button>
                      </h2>
                    </div>
  
                    <div class="collapse show" >
                      <div class="card-body payment-card-body">
                        
                        <span class="font-weight-normal card-text">Card Number</span>
                        <div class="input">
  
                          <i class="fa fa-credit-card"></i>
                          <input type="text" class="form-control" placeholder="0000 0000 0000 0000">
                          
                        </div> 
  
                        <div class="row mt-3 mb-3">
  
                          <div class="col-md-6">
                            <span class="font-weight-normal card-text">Expiry Date</span>
                            <div class="input">
                              <i class="fa fa-calendar"></i>
                              <input type="text" class="form-control" placeholder="MM/YY">    
                            </div>   
                          </div>
                          <div class="col-md-6">
                            <span class="font-weight-normal card-text">CVC/CVV</span>
                            <div class="input">
                              <i class="fa fa-lock"></i>
                              <input type="text" class="form-control" placeholder="000">    
                            </div>                       
                          </div>
                        </div>
                        <span class="text-muted certificate-text"><i class="fa fa-lock"></i> Your transaction is secured with ssl certificate</span> 
                      </div>
                    </div>
                  </div>
      
                </div>
                
              </div>
              
  
            </div>
  <!-- Summary -->
            <div class="col-md-6">
                <div class="card">
                  <div class=" summary p-3 d-flex justify-content-center">
                      <span class="text-uppercase">Summery of the bill</span> 
                  </div>
                  <hr class="mt-0 line">
                  <div class="p-3">
                    <div class="d-flex justify-content-between mb-2">
                      <span>Shipping</span>
                      <span>Rs.200.00</span>        
                    </div>
                    <div class="d-flex justify-content-between">
                      <span class="fa fa-clock-o">Discount</span>
                      <span>Rs.150.00</span>        
                    </div>          
                  </div>
                  <hr class="mt-0 line">
                  <div class="p-3 d-flex justify-content-between">
                    <div class="d-flex flex-column">
                      <span>Total Payment</span>                 
                    </div>
                    <span>Rs.68 000.00</span>
                  </div>
                  <div class="p-5 d-flex justify-content-center">
                  <button class="btn btn-primary">Confirm Payment</button>                 
                  </div>  
                </div>
            </div>  
          </div>
        </div>  
              </div>
            </div>
          </div>
         
	
	<!-- include footer -->
    <jsp:include page="Footer.jsp"/>
    
	<!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>