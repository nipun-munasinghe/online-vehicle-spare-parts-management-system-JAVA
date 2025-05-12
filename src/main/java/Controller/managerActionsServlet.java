
package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Service.managerService;

@SuppressWarnings("serial")
@WebServlet("/managerActions")
public class managerActionsServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("managerEmail");
		String action = request.getParameter("action");
		String message = "";

		try {
			managerService service = new managerService();
			boolean success = false;

			switch (action) {
			case "activate":
				success = service.updateStatus(email, "Active");
				message = success ? "Activated successfully!" 
						: "Activation failed";
				break;
			case "deactivate":
				success = service.updateStatus(email, "Inactive");
				message = success ? "Deactivated successfully!" 
						: "Deactivation failed";
				break;
			case "remove":
				success = service.deleteManager(email);
				message = success ? "Deleted successfully!" 
						: "Deletion failed";
				break;
			}

			request.getSession().setAttribute("actionMessage", message);

		} catch (Exception e) {
			request.getSession().setAttribute("actionMessage", "Error: " + e.getMessage());
		}

		response.sendRedirect("managerList");
	}
}

