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
@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("admin");
		String currentPassword = request.getParameter("currentPassword").toString();
		String newPassword = request.getParameter("newPassword").toString();
		if(currentPassword.equals(newPassword)) {
			request.getSession().setAttribute("changePasswordFail", "Current, New passwords cannot be same");
		} else if(user.getPassword().equals(currentPassword)) {
			UserDAO uo = new UserDAO();
			user.setPassword(newPassword);
			if(uo.changePassword(user)) {
				request.getSession().setAttribute("admin", user);
				request.getSession().setAttribute("changePasswordPass", "Password changed successfully");
			} else {
				request.getSession().setAttribute("changePasswordFail", "Please try again");
			}
		} else {
			request.getSession().setAttribute("changePasswordFail", "Invalid current password");
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
