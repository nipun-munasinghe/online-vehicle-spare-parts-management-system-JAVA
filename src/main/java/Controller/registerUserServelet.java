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
