package Model;
import java.sql.Date;

public class OrderModel {
    private int o_id;
    private Date o_date;
    private String o_address;
    private String o_phone;
    private int customer_id;

    // Constructor
    public OrderModel(int o_id, Date o_date, String o_address, String o_phone, int customer_id) {
        this.o_id = o_id;
        this.o_date = o_date;
        this.o_address = o_address;
        this.o_phone = o_phone;
        this.customer_id = customer_id;
    }
    
    public OrderModel() {
      
    }

	// Getters
	public int getO_id() {
		return o_id;
	}

	public Date getO_date() {
		return o_date;
	}

	public String getO_address() {
		return o_address;
	}

	public String getO_phone() {
		return o_phone;
	}

	public int getCustomer_id() {
		return customer_id;
	}
}
