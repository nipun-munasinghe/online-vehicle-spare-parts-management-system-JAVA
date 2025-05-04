package Controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Service.UserDB;


@WebServlet("/updateUserServlet")
public class updateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String u_firstname = request.getParameter("u_firstname");
		String u_lastname = request.getParameter("u_lastname");
		String u_email = request.getParameter("u_email");
		String u_type = request.getParameter("u_type");
		

		HttpSession session = request.getSession();
		int userID = (int) session.getAttribute("u_id");
		
		boolean updated = UserDB.updateUser( userID,  u_firstname,  u_lastname,  u_email,  u_type);

		if(updated == true) {
			response.sendRedirect("myProfileServlet");
		}
		else {
			// send error with url
			String message = "Error when changing Details. try Again!";
			response.sendRedirect("myProfileServlet?message=" + URLEncoder.encode(message, "UTF-8"));
		}
	}

}
