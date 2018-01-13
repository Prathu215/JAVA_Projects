package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import connection.DBConnection;
import model.User;

public class UserDAO {
	private Connection connection;

	public UserDAO() {
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

	public User getUserByEmail(String email) {
		User user = null;
		try {
			Statement statement = connection.createStatement();
			String query = "select * from users where email like '" + email + "'";
			ResultSet resultSet = statement.executeQuery(query);
			if (resultSet.next()) {
				user = new User();
				user.setId(resultSet.getInt("id"));
				user.setName(resultSet.getString("name"));
				user.setEmail(resultSet.getString("email"));
				user.setPassword(resultSet.getString("password"));
				user.setQuestion(resultSet.getString("question"));
				user.setAnswer(resultSet.getString("answer"));
				user.setType(resultSet.getString("type"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	public boolean changePassword(User user) {
		boolean changed = false;
		try {
			String query = "update users set password = '" + user.getPassword() + "' where id = " + user.getId();
			changed = update(query) == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return changed;
	}

	public boolean addUser(User user) {
		boolean added = false;
		try {
			String query = "insert into users (name, email, password, question, answer, type) " + "values('"
					+ user.getName() + "', '" + user.getEmail() + "', '" + user.getPassword() + "', '"
					+ user.getQuestion() + "', '" + user.getAnswer() + "', '" + user.getType() + "')";
			added = update(query) == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return added;
	}
}