package Model;

public class managerModel {
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String password;
	private String status;

	public managerModel(String firstName, String lastName, String email, String phone, String password, String status) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.status = status;
	}

	// Getters
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
		return phone;
	}

	public String getPassword() {
		return password;
	}

	public String getStatus() {
		return status;
	}
}
