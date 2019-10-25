
import org.bson.types.ObjectId;
public class Ad {
	
	private String posting;
	private String city;
	private String postal;
	private String desc;
	private String phone;
	private String email;
	
	public Ad(String posting, String city, String postal, String desc, String phone, String email) {
		super();
		this.posting = posting;
		this.city = city;
		this.postal = postal;
		this.desc = desc;
		this.phone = phone;
		this.email = email;
	}

	public String getPosting() {
		return posting;
	}

	public void setPosting(String posting) {
		this.posting = posting;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostal() {
		return postal;
	}

	public void setPostal(String postal) {
		this.postal = postal;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
