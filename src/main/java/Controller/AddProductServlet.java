package Controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
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
    private static final String UPLOAD_DIR = "uploads";

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

            // Handle file upload
            //String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            //File uploadDir = new File(uploadPath);
            //if (!uploadDir.exists()) uploadDir.mkdir();

            //Part filePart = request.getPart("productImage");
            //String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            //filePart.write(uploadPath + File.separator + fileName);

            // Create product object
            ProductModel product = new ProductModel();
            product.setpName(pName);
            product.setpCategory(pCategory);
            product.setpPrice(pPrice);
            product.setpQuantity(pQuantity);
            product.setpDescription(pDescription);
            //product.setpImg(fileName);

            // Save to database
            productDB.addProduct(product);
            response.sendRedirect(request.getContextPath() + "/products");
            
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        }
    }
    
}
