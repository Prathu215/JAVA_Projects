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
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
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
		String firstname = request.getParameter("firstname").toString();
                String lastname = request.getParameter("lastname").toString();
                String name = firstname + " " + lastname;
		String question = request.getParameter("question").toString();
		String answer = request.getParameter("answer").toString();
		String phone = request.getParameter("phone").toString();
		String street = request.getParameter("street").toString();
		String city = request.getParameter("city").toString();
		String state = request.getParameter("state").toString();
		String zip = request.getParameter("zip").toString();
		String type = "user";
		User user = new User(name, email, password, question, answer, type, phone, street, city, state, zip);
		UserDAO uo = new UserDAO();
		if(uo.getUserByEmail(email) == null) {
			if (uo.addUser(user)) {
				request.getSession().setAttribute("registrationPass", "Registration successfull");
				response.sendRedirect(request.getContextPath() + "/login.jsp");
			} else {
				request.getSession().setAttribute("registrationFail", "Please try again!!!");
				response.sendRedirect(request.getContextPath() + "/registration.jsp");
			}
		} else {
			request.getSession().setAttribute("registrationFail", "Email already in use");
			response.sendRedirect(request.getContextPath() + "/registration.jsp");
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
