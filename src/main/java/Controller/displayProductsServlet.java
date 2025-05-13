package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.DisplayProductModel;
import Service.DisplayProductDB;

@WebServlet("/displayProducts")
public class displayProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<DisplayProductModel> products;
		List<DisplayProductModel> trendingProducts;
		try {
			products = DisplayProductDB.getAllProducts();
			trendingProducts = DisplayProductDB.getTrendingProducts();
			request.setAttribute("products", products);
			request.setAttribute("trendingProducts", trendingProducts);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("/products.jsp").forward(request, response);
	}

}
