package Model;

public class OrderProduct {
    private int oId;
    private String oDate;
    private String oAddress;
    private String oPhone;
    private String oStatus;
    private String paidStatus;
    private int customerId;
    private int pId;
    private String orderTotal;
    
	public int getoId() {
		return oId;
	}
	public String getoDate() {
		return oDate;
	}
	public String getoAddress() {
		return oAddress;
	}
	public String getoPhone() {
		return oPhone;
	}
	public String getoStatus() {
		return oStatus;
	}
	public String getPaidStatus() {
		return paidStatus;
	}
	public int getCustomerId() {
		return customerId;
	}
	public int getpId() {
		return pId;
	}
	public String getOrderTotal() {
		return orderTotal;
	}
	public void setoId(int oId) {
		this.oId = oId;
	}
	public void setoDate(String oDate) {
		this.oDate = oDate;
	}
	public void setoAddress(String oAddress) {
		this.oAddress = oAddress;
	}
	public void setoPhone(String oPhone) {
		this.oPhone = oPhone;
	}
	public void setoStatus(String oStatus) {
		this.oStatus = oStatus;
	}
	public void setPaidStatus(String paidStatus) {
		this.paidStatus = paidStatus;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public void setOrderTotal(String orderTotal) {
		this.orderTotal = orderTotal;
	}

    
}
