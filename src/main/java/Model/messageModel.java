package Model;
import java.sql.Date;

public class messageModel {
    private int m_Id;
    private String m_Name;
    private Date m_Date;
    private String m_Email;
    private String message;
    private String m_Status;
    
	public messageModel(int m_Id, String m_Name, Date m_Date, String m_Email, String message, String m_Status) {
		super();
		this.m_Id = m_Id;
		this.m_Name = m_Name;
		this.m_Date = m_Date;
		this.m_Email = m_Email;
		this.message = message;
		this.m_Status = m_Status;
	}

	public int getM_Id() {
		return m_Id;
	}

	public void setM_Id(int m_Id) {
		this.m_Id = m_Id;
	}

	public String getM_Name() {
		return m_Name;
	}

	public void setM_Name(String m_Name) {
		this.m_Name = m_Name;
	}

	public Date getM_Date() {
		return m_Date;
	}

	public void setM_Date(Date m_Date) {
		this.m_Date = m_Date;
	}

	public String getM_Email() {
		return m_Email;
	}

	public void setM_Email(String m_Email) {
		this.m_Email = m_Email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getM_Status() {
		return m_Status;
	}

	public void setM_Status(String m_Status) {
		this.m_Status = m_Status;
	}
    
    
}

  