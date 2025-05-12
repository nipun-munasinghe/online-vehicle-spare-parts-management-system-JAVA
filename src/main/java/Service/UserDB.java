package Service;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;

import Model.User;

public class UserDB {
	
	
	//Login validation part
	
	public static User isValidUser(String u_email ,String u_password) {
		try {
			Connection con = DBConnection.getConnection();
			Statement stmt = con.createStatement();
			String query = "SELECT * FROM user WHERE u_email = '"+ u_email + "' AND u_password = '"+ u_password + "' LIMIT 1";
			
			ResultSet rs = stmt .executeQuery(query);//executeQuery used for read
			
			
			if (rs.next()) {
				int userid = rs.getInt(1);
				String u_firstname = rs.getString(2);
				String u_lastname = rs.getString(3);
				String u_email1 = rs.getString(4);
				String u_password1 = rs.getString(5);
				String u_type = rs.getString(6);
				String u_image = rs.getString(7);
				
				//create user objects
				User user = new User(userid, u_firstname, u_lastname, u_email, u_password1, u_type, u_image);

				con.close();
				
				return user;//return user objects
			}
			else {
				return null;
			}
		}
		catch(Exception e) {
			System.out.println(e);
			return null;
			}
		}
	
	
	//register user 
	
		public static boolean registerUser(String u_firstname, String u_lastname, String u_email, String u_password, String u_type, String u_image) {
			try {
				Connection con = DBConnection.getConnection();
				Statement stmt = con.createStatement();
				String query = "INSERT INTO User (u_firstname, u_lastname, u_email, u_password, u_type, u_image) VALUES ('" + u_firstname + "', '" + u_lastname + "', '" + u_email + "', '" + u_password + "', '" + u_type + "', '" + u_image + "')";
				int success = stmt.executeUpdate(query); //executeUpdate used for CREATE,UPDATE,DELETE
				
				//close connection
				con.close();

				if(success > 0) {
					return true;
				}
				else{
					return false;
				}
			}
			catch(Exception e) {
				System.out.println(e);
				return false;
			}
			
		}
		


	// get all user details

	public static User getUserdetails(int u_id) {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM user WHERE u_id='" + u_id + "' LIMIT 1";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				int userid = rs.getInt(1);
				String u_firstname = rs.getString(2);
				String u_lastname = rs.getString(3);
				String u_email = rs.getString(4);
				String u_password = rs.getString(5);
				String u_type = rs.getString(6);
				String u_image = rs.getString(7);

				User user = new User(userid, u_firstname, u_lastname, u_email, u_password, u_type, u_image);

				con.close();
				return user;

			} else {
				return null;
			}

		} catch (Exception e) {

			System.out.println(e);
			return null;
		}
	}

	// update user details method
	public static boolean updateUser(int u_id, String  u_firstname, String u_lastname, String u_email) {
	 

	    try {
	        Connection con = DBConnection.getConnection();
	        Statement stmt = con.createStatement();
	        String query = "UPDATE user SET u_firstname = '" + u_firstname + "', u_lastname = '" + u_lastname + "', u_email = '" + u_email + "' WHERE u_id = '" + u_id + "'";
	        int success = stmt.executeUpdate(query);
			
			//close connection
			con.close();

			if(success > 0) {
				return true;
			}
			else{
				return false;
			}
	}
	catch(Exception e) {
		System.out.println(e);
		return false;
	}
}


	// update profilepic function
	public static boolean updatePropic(int u_id, String u_image) {
		try {
			Connection con = DBConnection.getConnection();
			Statement stmt = con.createStatement();
			String query = "UPDATE user SET u_image = '" + u_image + "'  WHERE u_id = '" + u_id + "'";
			int success = stmt.executeUpdate(query);

			// close connection
			con.close();

			if (success > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	// Update Password Function
	public static boolean updatePassword(int u_id, String u_password) {
		try {
			Connection con = DBConnection.getConnection();
			Statement stmt = con.createStatement();
			String query = "UPDATE user SET u_password ='" + u_password + "'  WHERE u_id = '" + u_id + "'";
			int success = stmt.executeUpdate(query);

			// close connection
			con.close();

			if (success > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println(e);
			return false;
		}
	}

	

	//delete user function
	public static boolean deleteUser(int u_id) {
		try {
				Connection con = DBConnection.getConnection();
				Statement stmt = con.createStatement();
				String query = "DELETE FROM user WHERE u_id = '" + u_id + "'";
				int success = stmt.executeUpdate(query);
				
				//close connection
				con.close();
	
				if(success > 0) {
					return true;
				}
				else{
					return false;
			}
		}
		catch(Exception e) {
				System.out.println(e);
				return false;
		}
	}
	
	
	}
	
