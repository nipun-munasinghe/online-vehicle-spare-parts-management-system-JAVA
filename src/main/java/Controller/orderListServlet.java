package Controller;

import Model.orderModel;
import Service.orderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@SuppressWarnings("serial")
@WebServlet("/deliveryDetails")
public class orderListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<orderModel> orderList = new orderService().getAllOrders();
            request.setAttribute("orderList", orderList);
        } catch (Exception e) {
            request.setAttribute("error", "Error loading orders: " + e.getMessage());
            e.printStackTrace();
        }
        request.getRequestDispatcher("/deliveryDetails.jsp").forward(request, response);
    }
}
