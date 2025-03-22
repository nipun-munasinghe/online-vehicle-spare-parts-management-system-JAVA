<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Manager</title>
    
    <!-- Link bootstrap style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    
    <!-- Link bootstrap icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
    
    <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/images/favicon.ico" type="image/x-icon">
    
    <!-- Link style sheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/common.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/addManager.css">

</head>

<body>
    <!-- include header -->
    <jsp:include page="Header.jsp"/>
    
    <jsp:include page="TopBar.jsp"/>
    
    <!-- Flex Container for Left and Right Sections -->
    <div class="container mt-5 flex-container">
    
        <!-- Manage Manager Section (Left) -->
        <div class="manage-manager-section">
  
            <!-- Check, Activate, Deactivate, and Remove Managers Form -->
            <h2 class="text-white">Check, Activate, Deactivate, and Remove Managers</h2>
            
            <div class="card p-4" style="background-color:#393E46;">
            <form action="#" method="post" class="d-flex gap-2">
            
        <!-- Check Manager by Email -->
                  <input type="email" class="form-control" name="managerEmail" placeholder="Enter an email to check" required>
        <!-- Activate Manager Button with Emoji -->
                  <button type="submit" name="action" value="activate" class="btn btn-success">
                             ✅ Activate
                  </button>
        <!-- Deactivate Manager Button with Emoji -->
                  <button type="submit" name="action" value="deactivate" class="btn btn-primary">
                             ⛔ Deactivate
                  </button>
        
        <!-- Remove Manager Button with Emoji -->
                  <button type="submit" name="action" value="remove" class="btn btn-danger">
                             ❌ Remove
                  </button>
        
          </form>
</div>

            <!-- Manager List -->
            <h2 class="text-white mt-4">Manager List</h2>
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
                        <!-- Dynamic rows will be populated from the backend -->
                    </tbody>
                </table>
            </div>
        </div>
        
        <!-- Add Manager Section (Right) -->
        <div class="add-manager-section">
            <h2 class="text-white">Add Manager</h2>
            <div class="card p-4 form-container">
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
                    <button type="submit" class="btn btn-success w-100">Add Manager</button>
                </form>
            </div>
        </div>
    </div>

    <br><br>

    <!-- Link bootstrap script file -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>