package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.Case;

public class CaseDAO {
	private Connection connection;

	public CaseDAO() {
		try {
			Class.forName(DBConnection.DRIVER);
			connection = DriverManager.getConnection(DBConnection.URL, DBConnection.USERNAME, DBConnection.PASSWORD);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private int update(String query) {
		int rowsEffected = 0;
		try {
			Statement statement = connection.createStatement();
			rowsEffected = statement.executeUpdate(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowsEffected;
	}

	public boolean addCase(Case caseDetails) {
		boolean added = false;
		try {
			String query = "insert into cases (name, category, days) values('" + caseDetails.getName() + "', '"
					+ caseDetails.getCategory() + "', " + caseDetails.getDays() + ")";
			added = update(query) == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return added;
	}

	public Case getCaseById(int id) {
		Case caseDetail = null;
		try {
			Statement statement = connection.createStatement();
			String query = "select * from cases where id = " + id;
			ResultSet resultSet = statement.executeQuery(query);
			if (resultSet.next()) {
				caseDetail = new Case();
				caseDetail.setId(resultSet.getInt("id"));
				caseDetail.setName(resultSet.getString("name"));
				caseDetail.setCategory(resultSet.getString("category"));
				caseDetail.setDays(resultSet.getInt("days"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return caseDetail;
	}

	public List<Case> getCases() {
		List<Case> cases = new ArrayList<>();
		try {
			String query = "select * from cases";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				Case caseDetails = new Case();
				caseDetails.setId(resultSet.getInt("id"));
				caseDetails.setName(resultSet.getString("name"));
				caseDetails.setCategory(resultSet.getString("category"));
				caseDetails.setDays(resultSet.getInt("days"));
				cases.add(caseDetails);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cases;
	}

	public boolean deleteCase(int id) {
		boolean deleted = false;
		try {
			String query = "delete from cases where id = " + id;
			deleted = update(query) == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return deleted;
	}

	public boolean updateCase(Case caseDetails) {
		boolean updated = false;
		try {
			String query = "update cases set name = '" + caseDetails.getName() + "', category = '"
					+ caseDetails.getCategory() + "', days = " + caseDetails.getDays() + " where id = "
					+ caseDetails.getId();
			updated = update(query) == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return updated;
	}

	public String getCaseNames() {
		String civilCaseNames = "";
		String criminalCaseNames = "";
		List<Case> cases = getCases();
		for (Case caseDetail : cases) {
			if (caseDetail.getCategory().equals("civil")) {
				if (civilCaseNames.length() > 0) {
					civilCaseNames += ",";
				}
				civilCaseNames += caseDetail.getName();
			} else {
				if (criminalCaseNames.length() > 0) {
					criminalCaseNames += ",";
				}
				criminalCaseNames += caseDetail.getName();
			}
		}
		return civilCaseNames + "=" + criminalCaseNames;
	}
}