package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.OrderProduct;
import Service.OrderDB;

@WebServlet("/OrderDetailsServlet")
public class OrderDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	        	HttpSession session = request.getSession();
				int userID = (int) session.getAttribute("userid");
				OrderProduct order = OrderDB.getOrderByUid(userID);
	            request.setAttribute("order", order);
	        } catch (Exception e) {
	            request.setAttribute("error", "Error loading orders: " + e.getMessage());
	            e.printStackTrace();
	        }
	        request.getRequestDispatcher("/OrderDetails.jsp").forward(request, response);
	}
}