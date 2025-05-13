package Controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/registerUserServelet")
public class registerUserServelet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String firstname = request.getParameter("u_firstname");
        String lastname = request.getParameter("u_lastname");
        String email = request.getParameter("u_email");
        String password = request.getParameter("u_password");
        String confirmPassword = request.getParameter("confirmpassword");
        String userType = request.getParameter("u_type");

        // Basic server-side validation
        if (firstname == null || firstname.isEmpty() ||
            lastname == null || lastname.isEmpty() ||
            email == null || email.isEmpty() ||
            password == null || password.isEmpty() ||
            confirmPassword == null || confirmPassword.isEmpty() ||
            userType == null || userType.isEmpty()) {
            request.setAttribute("RegisterError", "All fields are required.");
            request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
            return;
        }

        if (!password.equals(confirmPassword)) {
            request.setAttribute("RegisterError", "Passwords do not match.");
            request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
            return;
        }

        // Password must be at least 8 chars, contain letters and numbers
        if (!password.matches("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}$")) {
            request.setAttribute("RegisterError", "Password must be at least 8 characters and contain both letters and numbers.");
            request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
            return;
        }

        // TODO: Save user to database here (pseudo code)
        // boolean registrationSuccessful = saveUserToDatabase(...);
        boolean registrationSuccessful = true; // Simulate success

        if (registrationSuccessful) {
            request.setAttribute("RegisterSuccess", "Registration successful! Welcome, " + firstname + ".");
        } else {
            request.setAttribute("RegisterError", "Registration failed. Please try again.");
        }
        request.getRequestDispatcher("/SignUp.jsp").forward(request, response);
    }
}

