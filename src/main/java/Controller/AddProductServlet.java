package Controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Model.ProductModel;
import Service.ProductMngDB;

@WebServlet("/addProduct")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024, // 1 MB
    maxFileSize = 1024 * 1024 * 5,   // 5 MB
    maxRequestSize = 1024 * 1024 * 10 // 10 MB
)
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductMngDB productDB;

    @Override
    public void init() {
        productDB = new ProductMngDB();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        try {
            // Get text parameters
            String pName = request.getParameter("productName");
            String pCategory = request.getParameter("productCategory");
            String pDescription = request.getParameter("productDescription");
            String quantity = request.getParameter("productQuantity");
            String price = request.getParameter("productPrice");
            int pQuantity = Integer.parseInt(quantity);
            double pPrice = Double.parseDouble(price);
            Part propic = request.getPart("productImage");

            String imgName = propic.getSubmittedFileName().replaceAll(" ", "_");
            String uploadDir = "C:\\Uni\\Programs\\JAVA\\online-spare-parts-management-system\\src\\main\\webapp\\images\\products";
    		String propicPath = uploadDir + File.separator + imgName;
    		
    		try {
			    // Save the file
			    try (FileOutputStream fos = new FileOutputStream(propicPath);
			         InputStream is = propic.getInputStream()) {
			        
			        byte[] buffer = new byte[1024]; // Use a buffer for efficient reading
			        int bytesRead;
			        while ((bytesRead = is.read(buffer)) != -1) {
			            fos.write(buffer, 0, bytesRead);
			        }
			    }

				} 
				catch (IOException e) {
					    System.out.println("Error saving the file: " + e.getMessage());
					    e.printStackTrace();
				}

            // Create product object
            ProductModel product = new ProductModel();
            product.setpName(pName);
            product.setpCategory(pCategory);
            product.setpPrice(pPrice);
            product.setpQuantity(pQuantity);
            product.setpDescription(pDescription);
            product.setpImg(imgName);

            // Save to database
            productDB.addProduct(product);
            response.sendRedirect(request.getContextPath() + "/products");
            
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        }
    }
}