package Service;

import Model.messageModel;
import java.sql.*;
import java.util.*;

public class messageService {

    public List<messageModel> getAllMessages() throws SQLException, ClassNotFoundException {
        List<messageModel> messages = new ArrayList<>();
        String sql = "SELECT m_id, m_name, m_date, m_email, message, m_status FROM Message ORDER BY m_id DESC";

        // Replace with your DB connection utility
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/yourdbname", "youruser", "yourpass");
             PreparedStatement stmt = conn.prepareStatement(sql);
             ResultSet rs = stmt.executeQuery()) {

            while (rs.next()) {
                messages.add(new messageModel(
                    rs.getInt("m_id"),
                    rs.getString("m_name"),
                    rs.getDate("m_date"),
                    rs.getString("m_email"),
                    rs.getString("message"),
                    rs.getString("m_status")
                ));
            }
        }
        return messages;
    }
}
