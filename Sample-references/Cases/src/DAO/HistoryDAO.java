package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connection.DBConnection;
import model.History;

public class HistoryDAO {
	private Connection connection;

	public HistoryDAO() {
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

	public boolean addTrace(History history) {
		boolean added = false;
		try {
			String query = "insert into history (userid, casename, casecategory, incidentdate, tilldate)" + "values("
					+ history.getUserId() + ", '" + history.getCaseName() + "', '" + history.getCaseCategory() + "', '"
					+ history.getIncidentDate() + "', '" + history.getTillDate() + "')";
			added = update(query) == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return added;
	}

	public List<History> getHistory(int userId) {
		List<History> historyList = new ArrayList<>();
		try {
			String query = "select * from history where userid = " + userId + " order by id desc";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				History history = new History();
				history.setCaseCategory(resultSet.getString("casecategory"));
				history.setCaseName(resultSet.getString("casename"));
				history.setIncidentDate(resultSet.getString("incidentdate"));
				history.setTillDate(resultSet.getString("tilldate"));
				historyList.add(history);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return historyList;
	}
}