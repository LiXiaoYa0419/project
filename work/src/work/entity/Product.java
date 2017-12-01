package work.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="product")
public class Product {
	
	private int id;
	private String name;
	private String description;
	private int price;
	private String imgs;
	private String img1;
	private String img2;
	private String img3;
	@Id
	@GeneratedValue(generator="my")
    @GenericGenerator(name = "my", strategy = "native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
	private int discountprice;
 	private int producttypeid;
 	public int getProducttypeid() {
 		return producttypeid;
 	}
 	public void setProducttypeid(int producttypeid) {
 		this.producttypeid = producttypeid;
 	}
	public int getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(int discountprice) {
		this.discountprice = discountprice;
	}
	public String getImgs() {
		return imgs;
	}
	public void setImg(String imgs) {
		this.imgs = imgs;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
	
	
}
