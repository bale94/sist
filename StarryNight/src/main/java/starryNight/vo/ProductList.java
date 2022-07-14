package starryNight.vo;

public class ProductList {
	/*CREATE TABLE product (
			product_no NUMBER NOT NULL,  상품번호 
			product_name VARCHAR2(50),  상품이름 
			product_img VARCHAR2(200),  이미지이름 
			product_price NUMBER,  상품가격 
			product_info VARCHAR2(500),  상품정보 
			ac_category VARCHAR2(50),  주류카테고리 
			w_category VARCHAR2(50),  날씨카테고리 
			store_no NUMBER  매장번호 
		);*/
	private int product_no;
	private String product_name;
	private String product_img;
	private int product_price;
	private String product_info;
	private String ac_category;
	private String w_category;
	private int store_no;
	public ProductList() {
		// TODO Auto-generated constructor stub
	}
	public ProductList(int product_no, String product_name, String product_img, int product_price, String product_info,
			String ac_category, String w_category, int store_no) {
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_img = product_img;
		this.product_price = product_price;
		this.product_info = product_info;
		this.ac_category = ac_category;
		this.w_category = w_category;
		this.store_no = store_no;
	}
	
	public ProductList(String product_name, String product_img, int product_price) {
		this.product_name = product_name;
		this.product_img = product_img;
		this.product_price = product_price;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_info() {
		return product_info;
	}
	public void setProduct_info(String product_info) {
		this.product_info = product_info;
	}
	public String getAc_category() {
		return ac_category;
	}
	public void setAc_category(String ac_category) {
		this.ac_category = ac_category;
	}
	public String getW_category() {
		return w_category;
	}
	public void setW_category(String w_category) {
		this.w_category = w_category;
	}
	public int getStore_no() {
		return store_no;
	}
	public void setStore_no(int store_no) {
		this.store_no = store_no;
	}
	
	
}
