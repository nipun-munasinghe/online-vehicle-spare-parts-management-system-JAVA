package Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static final String URL = "jdbc:mysql://localhost:3306/autoelite_db";
<<<<<<< HEAD
	private static final String USER ="root";
	private static final String PASSWORD = "0331";

		public static Connection getConnection() throws SQLException, ClassNotFoundException {
=======

	private static final String USER ="root";
	private static final String PASSWORD = "31415";

	

	


	public static Connection getConnection() throws SQLException, ClassNotFoundException {
>>>>>>> 991eada2db1d1817a04ed2d575a294f07b9e3797
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("Connected to database successfully.");
		} catch (Exception e) {
			System.out.println("Local Database Connection Failed!");
			e.printStackTrace();
		}
		return connection;
	}

	// close connection
	public static void closeConnection(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("Error closing connection: " + e.getMessage());
			}
		}
	}
}