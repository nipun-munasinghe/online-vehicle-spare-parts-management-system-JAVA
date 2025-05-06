package Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import Model.User;

public class UserDB {

	// get all user details

	public static User getUserdetails(int u_id) {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "SELECT * FROM users WHERE u_id='" + u_id + "' LIMIT 1";
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
	public static boolean updateUser(int u_id, String u_firstname, String u_lastname, String u_email, String u_type) {
		try {
			Connection con = DBConnection.getConnection();
			Statement stmt = con.createStatement();
			String query = "UPDATE user SET u_id = '" + u_id + "', u_firstname = '" + u_firstname + "', u_lastname = '"
					+ u_lastname + "', u_email = '" + u_email + "', u_type = '" + u_type + "'";
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

}
