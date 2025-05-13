package Controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.OrderProduct;
import Service.OrderDB;


@WebServlet("/OrderFormServlet")
public class OrderFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String productId = request.getParameter("p_id");
        String unitPrice = request.getParameter("u_price");
        
        request.setAttribute("productId", productId);
        request.setAttribute("unitPrice", unitPrice);
		request.getRequestDispatcher("/OrderForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 // Capture form data
        int productId = Integer.parseInt(request.getParameter("productid"));
        int userId = Integer.parseInt(request.getParameter("userid"));
        String customerName = request.getParameter("customerName");
        String phoneNo = request.getParameter("phoneno");
        String shippingAddress = request.getParameter("shippingAddress");
        String totalPriceStr = request.getParameter("totalPrice");
        
        OrderProduct order = new OrderProduct();
        order.setpId(productId);
        order.setCustomerId(userId);
        order.setoAddress(customerName+" " +shippingAddress);
        order.setoPhone(phoneNo);
		order.setOrderTotal(totalPriceStr);
		String todayDate = LocalDate.now().toString();
		order.setoDate(todayDate);
		
		try {
			OrderDB.insertOrder(order);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect("/");

	}

}
