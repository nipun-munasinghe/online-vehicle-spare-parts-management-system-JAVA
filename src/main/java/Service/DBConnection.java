package Service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/autoelite_db";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "0331"; 

    // Establish and return a connection to the database
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found.", e);
        }
    }

    // Close the given connection
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace(); // Log the error
            }
        }
    }
}
