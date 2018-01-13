package model;

public class History {
	private int id;
	private String incidentDate;
	private String tillDate;
	private int userId;
	private String caseName;
	private String caseCategory;

	public History() {
		// TODO Auto-generated constructor stub
	}

	public History(int id, String incidentDate, String tillDate, int userId, String caseName, String caseCategory) {
		super();
		this.id = id;
		this.incidentDate = incidentDate;
		this.tillDate = tillDate;
		this.userId = userId;
		this.caseName = caseName;
		this.caseCategory = caseCategory;
	}

	public History(String incidentDate, String tillDate, int userId, String caseName, String caseCategory) {
		super();
		this.incidentDate = incidentDate;
		this.tillDate = tillDate;
		this.userId = userId;
		this.caseName = caseName;
		this.caseCategory = caseCategory;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIncidentDate() {
		return incidentDate;
	}

	public void setIncidentDate(String incidentDate) {
		this.incidentDate = incidentDate;
	}

	public String getTillDate() {
		return tillDate;
	}

	public void setTillDate(String tillDate) {
		this.tillDate = tillDate;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getCaseName() {
		return caseName;
	}

	public void setCaseName(String caseName) {
		this.caseName = caseName;
	}

	public String getCaseCategory() {
		return caseCategory;
	}

	public void setCaseCategory(String caseCategory) {
		this.caseCategory = caseCategory;
	}
}