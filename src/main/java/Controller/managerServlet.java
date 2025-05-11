package Controller;

import Model.managerModel;
import Service.managerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/managerServlet")
public class managerServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private managerService managerService = new managerService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get parameters
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String status = request.getParameter("status");

        // Server-side validation
		StringBuilder errorMsg = new StringBuilder();
		if (firstName == null || firstName.trim().length() < 2)
			errorMsg.append("First name must be at least 2 characters. ");
		if (lastName == null || lastName.trim().length() < 2)
			errorMsg.append("Last name must be at least 2 characters. ");
		if (email == null || !email.matches("^[\\w\\.-]+@[\\w\\.-]+\\.\\w{2,}$"))
			errorMsg.append("Invalid email format. ");
		if (phone == null || !phone.matches("\\d{10}"))
			errorMsg.append("Phone must be 10 digits. ");
		if (password == null || !password.matches("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$"))
			errorMsg.append("Password must be at least 8 characters and include a letter and a number. ");
		if (status == null || (!status.equals("Active") && !status.equals("Inactive")))
			errorMsg.append("Status must be Active or Inactive. ");

        // Handle validation errors
        if (errorMsg.length() > 0) {
            request.getSession().setAttribute("actionMessage", "Validation Error: " + errorMsg.toString());
            response.sendRedirect("managerList");
            return;
        }
        // Create managerModel object
        managerModel manager = new managerModel(firstName, lastName, email, phone, password, status);

        HttpSession session = request.getSession();

        try {
            boolean success = managerService.addManager(manager);
            if (success) {
                session.setAttribute("actionMessage", "Manager added successfully!");
            } else {
                session.setAttribute("actionMessage", "Failed to add manager.");
            }
        } catch (Exception e) {
            session.setAttribute("actionMessage", "Error: " + e.getMessage());
            e.printStackTrace();
        }

        // Redirect to manager list page to prevent form resubmission
        response.sendRedirect(request.getContextPath() + "/managerList");
    }
}
