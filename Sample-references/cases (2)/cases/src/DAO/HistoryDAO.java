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

	public boolean addTrace(History history) {
		boolean added = false;
		try {
			String query = "insert into history (userid, casename, casecategory, incidentdate, tilldate, days, statuteNumber)"
					+ "values(" + history.getUserId() + ", '" + history.getCaseName() + "', '"
					+ history.getCaseCategory() + "', '" + history.getIncidentDate() + "', '" + history.getTillDate()
					+ "', " + history.getDays() + ", '" + history.getStatuteNumber() + "')";
			try {
				Statement statement = connection.createStatement();
				int rowsEffected = statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
				if (rowsEffected == 1) {
					ResultSet resultSet = statement.getGeneratedKeys();
					if (resultSet.next()) {
						int id = resultSet.getInt(1);
						history.setId(id);
					}
					added = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return added;
	}

	public List<History> getHistory(int userId) {
		List<History> historyList = new ArrayList<History>();
		try {
			String query = "select *, (select name from users where id = " + userId
					+ ") as name1 from history where userid = " + userId + " order by id desc";
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				History history = new History();
				history.setId(resultSet.getInt("id"));
				history.setUserName(resultSet.getString("name1"));
				history.setCaseCategory(resultSet.getString("casecategory"));
				history.setCaseName(resultSet.getString("casename"));
				history.setIncidentDate(resultSet.getString("incidentdate"));
				history.setTillDate(resultSet.getString("tilldate"));
				history.setDays(resultSet.getInt("days"));
				history.setStatuteNumber(resultSet.getString("statuteNumber"));
				historyList.add(history);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return historyList;
	}
}