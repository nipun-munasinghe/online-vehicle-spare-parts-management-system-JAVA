package Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
    
    
    public static OrderProduct getOrderByUid(int uid) throws SQLException, ClassNotFoundException {
    	OrderProduct order = new OrderProduct();

        String sql = "SELECT * FROM orders WHERE customer_id = ? ORDER BY o_id DESC LIMIT 1";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
             
            stmt.setInt(1, uid);
            
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    
                    order.setoId(rs.getInt("o_id"));
                    order.setoStatus(rs.getString("o_status"));
                    order.setOrderTotal(rs.getString("order_total"));
                }
            }
        }

        return order;
    }
    
    public static void deleteOrder(int orderId) throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM orders WHERE o_id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, orderId);
            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected == 0) {
                System.out.println("No order found with ID: " + orderId);
            } else {
                System.out.println("Order deleted successfully. Order ID: " + orderId);
            }
        }
    }
    
    public static void updateOrderStatusToSubmitted(int orderId) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE orders SET o_status = ? WHERE o_id = ?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, "Submitted");
            stmt.setInt(2, orderId);

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected == 0) {
                System.out.println("No order found to update with ID: " + orderId);
            } else {
                System.out.println("Order status updated to 'Submitted'. Order ID: " + orderId);
            }
        }
    }



}