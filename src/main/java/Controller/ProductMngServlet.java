package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ProductModel;
import Service.ProductMngDB;

@SuppressWarnings("serial")
@WebServlet("/productManagement")
public class ProductMngServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getPathInfo();
		if(action == null) {
			action = "/list";
		}
		
		try {
			if("/list".equals(action)) {
				showProductList(request, response);
			}
		}
		catch (SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getPathInfo();
		
		if(action == null) {
			action = "/add";
		}
		
		try {
			switch(action) {
			case "/add":
				addProduct(request, response);
				break;
			default:
				showProductList(request, response);
				break;
			}
		}
		catch(SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
	
	private void addProduct(HttpServletRequest request, HttpServletResponse response) {
		
		
	}

	private void showProductList(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		ProductMngDB db = new ProductMngDB();
		List<ProductModel> products = db.getAllProducts();
		
		request.setAttribute("products", products);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ProductManagement.jsp");
		dispatcher.forward(request, response);
	}
}