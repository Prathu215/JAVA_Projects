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
 * Servlet implementation class EditProfileServlet
 */
@WebServlet("/EditProfileServlet")
public class EditProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone = request.getParameter("phone").toString();
		String street = request.getParameter("street").toString();
		String city = request.getParameter("city").toString();
		String state = request.getParameter("state").toString();
		String zip = request.getParameter("zip").toString();
		User user = (User) request.getSession().getAttribute("user");
		UserDAO uo = new UserDAO();
		user.setPhone(phone);
		user.setStreet(street);
		user.setCity(city);
		user.setState(state);
		user.setZip(zip);
		if(uo.updateUser(user)) {
			request.getSession().setAttribute("user", user);
			request.getSession().setAttribute("updateUserPass", "User updated successfully");
		} else {
			request.getSession().setAttribute("updateUserFail", "Please try again");
		}
		response.sendRedirect(request.getContextPath() + "/editProfile.jsp");
	}

}
