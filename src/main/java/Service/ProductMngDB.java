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
	
	//add new product
	public boolean addProduct(ProductModel product) throws SQLException, ClassNotFoundException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn = DBConnection.getConnection();
			String sql =  "INSERT INTO product (p_name, p_category, p_price, p_quantity, p_description, p_image) VALUES (?,?,?,?,?,?)";
			
			stmt = conn.prepareStatement(sql);
			
			stmt.setString(1, product.getpName());
			stmt.setString(2, product.getpCategory());
			stmt.setDouble(3, product.getpPrice());
			stmt.setInt(4, product.getpQuantity());
			stmt.setString(5, product.getpDescription());
			stmt.setString(6, product.getpImg());
			
			int rowsAffected = stmt.executeUpdate();
			return rowsAffected > 0;
		}
		finally {
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				DBConnection.closeConnection(conn);
			}
		}
	}
	
	//update product
	public boolean updateProduct(ProductModel product) throws SQLException, ClassNotFoundException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn = DBConnection.getConnection();
			String sql = "UPDATE product SET p_name=?, p_category=?, p_price=?, p_quantity=?, p_description=? WHERE p_id=?";
			
			 stmt = conn.prepareStatement(sql);
			 
			 stmt = conn.prepareStatement(sql);
	            stmt.setString(1, product.getpName());
	            stmt.setString(2, product.getpCategory());
	            stmt.setDouble(3, product.getpPrice());
	            stmt.setInt(4, product.getpQuantity());
	            stmt.setString(5, product.getpDescription());
	            stmt.setInt(6, product.getpId());
	            
	            int rows = stmt.executeUpdate();
	            
	            return rows > 0;
		}
		finally {
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				DBConnection.closeConnection(conn);
			}
		}
	}
	
	//delete product
	public boolean deleteProduct(int pId) throws ClassNotFoundException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			conn = DBConnection.getConnection();
			String sql = "DELETE FROM product WHERE p_id = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, pId);
			
			int rows = stmt.executeUpdate();
			return rows > 0;
		}
		finally {
			if(stmt != null) {
				stmt.close();
			}
			if(conn != null) {
				DBConnection.closeConnection(conn);
			}
		}
	}
}