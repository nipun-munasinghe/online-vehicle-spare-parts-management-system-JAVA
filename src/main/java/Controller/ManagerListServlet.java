package Controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.managerModel;
import Service.ManagerService;

@SuppressWarnings("serial")
@WebServlet("/managerList")
public class ManagerListServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
// Get all managers from service layer
			List<managerModel> managers = new ManagerService().getAllManagers();
			request.setAttribute("managerList", managers);

// Handle session messages
			HttpSession session = request.getSession();
			String message = (String) session.getAttribute("actionMessage");
			if (message != null) {
				request.setAttribute("message", message);
				session.removeAttribute("actionMessage");
			}

		} catch (Exception e) {
			request.setAttribute("error", "Error loading managers: " + e.getMessage());
		}
// Forward to JSP
		request.getRequestDispatcher("/manageManager.jsp").forward(request, response);
	}
}