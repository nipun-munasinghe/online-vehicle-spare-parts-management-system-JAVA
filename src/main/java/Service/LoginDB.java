package Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Model.User;

public class LoginDB {
	
	public class UserService {
	    // JDBC connection  
		private static final String URL = "jdbc:mysql://localhost:3306/autoelite_db";
		private static final String USER ="root";
		private static final String PASSWORD = "31415";

	    
	    public User authenticate(String email, String password) {
	        User user = null;
	        
	        // SQL query to find a user details
	        
	        String sql = "SELECT * FROM user WHERE u_email=? AND u_password=?";
	        try (
	            
	            Connection con = DriverManager.getConnection(URL, USER,PASSWORD);
	            PreparedStatement stmt = con.prepareStatement(sql)
	        ) {
	            // Set the quary parameters
	        	
	            stmt.setString(1, email);
	            stmt.setString(2, password);
	      
	            ResultSet rs = stmt.executeQuery();
	            if(rs.next()) {
					int userid = rs.getInt(1);
					 String u_firstname = rs.getString(2);
					 String u_lastname  = rs.getString(3);
					 String u_email = rs.getString(4);
					 String u_password = rs.getString(5);
					 String u_type = rs.getString(6);
					 String u_image  = rs.getString(7);
				
					 User user1 = new User (userid, u_firstname ,u_lastname , u_email , u_password , u_type , u_image);
					
					 con.close();
					 return user1;
					
				}
				else {
					return null;
				}
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return user;
	    }
	}

}
