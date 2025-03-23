<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Manager</title>

    <!-- Bootstrap CSS for styling -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

    <!-- Bootstrap Icons for button icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

    <!-- icon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">

    <!-- Custom CSS files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addManager.css">
</head>

<body>

    <!-- Include header and top bar for navigation -->
    <jsp:include page="Header.jsp"/>
    <jsp:include page="TopBar.jsp"/>

    <div class="container mt-5">
         <div class="row">

            <!-- Left Section for Manager Actions -->
            <div class="col-12">

                <!-- Manager Status Actions -->
                <h2 class="text-white">Check, Activate, Deactivate, and Remove Managers</h2>
                <div class="card p-4 mb-4">
                    <form action="#" method="post" class="d-flex flex-wrap gap-2">
                        
                        <!-- Input field for manager's email -->
                        <input type="email" class="form-control" name="managerEmail" placeholder="Enter an email to check" required>

                        <!-- Buttons for different actions -->
                        <button type="submit" name="action" value="activate" class="btn btn-success">
                               <i class="bi bi-check-circle-fill">
                               </i> Activate
                        </button>
                        
                        <button type="submit" name="action" value="deactivate" class="btn btn-primary">
                              <i class="bi bi-exclamation-circle-fill">
                              </i> Deactivate
                        </button>
                        
                        <button type="submit" name="action" value="remove" class="btn btn-danger">
                               <i class="bi bi-x-circle-fill">
                               </i> Remove
                        </button>
                        
                    </form>
                </div>

                <!-- Manager List Section -->
              <div class="d-flex justify-content-between align-items-center mb-2">
                <h2 class="text-white">Manager List</h2>
                    
                 <!-- Button to open Add Manager modal -->
                 <button class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addManagerModal">
                 <i class="bi bi-person-plus-fill"></i> Add Manager
                 </button>
              </div>

                <!-- Table to display the list of managers -->
              <div class="table-responsive">
                  <table class="table table-dark table-bordered">
                  <thead>
                     <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                        <th>Status</th>
                     </tr>
                  </thead>
                  
                  <tbody>
                     <tr class="clickable-row">
                         <td>Kamal</td>
                         <td>Perera</td>
                         <td>kamal.perera@example.lk</td>
                         <td>+94 71 234 5678</td>
                         <td>Active</td>
                     </tr>
                     
                     <tr class="clickable-row">
                          <td>Nimali</td>
                          <td>Fernando</td>
                          <td>nimali.fernando@example.lk</td>
                          <td>+94 77 987 6543</td>
                          <td>Inactive</td>
                      </tr>
                      
                       <tr class="clickable-row">
                           <td>Ruwan</td>
                           <td>Silva</td>
                           <td>ruwan.silva@example.lk</td>
                           <td>+94 76 123 4567</td>
                           <td>Active</td>
                        </tr>

                    </table>
                </div>

                <!-- Modal for Adding a Manager -->
                <div class="modal fade" id="addManagerModal" tabindex="-1" aria-labelledby="addManagerModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content bg-dark text-white">
                            
                           <!-- Modal Header -->
                <div class="modal-header border-0">
                <h5 class="modal-title" id="addManagerModalLabel">
                <i class="bi bi-person-plus-fill"></i> Add Manager
                </h5>
   
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                      </div>

                            <!-- Modal Body - Add Manager Form -->
                            <div class="modal-body">
                                <form action="#" method="post">
                                    <div class="mb-3">
                                        <input type="text" class="form-control" placeholder="First Name" required>
                                    </div>
                                    <div class="mb-3">
                                        <input type="text" class="form-control" placeholder="Last Name" required>
                                    </div>
                                    <div class="mb-3">
                                        <input type="email" class="form-control" placeholder="E-mail" required>
                                    </div>
                                    <div class="mb-3">
                                        <input type="text" class="form-control" placeholder="Phone Number" required>
                                    </div>
                                    <div class="mb-3">
                                        <input type="password" class="form-control" placeholder="Password" required>
                                    </div>
                                    <button type="submit" class="btn btn-success w-100">
                                        <i class="bi bi-plus-circle-fill"></i> Add
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- Bootstrap JavaScript (ensure Bootstrap 5 is included) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
