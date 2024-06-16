package aB.Model;

public class AddressBookDTO {
	
	private String id;
	private String name;
	private String phoneNumber;
	private String eMail;
	private String address;
	
	public String getId() {
		return id;
	};
	
	public void setId(String id) {
		this.id = id;
	};
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
