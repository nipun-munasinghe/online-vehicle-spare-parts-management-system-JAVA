package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Service.managerService;

@SuppressWarnings("serial")
@WebServlet("/managerActions") 
public class managerActionsServlet extends HttpServlet {

    // Handles POST requests from form submissions
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Get parameters from request
        String email = request.getParameter("managerEmail"); // Manager's email
        String action = request.getParameter("action"); // Action: activate/deactivate/remove
        String message = ""; // Result message

        try {
            // Initialize service class
            managerService service = new managerService();
            boolean success = false;

            // Perform action based on user selection
            switch (action) {
                case "activate":
                    success = service.updateStatus(email, "Active");
                    message = success ? "Activated successfully!" : "Activation failed";
                    break;
                    
                case "deactivate":
                    success = service.updateStatus(email, "Inactive");
                    message = success ? "Deactivated successfully!" : "Deactivation failed";
                    break;
                    
                case "remove":
                    success = service.deleteManager(email);
                    message = success ? "Deleted successfully!" : "Deletion failed";
                    break;
            }

            // Store result message in session
            request.getSession().setAttribute("actionMessage", message);

        } catch (Exception e) {
            // Handle errors
            request.getSession().setAttribute("actionMessage", "Error: " + e.getMessage());
        }

        // Redirect back to manager list page
        response.sendRedirect("managerList");
    }
}
