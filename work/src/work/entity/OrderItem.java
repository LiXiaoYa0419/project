package work.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="orderitem")
public class OrderItem {
	private int id;
	private String name;
	@Id
	@GeneratedValue(generator="my")
	@GenericGenerator(name="my", strategy="native")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getImgs() {
		return imgs;
	}
	public void setImgs(String imgs) {
		this.imgs = imgs;
	}
	private String price;
	private String type;
	private String imgs;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	 
	
	
}
