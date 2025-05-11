package Controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.stream.Collectors;

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
            String pName = readPartAsString(request.getPart("productName"));
            String pCategory = readPartAsString(request.getPart("productCategory"));
            String pDescription = readPartAsString(request.getPart("productDescription"));
            int pQuantity = Integer.parseInt(readPartAsString(request.getPart("productQuantity")));
            double pPrice = Double.parseDouble(readPartAsString(request.getPart("productPrice")));

            // Handle file upload
            String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIR;
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) uploadDir.mkdir();

            Part filePart = request.getPart("productImage");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            filePart.write(uploadPath + File.separator + fileName);

            // Create product object
            ProductModel product = new ProductModel();
            product.setpName(pName);
            product.setpCategory(pCategory);
            product.setpPrice(pPrice);
            product.setpQuantity(pQuantity);
            product.setpDescription(pDescription);
            product.setpImg(fileName);

            // Save to database
            productDB.addProduct(product);
            response.sendRedirect(request.getContextPath() + "/products");
            
        } catch (SQLException | ClassNotFoundException e) {
            throw new ServletException(e);
        }
    }
    
    private String readPartAsString(Part part) throws IOException {
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(part.getInputStream(), StandardCharsets.UTF_8))) {
            return reader.lines().collect(Collectors.joining());
        }
    }
}
