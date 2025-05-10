package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ProductModel;
import Service.ProductMngDB;

@WebServlet("/addProduct")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductMngDB productDB;
    
    @Override
	public void init() {
		productDB = new ProductMngDB();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String pName = request.getParameter("productName");
			String pCategory = request.getParameter("productCategory");
			String pDescription = request.getParameter("productDescription");
			int pQuantity = Integer.parseInt(request.getParameter("productQuantity"));
			double pPrice = Double.parseDouble(request.getParameter("productPrice"));
			
			System.out.print("Add Method running");//
			
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
			
			response.sendRedirect(request.getContextPath() + "/products");
		}
		catch (SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
}