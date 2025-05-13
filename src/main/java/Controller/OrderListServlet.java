package Controller;

import Model.OrderModel;
import Service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@SuppressWarnings("serial")
@WebServlet("/deliveryDetails")
public class OrderListServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<OrderModel> orderList = new OrderService().getAllOrders();
            request.setAttribute("orderList", orderList);
        } catch (Exception e) {
            request.setAttribute("error", "Error loading orders: " + e.getMessage());
            e.printStackTrace();
        }
        request.getRequestDispatcher("/deliveryDetails.jsp").forward(request, response);
    }
}
