package Model;

public class DisplayProductModel {
	private int pId;
	private String pName;
	private String pCategory;
	private double pPrice;
	private int pQuantity;
	private String pDescription;
	private String pImg;
	
	//default constructor
		public DisplayProductModel() {
		}
		
		//overloaded constructors
		public DisplayProductModel(int pId, String pName, String pCategory, double pPrice, int pQuantity, String pDescription,
				String pImg) {
			super();
			this.pId = pId;
			this.pName = pName;
			this.pCategory = pCategory;
			this.pPrice = pPrice;
			this.pQuantity = pQuantity;
			this.pDescription = pDescription;
			this.pImg = pImg;
		}
		
	public int getpId() {
		return pId;
	}
	public String getpName() {
		return pName;
	}
	public String getpCategory() {
		return pCategory;
	}
	public double getpPrice() {
		return pPrice;
	}
	public int getpQuantity() {
		return pQuantity;
	}
	public String getpDescription() {
		return pDescription;
	}
	public String getpImg() {
		return pImg;
	}
	public void setpId(int pId) {
		this.pId = pId;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
	}
	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}
	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}
	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}
	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
}