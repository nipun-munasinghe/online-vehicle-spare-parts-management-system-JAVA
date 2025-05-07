package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Model.managerModel;
import Service.ManagerService;

@SuppressWarnings("serial")
@WebServlet("/managerServlet")
public class ManagerServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Create manager object from form data
		managerModel manager = new managerModel(request.getParameter("firstName"), request.getParameter("lastName"),
				request.getParameter("email"), request.getParameter("phone"), request.getParameter("password"),
				request.getParameter("status"));

		try {
			// Add manager using service layer
			boolean success = new ManagerService().addManager(manager);
			String message = success ? "Manager added successfully!" : "Error adding manager";
			request.getSession().setAttribute("actionMessage", message);

		} catch (Exception e) {
			request.getSession().setAttribute("actionMessage", "Error: " + e.getMessage());
		}

		// Redirect to prevent duplicate form submissions
		response.sendRedirect("managerList");
	}
}
