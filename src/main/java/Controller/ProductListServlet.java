package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ProductModel;
import Service.ProductMngDB;

@WebServlet("/products")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductMngDB productDB;
	
	@Override
	public void init() {
		productDB = new ProductMngDB();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<ProductModel> products = productDB.getAllProducts();
			request.setAttribute("products", products);
			
			request.getRequestDispatcher("/ProductManagement.jsp").forward(request, response);
		}
		catch (SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
}