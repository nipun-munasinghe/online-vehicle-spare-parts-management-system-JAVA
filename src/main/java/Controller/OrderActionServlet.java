package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.OrderDB;


@WebServlet("/OrderActionServlet")
public class OrderActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String action = request.getParameter("action");
	        String orderIdStr = request.getParameter("orderId");

	        if (action == null || orderIdStr == null) {
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing action or orderId");
	            return;
	        }
	        
	        try {
	            int orderId = Integer.parseInt(orderIdStr);

	            if (action.equals("confirm")) {
	                // On confirm → redirect to shop page
	            	response.sendRedirect("displayProducts");

	            } else if (action.equals("cancel")) {
	               
	            	OrderDB.deleteOrder(orderId);
	            	System.out.println("Order Deleted");
	                response.sendRedirect("displayProducts");
	            } else {
	                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Unknown action");
	            }

	        } catch (NumberFormatException e) {
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid orderId format");
	        } catch (Exception e) {
	            throw new ServletException("Error processing order action", e);
	        }
	}

}
