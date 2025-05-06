package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Model.managerModel;
import Service.ManagerService;

@WebServlet("/managerServlet")
public class ManagerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        managerModel manager = new managerModel(
            request.getParameter("firstName"),
            request.getParameter("lastName"),
            request.getParameter("email"),
            request.getParameter("phone"),
            request.getParameter("password"),
            request.getParameter("status")
        );

        try {
            boolean success = new ManagerService().addManager(manager);
            request.setAttribute("message", success ? 
                "Manager added successfully!" : "Error adding manager");
        } catch (Exception e) {
            request.setAttribute("message", "Error: " + e.getMessage());
        }
        request.getRequestDispatcher("/addManager.jsp").forward(request, response);
    }
}
