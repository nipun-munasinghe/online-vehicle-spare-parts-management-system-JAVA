package Model;

public class managerModel {
	private String firstName;
	private String lastName;
	private String email;
	private String phoneNumber;
	private String password;
	private String status;

	public managerModel(String firstName, String lastName, String email, String phoneNumber, String password,
			String status) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.status = status;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public String getEmail() {
		return email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}