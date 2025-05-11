package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.User;
import Service.UserDB;



@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException {
		String email =request.getParameter("u_email");
		String password = request.getParameter("u_password");
		User user = null;
		
		try {
			//validate user
			user = UserDB.isValidUser(email, password);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		
		if(user != null) {
<<<<<<< Updated upstream
			session.setAttribute("userid",user.getU_id());
			session.setAttribute("Fname",user.getU_firstname());
			session.setAttribute("Lname",user.getU_lastname());
			session.setAttribute("Uimage",user.getU_image());
			session.setAttribute("UserType",user.getU_type());
			
			if(user.getU_type().equals("customer")) {
=======
			session.setAttribute("userID",user.getU_id());
			session.setAttribute("email",user.getU_email());
			session.setAttribute("password",user.getU_password());
			
			if(user.getU_type().equals("profile")) {
>>>>>>> Stashed changes
				response.sendRedirect("myProfileServlet.java");
			}
			else if (user.getU_type().equals("admin")) {
				response.sendRedirect("myProfileServlet.java");
			}
			else if (user.getU_type().equals("deliveryperson")) {
				response.sendRedirect("myProfileServlet.java");
			}
			else if (user.getU_type().equals("manager")) {
				response.sendRedirect("myProfileServlet.java");}
			}

		else {
			request.setAttribute("loginError","Invalid username or password");
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}
	}
}