package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.ProductModel;

public class ProductMngDB {
	
	//get all products
	public List<ProductModel> getAllProducts() throws SQLException, ClassNotFoundException {
		List<ProductModel> products = new ArrayList<>();
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			String sql = "SELECT * FROM product ORDER BY p_id DESC";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				ProductModel product = new ProductModel();
				
				product.setpId(rs.getInt("p_id"));
				product.setpName(rs.getString("p_name"));
				product.setpCategory(rs.getString("p_category"));
				product.setpPrice(rs.getDouble("p_price"));
				product.setpQuantity(rs.getInt("p_quantity"));
				product.setpDescription(rs.getString("p_description"));
				product.setpImg(rs.getString("p_image"));
				
				products.add(product);
			}
		}
		finally {
			if(rs != null) {
				rs.close();
			}
			
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				DBConnection.closeConnection(conn);
			}
		}
		return products;
	}
	
	//get product by ID
	public ProductModel getProductById(int pId) throws SQLException, ClassNotFoundException {
		ProductModel product = null;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.getConnection();
			String sql = "SELECT * FROM product WHERE p_id = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, pId);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				product = new ProductModel();
				
				product.setpId(rs.getInt("p_id"));
				product.setpName(rs.getString("p_name"));
				product.setpCategory(rs.getString("p_category"));
				product.setpPrice(rs.getDouble("p_price"));
				product.setpQuantity(rs.getInt("p_quantity"));
				product.setpDescription(rs.getString("p_description"));
				product.setpImg(rs.getString("p_image"));
			}
		}
		finally {
			if(rs != null) {
				rs.close();
			}
			if( stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				DBConnection.closeConnection(conn);
			}
		}
		
		return product;
	}
}