package Controller;

import Model.messageModel;
import Service.messageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/messageList")
public class messageListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // Handles GET requests to list all messages
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        try {
            // Get all messages from the service layer
            List<messageModel> messages = new messageService().getAllMessages();
            request.setAttribute("messageList", messages);

            // Handle session messages (for feedback after actions)
            String actionMessage = (String) session.getAttribute("actionMessage");
            if (actionMessage != null) {
                request.setAttribute("message", actionMessage);
                session.removeAttribute("actionMessage");
            }

        } catch (Exception e) {
            request.setAttribute("error", "Error loading messages: " + e.getMessage());
            e.printStackTrace();
        }

        // Forward to JSP page for rendering
        request.getRequestDispatcher("/Manage_msg.jsp").forward(request, response);
    }
}
