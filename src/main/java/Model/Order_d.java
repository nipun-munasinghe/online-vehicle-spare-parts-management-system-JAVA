package Model;

public class Order_d {
	 private int o_id;
	    private java.sql.Date o_date;
	    private String o_address;
	    private String o_phone;
	    private String o_status;
	    private String paid_status;
	    private int customer_id;
	    private int p_id;
	    private int pay_id;

	   

	    // Constructor with all fields
	    public Order_d(int o_id, java.sql.Date o_date, String o_address, String o_phone,
	                 String o_status, String paid_status, int customer_id, int p_id, int pay_id) {
	        this.o_id = o_id;
	        this.o_date = o_date;
	        this.o_address = o_address;
	        this.o_phone = o_phone;
	        this.o_status = o_status;
	        this.paid_status = paid_status;
	        this.customer_id = customer_id;
	        this.p_id = p_id;
	        this.pay_id = pay_id;
	    }

	  

	    // Getters
	    public int getO_id() {
	        return o_id;
	    }

	    public java.sql.Date getO_date() {
	        return o_date;
	    }

	    public String getO_address() {
	        return o_address;
	    }

	    public String getO_phone() {
	        return o_phone;
	    }

	    public String getO_status() {
	        return o_status;
	    }

	    public String getPaid_status() {
	        return paid_status;
	    }

	    public int getCustomer_id() {
	        return customer_id;
	    }

	    public int getP_id() {
	        return p_id;
	    }

	    public int getPay_id() {
	        return pay_id;
	    }
	}

