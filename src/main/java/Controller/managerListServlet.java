package Controller;

import Model.managerModel;
import Service.managerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/managerList")
public class managerListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Handles GET requests to list all managers
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        try {
            // Get all managers from the service layer
            List<managerModel> managers = new managerService().getAllManagers();
            request.setAttribute("managerList", managers);

            // Handle session messages (for feedback after actions)
            String message = (String) session.getAttribute("actionMessage");
            if (message != null) {
                request.setAttribute("message", message);
                session.removeAttribute("actionMessage");
            }

        } catch (Exception e) {
            request.setAttribute("error", "Error loading managers: " + e.getMessage());
            e.printStackTrace();
        }

        // Forward to JSP page for rendering
        request.getRequestDispatcher("/manageManager.jsp").forward(request, response);
    }
}
