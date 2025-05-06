package Model;

public class managerModel {
	private String m_firstName;
	private String m_lastName;
	private String m_email;
	private String phone;
	private String m_password;
	private String m_status;

	public managerModel(String firstName, String lastName, String email, String phone, String password, String status) {
		this.m_firstName = firstName;
		this.m_lastName = lastName;
		this.m_email = email;
		this.phone = phone;
		this.m_password = password;
		this.m_status = status;
	}

	public String getM_firstName() {
		return m_firstName;
	}

	public void setM_firstName(String m_firstName) {
		this.m_firstName = m_firstName;
	}

	public String getM_lastName() {
		return m_lastName;
	}

	public void setM_lastName(String m_lastName) {
		this.m_lastName = m_lastName;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_status() {
		return m_status;
	}

	public void setM_status(String m_status) {
		this.m_status = m_status;
	}
}
