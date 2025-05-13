package Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	private static final String URL = "jdbc:mysql://localhost:3306/autoelite_db";
    private static final String USER ="root";
	private static final String PASSWORD = "0331";


	public static Connection getConnection() throws SQLException, ClassNotFoundException {

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