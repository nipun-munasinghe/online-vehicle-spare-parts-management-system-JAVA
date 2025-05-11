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

@WebServlet("/myProfileServelet")
public class myProfileServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		int userid = (int) session.getAttribute("userid");

		User usr = UserDB.getUserdetails(userid);

		if (usr != null) {

			System.out.println("hri");
			String message = request.getParameter("message");

			if (message == null || message.trim().isEmpty()) {

			} else {
				request.setAttribute("Error", message);
			}

			request.setAttribute("user", usr);
			RequestDispatcher dispatcher = request.getRequestDispatcher("user_profile.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("Login.jsp");
		}
	}

}
