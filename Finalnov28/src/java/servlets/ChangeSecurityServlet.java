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
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangeSecurityServlet")
public class ChangeSecurityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeSecurityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("admin");
		String question = request.getParameter("securityQuestion").toString();
		String answer = request.getParameter("securityAnswer").toString();
		UserDAO uo = new UserDAO();
		user.setQuestion(question);
		user.setAnswer(answer);
		if(uo.updateSecurity(user)) {
			request.getSession().setAttribute("admin", user);
			request.getSession().setAttribute("securityPass", "Security Details Changed");
		} else {
			request.getSession().setAttribute("securityFail", "Please try again");
		}
		response.sendRedirect(request.getContextPath() + "/changePassword.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
