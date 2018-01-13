package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import model.User;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email").toString();
		String password = request.getParameter("password").toString();
		String type = request.getParameter("type").toString();
		UserDAO userDAO = new UserDAO();
		User user = userDAO.getUserByEmail(email);
		if (user!= null && user.getPassword().equals(password) && user.getType().equals(type)) {
			if(user.getType().equals("admin")) {
				request.getSession().setAttribute("admin", user);
				response.sendRedirect(request.getContextPath() + "/adminHome.jsp");
			} else {
				request.getSession().setAttribute("user", user);
				response.sendRedirect(request.getContextPath() + "/userHome.jsp");
			}
		} else {
			request.getSession().setAttribute("invalid", "Invalid credentials");
			response.sendRedirect(request.getContextPath() + "/login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
