package Service;

import Model.messageModel;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class messageService {

    // Fetch all messages from the database
	public List<messageModel> getAllMessages() throws SQLException, ClassNotFoundException {
	    List<messageModel> messages = new ArrayList<>();
	    String sql = "SELECT m_id, m_name, m_date, m_email, message, m_status FROM Message ORDER BY m_id DESC";

	    try (Connection conn = DBConnection.getConnection();
	         PreparedStatement stmt = conn.prepareStatement(sql);
	         ResultSet rs = stmt.executeQuery()) {

	        while (rs.next()) {
	        	messageModel msg = new messageModel(
	                rs.getInt("m_id"),
	                rs.getString("m_name"),
	                rs.getDate("m_date"),
	                rs.getString("m_email"),
	                rs.getString("message"),
	                rs.getString("m_status")
	            );
	            messages.add(msg);
	        }
	    }
	    return messages;
	}


    
}
