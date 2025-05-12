package Model;

import java.sql.Date;

public class messageModel {
	private int m_id;
	private String m_name;
	private Date m_date;
	private String m_email;
	private String message;
	private String m_status;

	public messageModel(int m_id, String m_name, Date m_date, String m_email, String message, String m_status) {
		this.m_id = m_id;
		this.m_name = m_name;
		this.m_date = m_date;
		this.m_email = m_email;
		this.message = message;
		this.m_status = m_status;
	}

	// Getters
	public int getM_id() {
		return m_id;
	}

	public String getM_name() {
		return m_name;
	}

	public Date getM_date() {
		return m_date;
	}

	public String getM_email() {
		return m_email;
	}

	public String getMessage() {
		return message;
	}

	public String getM_status() {
		return m_status;
	}
}
