package Model;

public class User {

	private int u_id;
	private String u_firstname;
	private String u_lastname;
	private String u_email;
	private String u_password;
	private String u_type;
	private String u_image;

	public User(int u_id, String u_firstname, String u_lastname, String u_email, String u_password, String u_type,
			String u_image) {

		this.u_id = u_id;
		this.u_firstname = u_firstname;
		this.u_lastname = u_lastname;
		this.u_email = u_email;
		this.u_password = u_password;
		this.u_type = u_type;
		this.u_image = u_image;

	}

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(String firstName, String lastName, String email, String phoneNumber, String password) {
		// TODO Auto-generated constructor stub
	}

	public int getU_id() {
		return u_id;
	}

	public String getU_firstname() {
		return u_firstname;
	}

	public String getU_lastname() {
		return u_lastname;
	}

	public String getU_email() {
		return u_email;
	}

	public String getU_password() {
		return u_password;
	}

	public String getU_type() {
		return u_type;
	}

	public String getU_image() {
		return u_image;
	}

}
