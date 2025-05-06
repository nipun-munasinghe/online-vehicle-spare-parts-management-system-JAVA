package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Service.ManagerService;

@WebServlet("/managerList")
public class ManagerListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            request.setAttribute("managerList", new ManagerService().getAllManagers());
        } catch (Exception e) {
            request.setAttribute("error", "Error fetching managers: " + e.getMessage());
        }
        request.getRequestDispatcher("/manageManager.jsp").forward(request, response);
    }
}
