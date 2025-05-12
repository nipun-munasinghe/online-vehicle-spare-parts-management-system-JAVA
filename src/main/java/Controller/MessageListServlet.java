package Controller;

import Model.messageModel;
import Service.messageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/manageMessages")
public class MessageListServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private messageService messageService = new messageService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<messageModel> messages = messageService.getAllMessages();
            request.setAttribute("messageList", messages);
        } catch (Exception e) {
            request.setAttribute("error", "Error loading messages: " + e.getMessage());
        }
        request.getRequestDispatcher("/manageMessages.jsp").forward(request, response);
    }
}
