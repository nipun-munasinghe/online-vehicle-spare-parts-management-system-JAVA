package Controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.ProductModel;
import Service.ProductMngDB;

@WebServlet("/updateProduct")
@MultipartConfig
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductMngDB productDB;
	
	public void init() {
		productDB = new ProductMngDB();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String productIdStr = request.getParameter("productId");
			if (productIdStr == null || productIdStr.isEmpty()) {
			    System.out.println("Produc Id id is empty");
			}
			int pId = Integer.parseInt(productIdStr);
			
			String pName = request.getParameter("editProductName");
			String pCategory = request.getParameter("editProductCategory");
            String pDescription = request.getParameter("editProductDescription");
            int pQuantity = Integer.parseInt(request.getParameter("editProductQuantity"));
            double pPrice = Double.parseDouble(request.getParameter("editProductPrice"));
		
            
            ProductModel product = new ProductModel();
            
            product.setpId(pId);
            product.setpName(pName);
            product.setpCategory(pCategory);
            product.setpPrice(pPrice);
            product.setpQuantity(pQuantity);
            product.setpDescription(pDescription);
            
            productDB.updateProduct(product);
            
            response.sendRedirect(request.getContextPath() + "/products");
		}
		catch (SQLException | ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}
}