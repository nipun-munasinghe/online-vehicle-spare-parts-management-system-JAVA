package Model;

import java.sql.Date;

/**
 * Model class representing an Order entity.
 */
public class Order {

	private int oId;
	private Date oDate;
	private String oAddress;
	private String oPhone;
	private int customerId;
	private int pId;
	private int payId;

	// Default constructor
	public Order() {
	}

	// Parameterized constructor
	public Order(int oId, Date oDate, String oAddress, String oPhone, int customerId, int pId, int payId) {
		this.oId = oId;
		this.oDate = oDate;
		this.oAddress = oAddress;
		this.oPhone = oPhone;
		this.customerId = customerId;
		this.pId = pId;
		this.payId = payId;
	}

	// Getters and Setters

	public int getoId() {
		return oId;
	}

	public void setoId(int oId) {
		this.oId = oId;
	}

	public Date getoDate() {
		return oDate;
	}

	public void setoDate(Date oDate) {
		this.oDate = oDate;
	}

	public String getoAddress() {
		return oAddress;
	}

	public void setoAddress(String oAddress) {
		this.oAddress = oAddress;
	}

	public String getoPhone() {
		return oPhone;
	}

	public void setoPhone(String oPhone) {
		this.oPhone = oPhone;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	// Optional: Override toString() for debugging
	@Override
	public String toString() {
		return "Order{" + "oId=" + oId + ", oDate=" + oDate + ", oAddress='" + oAddress + '\'' + ", oPhone='" + oPhone
				+ '\'' + ", customerId=" + customerId + ", pId=" + pId + ", payId=" + payId + '}';
	}
}
