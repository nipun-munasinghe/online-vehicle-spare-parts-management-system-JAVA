package Model;

public class Manager {
    private int manager_id;
    private User user;
    private String phone;
    private String status;

    // Constructors
    public Manager() {}

    public Manager(User user, String phone, String status) {
        this.user = user;
        this.phone = phone;
        this.status = status;
    }

    // Getters and Setters
    public int getManager_id() { return manager_id; }
    public void setManager_id(int manager_id) { this.manager_id = manager_id; }

    public User getUser() { return user; }
    public void setUser(User user) { this.user = user; }

    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    // Helper methods to access user properties
    public String getFirstName() { return user.getU_firstname(); }
    public String getLastName() { return user.getU_lastname(); }
    public String getEmail() { return user.getU_email(); }
    public String getPassword() { return user.getU_password(); }
}
