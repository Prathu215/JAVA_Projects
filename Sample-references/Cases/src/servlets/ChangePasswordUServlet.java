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
@WebServlet("/ChangePasswordUServlet")
public class ChangePasswordUServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordUServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		String currentPassword = request.getParameter("currentPassword").toString();
		String newPassword = request.getParameter("newPassword").toString();
		if(user.getPassword().equals(currentPassword)) {
			UserDAO uo = new UserDAO();
			user.setPassword(newPassword);
			if(uo.changePassword(user)) {
				request.getSession().setAttribute("user", user);
				request.getSession().setAttribute("changePasswordPass", "Password changed successfully");
			} else {
				request.getSession().setAttribute("changePasswordFail", "Please try again");
			}
		} else {
			request.getSession().setAttribute("changePasswordFail", "Invalid current password");
		}
		response.sendRedirect(request.getContextPath() + "/changePasswordU.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
