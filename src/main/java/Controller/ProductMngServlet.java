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

@WebServlet("/productManagement")
public class ProductMngServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductMngDB productDB;
	
	public void init() {
		productDB = new ProductMngDB();
	}
	
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
		
		System.out.print("post method");
		
		if(action == null) {
			action = "/add";
		}
		
		try {
			switch(action) {
			case "/add":
				System.out.print("Add Method Calling");
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
	
	private void addProduct(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, IOException {
		String pName = request.getParameter("productName");
		String pCategory = request.getParameter("productCategory");
		String pDescription = request.getParameter("productDescription");
		int pQuantity = Integer.parseInt(request.getParameter("productQuantity"));
		double pPrice = Double.parseDouble(request.getParameter("productPrice"));
		
		System.out.print("Add Method running");
		
		String fileName = "default.png";
		
		//create product object
		ProductModel product = new ProductModel();
		
		product.setpName(pName);
		product.setpCategory(pCategory);
		product.setpPrice(pPrice);
		product.setpQuantity(pQuantity);
		product.setpDescription(pDescription);
		product.setpImg(fileName);
		
		//save to database
		productDB.addProduct(product);
		
		response.sendRedirect(request.getContextPath() + "/productManagement/list");
	}

	private void showProductList(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		List<ProductModel> products = productDB.getAllProducts();
		
		request.setAttribute("products", products);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ProductManagement.jsp");
		dispatcher.forward(request, response);
	}
}