package Service;

import Model.OrderModel;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderService {
    public List<OrderModel> getAllOrders() throws SQLException, ClassNotFoundException {
        List<OrderModel> orders = new ArrayList<>();
        String sql = "SELECT o_id, o_date, o_address, o_phone, customer_id FROM orders ORDER BY o_id DESC";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {
            while (rs.next()) {
                orders.add(new OrderModel(
                    rs.getInt("o_id"),
                    rs.getDate("o_date"),
                    rs.getString("o_address"),
                    rs.getString("o_phone"),
                    rs.getInt("customer_id")
                ));
            }
        }
        return orders;
    }
}
