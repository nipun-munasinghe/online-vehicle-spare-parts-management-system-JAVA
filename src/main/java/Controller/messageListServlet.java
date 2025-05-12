package Controller;

import Model.messageModel;
import Service.messageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/manageMessages")
public class messageListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private messageService messageService = new messageService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Fetch all messages from the database
            List<messageModel> messages = messageService.getAllMessages();
            // Set as request attribute for JSP
            request.setAttribute("messageList", messages);
        } catch (Exception e) {
            // On error, set error message for JSP
            request.setAttribute("error", "Error loading messages: " + e.getMessage());
            e.printStackTrace(); // For debugging in server logs
        }
        // Forward to JSP page
        request.getRequestDispatcher("/Manage_msg.jsp").forward(request, response);
    }
}
