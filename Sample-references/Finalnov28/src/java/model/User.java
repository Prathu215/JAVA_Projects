package model;

public class User {
	private int id;
	private String name;
	private String email;
	private String password;
	private String question;
	private String answer;
	private String type;
	private String phone, street, city, state, zip;

	public User() {

	}
	
	public User(String name, String email, String password, String question, String answer, String type, String phone,
			String street, String city, String state, String zip) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.question = question;
		this.answer = answer;
		this.type = type;
		this.phone = phone;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zip = zip;
	}

	public User(int id, String name, String email, String password, String question, String answer, String type,
			String phone, String street, String city, String state, String zip) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.question = question;
		this.answer = answer;
		this.type = type;
		this.phone = phone;
		this.street = street;
		this.city = city;
		this.state = state;
		this.zip = zip;
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}
}