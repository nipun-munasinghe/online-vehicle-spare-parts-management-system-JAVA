package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import Model.OrderProduct;


public class OrderDB {

    public static boolean insertOrder(OrderProduct order) throws Exception {
        String sql = "INSERT INTO orders (o_date, o_address, o_phone, customer_id, p_id, order_total) "
                   + "VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            // Convert String date to java.sql.Date
            java.sql.Date sqlDate = java.sql.Date.valueOf(order.getoDate());

            stmt.setDate(1, sqlDate);
            stmt.setString(2, order.getoAddress());
            stmt.setString(3, order.getoPhone());
            stmt.setInt(4, order.getCustomerId());
            stmt.setInt(5, order.getpId());
            stmt.setDouble(6, Double.parseDouble(order.getOrderTotal()));

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                return true;  // Success
            } else {
                return false; // Insert failed
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Error occurred
        }
    }
}
