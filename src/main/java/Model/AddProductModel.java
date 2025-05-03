package Model;

public class AddProductModel {
	private int pId;
	private String pName;
	private String pCategory;
	private double pPrice;
	private int pQuantity;
	private String pDescription;
	private String pImg;
	
	//default constructor
	public AddProductModel() {
	}
	
	//overloaded constructors
	public AddProductModel(int pId, String pName, String pCategory, double pPrice, int pQuantity, String pDescription,
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
	
	
}