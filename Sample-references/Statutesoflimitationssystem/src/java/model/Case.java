package model;

public class Case {
	private int id;
	private String name;
	private String category;
	private int days;

	public Case() {
	}

	public Case(int id, String name, String category, int days) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.days = days;
	}

	public Case(String name, String category, int days) {
		super();
		this.name = name;
		this.category = category;
		this.days = days;
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

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
	}
}