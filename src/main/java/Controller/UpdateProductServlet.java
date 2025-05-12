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

@WebServlet("/updateProduct")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductMngDB productDB;
	
	public void init() {
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int pId = Integer.parseInt(request.getParameter("productId"));
			String pName = request.getParameter("editProductName");
			String pCategory = request.getParameter("editProductCategory");
            String pDescription = request.getParameter("editProductDescription");
            int pQuantity = Integer.parseInt(request.getParameter("editProductQuantity"));
            double pPrice = Double.parseDouble(request.getParameter("editProductPrice"));
		
            String fileName = "default.png";
            
            ProductModel product = new ProductModel();
            
            product.setpId(pId);
            product.setpName(pName);
            product.setpCategory(pCategory);
            product.setpPrice(pPrice);
            product.setpQuantity(pQuantity);
            product.setpDescription(pDescription);
            product.setpImg(fileName);
            
            productDB.updateProduct(product);
            
            response.sendRedirect(request.getContextPath() + "/products");
		}
		catch (SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
}