package Service;

import Model.managerModel;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class managerService {

	// Add new manager to database
	public boolean addManager(managerModel manager) throws SQLException, ClassNotFoundException {
		String sql = "INSERT INTO manager (m_firstname, m_lastname, m_email, phone, m_password, M_status) VALUES (?, ?, ?, ?, ?, ?)";

		try (Connection conn = DBConnection.getConnection(); // Auto-closable connection
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			// Set parameters from manager object
			stmt.setString(1, manager.getFirstName());
			stmt.setString(2, manager.getLastName());
			stmt.setString(3, manager.getEmail());
			stmt.setString(4, manager.getPhoneNumber());
			stmt.setString(5, manager.getPassword());
			stmt.setString(6, manager.getStatus());

			// Execute and return true if 1+ rows affected
			return stmt.executeUpdate() > 0;
		}
	}

	// Get all managers (without passwords)
	public List<managerModel> getAllManagers() throws SQLException, ClassNotFoundException {
		List<managerModel> managers = new ArrayList<>();
		String sql = "SELECT m_firstname, m_lastname, m_email, phone, M_status FROM manager"; // Exclude password

		try (Connection conn = DBConnection.getConnection();
				PreparedStatement stmt = conn.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery()) {

			// Convert ResultSet to managerModel objects
			while (rs.next()) {
				managers.add(new managerModel(rs.getString("m_firstname"), rs.getString("m_lastname"),
						rs.getString("m_email"), rs.getString("phone"), "", // Empty password for security
						rs.getString("M_status")));
			}
		}
		return managers;
	}

	// Update manager status (Active/Inactive)
	public boolean updateStatus(String email, String status) throws SQLException, ClassNotFoundException {
		String sql = "UPDATE manager SET M_status = ? WHERE m_email = ?";

		try (Connection conn = DBConnection.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setString(1, status);
			stmt.setString(2, email);

			return stmt.executeUpdate() > 0;
		}
	}

	// Delete manager by email
	public boolean deleteManager(String email) throws SQLException, ClassNotFoundException {
		String sql = "DELETE FROM manager WHERE m_email = ?";

		try (Connection conn = DBConnection.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setString(1, email);
			return stmt.executeUpdate() > 0;
		}
	}
}
