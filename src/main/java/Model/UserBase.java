// UserBase.java
package Model;

public abstract class UserBase {
    protected String firstName;
    protected String lastName;
    protected String email;

    public UserBase(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public abstract String getBasicInfo();

    public void displayHeader() {
        System.out.println("=== User Information ===");
    }
}
