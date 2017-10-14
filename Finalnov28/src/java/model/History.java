package model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

public class History {
	private int id;
	private String incidentDate;
	private String tillDate;
	private int days;
	private int userId;
	private String userName;
	private String caseName;
	private String caseCategory;
	private String statuteNumber;

	public String getRemainingDays() {
		String result = "";
		try {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

			Date dtToday = Calendar.getInstance().getTime();
			Date dtTill = dateFormat.parse(tillDate);
			long temp = dtTill.getTime() - dtToday.getTime();
			long res = TimeUnit.DAYS.convert(temp, TimeUnit.MILLISECONDS);
			if (res < 1) {
				result = "No time to file law suit";
			} else {
				result = res + " days";
			}

		} catch (ParseException ex) {

		}
		return result;
	}

	public History() {
		// TODO Auto-generated constructor stub
	}

	public History(String incidentDate, String tillDate, int days, int userId, String userName, String caseName,
			String caseCategory, String statuteNumber) {
		super();
		this.incidentDate = incidentDate;
		this.tillDate = tillDate;
		this.days = days;
		this.userId = userId;
		this.userName = userName;
		this.caseName = caseName;
		this.caseCategory = caseCategory;
		this.statuteNumber = statuteNumber;
	}

	public History(int id, String incidentDate, String tillDate, int days, int userId, String userName, String caseName,
			String caseCategory, String statuteNumber) {
		super();
		this.id = id;
		this.incidentDate = incidentDate;
		this.tillDate = tillDate;
		this.days = days;
		this.userId = userId;
		this.userName = userName;
		this.caseName = caseName;
		this.caseCategory = caseCategory;
		this.statuteNumber = statuteNumber;
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

	public int getDays() {
		return days;
	}

	public void setDays(int days) {
		this.days = days;
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

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserName() {
		return userName;
	}
	
	public String getStatuteNumber() {
		return statuteNumber;
	}
	
	public void setStatuteNumber(String statuteNumber) {
		this.statuteNumber = statuteNumber;
	}
}