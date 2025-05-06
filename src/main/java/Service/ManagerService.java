package Service;

import Model.managerModel;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ManagerService {
    
    public boolean addManager(managerModel manager) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO manager (m_firstname, m_lastname, m_email, phone, m_password, M_status) VALUES (?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, manager.getFirstName());
            stmt.setString(2, manager.getLastName());
            stmt.setString(3, manager.getEmail());
            stmt.setString(4, manager.getPhoneNumber());
            stmt.setString(5, manager.getPassword());
            stmt.setString(6, manager.getStatus());
            
            return stmt.executeUpdate() > 0;
        }
    }

    public List<managerModel> getAllManagers() throws SQLException {
        List<managerModel> managers = new ArrayList<>();
        String sql = "SELECT * FROM manager";
        
        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            while (rs.next()) {
                managers.add(new managerModel(
                    rs.getString("m_firstname"),
                    rs.getString("m_lastname"),
                    rs.getString("m_email"),
                    rs.getString("phone"),
                    "",  // Don't return password
                    rs.getString("M_status")
                ));
            }
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return managers;
    }
}
