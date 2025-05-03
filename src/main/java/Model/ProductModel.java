package Model;

public class ProductModel {
	private int pId;
	private String pName;
	private String pCategory;
	private double pPrice;
	private int pQuantity;
	private String pDescription;
	private String pImg;
	
	//default constructor
	public ProductModel() {
	}
	
	//overloaded constructors
	public ProductModel(int pId, String pName, String pCategory, double pPrice, int pQuantity, String pDescription,
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

	//getters and setters
	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpCategory() {
		return pCategory;
	}

	public void setpCategory(String pCategory) {
		this.pCategory = pCategory;
	}

	public double getpPrice() {
		return pPrice;
	}

	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}

	public int getpQuantity() {
		return pQuantity;
	}

	public void setpQuantity(int pQuantity) {
		this.pQuantity = pQuantity;
	}

	public String getpDescription() {
		return pDescription;
	}

	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}

	public String getpImg() {
		return pImg;
	}

	public void setpImg(String pImg) {
		this.pImg = pImg;
	}
}