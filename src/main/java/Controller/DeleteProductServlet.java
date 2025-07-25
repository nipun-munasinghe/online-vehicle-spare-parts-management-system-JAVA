package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Service.ProductMngDB;

@WebServlet("/deleteProduct")
public class DeleteProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductMngDB productDB;
	
	@Override
	public void init() {
		productDB = new ProductMngDB();
	}
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int pId = Integer.parseInt(request.getParameter("productId"));
			productDB.deleteProduct(pId);
			
			response.sendRedirect(request.getContextPath() + "/products");
		}
		catch(SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
}