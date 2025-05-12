package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.UserDB;


@WebServlet("/registerUserServelet")
public class registerUserServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String u_firstname = request.getParameter("u_firstname");
		String u_lastname = request.getParameter("u_lastname");
		String u_email = request.getParameter("u_email");
		String u_password = request.getParameter("u_password");
		String u_type = request.getParameter("u_type");
		
		// Validate user input parameters
		if (u_firstname == null || u_firstname.trim().isEmpty()) {
		    throw new IllegalArgumentException("First name is required.");
		}

		if (u_lastname == null || u_lastname.trim().isEmpty()) {
		    throw new IllegalArgumentException("Last name is required.");
		}

		if (u_email == null || u_email.trim().isEmpty()) {
		    throw new IllegalArgumentException("Email is required.");
		} else if (!u_email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {
		    throw new IllegalArgumentException("Invalid email format.");
		}

		if (u_password == null || u_password.trim().isEmpty()) {
		    throw new IllegalArgumentException("Password is required.");
		} else if (u_password.length() < 6) {
		    throw new IllegalArgumentException("Password must be at least 6 characters long.");
		}

		if (u_type == null || u_type.trim().isEmpty()) {
		    throw new IllegalArgumentException("User type is required.");
		} else {
		    // Example: validate user type against allowed values
		    String[] allowedTypes = {"admin", "user", "guest"};
		    boolean validType = false;
		    for (String type : allowedTypes) {
		        if (u_type.equalsIgnoreCase(type)) {
		            validType = true;
		            break;
		        }
		    }
		    if (!validType) {
		        throw new IllegalArgumentException("Invalid user type.");
		    }
		}

		

		boolean isRegistered = UserDB.registerUser(u_firstname, u_lastname, u_email, u_password, u_type,"profileicon.webp");

		if(isRegistered == true) {
			response.sendRedirect("Login.jsp");
			
		}
		else {
			request.setAttribute("RegisterError", "Registration Failed");
	        RequestDispatcher dis = request.getRequestDispatcher("SignUp.jsp");
	        dis.forward(request, response);
		}
	
	}

}
