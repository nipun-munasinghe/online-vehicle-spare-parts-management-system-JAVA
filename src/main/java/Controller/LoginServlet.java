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
			
			session.setAttribute("email",user.getU_email());
			session.setAttribute("password",user.getU_password());
			
			if(user.getUsertype().equals("profile")) {
				response.sendRedirect("myProfileServlet.java");
			}
		}
		else {
			request.setAttribute("loginError","Invalid username or password");
			RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			dis.forward(request, response);
		}
	}
}