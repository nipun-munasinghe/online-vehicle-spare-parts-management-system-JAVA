package Service;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static final String URL = "jdbc:mysql://localhost:3306/autoelite_db";
	private static final String USER ="root";
	private static final String PASSWORD = "31415";
	
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(URL,USER,PASSWORD);
		}
		catch (Exception e) {
			System.out.println("Database connection failed!.");
		}
		return con;
	}
}