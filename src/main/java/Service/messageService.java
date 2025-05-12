package Service;

import Model.messageModel;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class messageService {

    // Add new message
    public boolean addMessage(messageModel msg) 
            throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO Message (m_name, m_date, m_email, message, m_status) "
                   + "VALUES (?, ?, ?, ?, ?)";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, msg.getM_Name());
            stmt.setDate(2, msg.getM_Date());
            stmt.setString(3, msg.getM_Email());
            stmt.setString(4, msg.getMessage());
            stmt.setString(5, msg.getM_Status());
            
            return stmt.executeUpdate() > 0;
        }
    }

    // Get all messages (sorted by latest first)
    public List<messageModel> getAllMessages() 
            throws SQLException, ClassNotFoundException {
        List<messageModel> messages = new ArrayList<>();
        String sql = "SELECT m_id, m_name, m_date, m_email, message, m_status "
                   + "FROM Message ORDER BY m_id DESC";
        
        try (Connection conn = DBConnection.getConnection();
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

    // Update message status (e.g., mark as read)
    public boolean updateMessageStatus(int messageId, String newStatus) 
            throws SQLException, ClassNotFoundException {
        String sql = "UPDATE Message SET m_status = ? WHERE m_id = ?";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, newStatus);
            stmt.setInt(2, messageId);
            
            return stmt.executeUpdate() > 0;
        }
    }

    // Delete message
    public boolean deleteMessage(int messageId) 
            throws SQLException, ClassNotFoundException {
        String sql = "DELETE FROM Message WHERE m_id = ?";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setInt(1, messageId);
            return stmt.executeUpdate() > 0;
        }
    }
}
