package Controller;

import Model.managerModel;
import Service.managerService;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@SuppressWarnings("serial")
@WebServlet("/managerList") // Maps to URL /managerList
public class managerListServlet extends HttpServlet {

	// Handles GET requests to display manager list
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		try {
			// Fetch all managers using service layer
			List<managerModel> managers = new managerService().getAllManagers();
			request.setAttribute("managerList", managers); // Send to JSP

			// Check for action feedback messages
			String message = (String) session.getAttribute("actionMessage");
			if (message != null) {
				request.setAttribute("message", message); // Show in JSP
				session.removeAttribute("actionMessage"); // Clear after display
			}

		} catch (Exception e) {
			// Error handling
			request.setAttribute("error", "Error loading managers: " + e.getMessage());
			// Log error for debugging
			e.printStackTrace();
		}

		// Forward to JSP for display
		request.getRequestDispatcher("/manageManager.jsp").forward(request, response);
	}
}
