package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CaseDAO;
import model.Case;

/**
 * Servlet implementation class AddCaseServlet
 */
@WebServlet("/AddCaseServlet")
public class AddCaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCaseServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name").toString();
		String category = request.getParameter("category").toString();
		int days = Integer.parseInt(request.getParameter("days").toString());
		String statuteNumber = request.getParameter("statuteNumber").toString();
		Case caseDetails = new Case(name, category, days, statuteNumber);
		CaseDAO caseDAO = new CaseDAO();
		if(caseDAO.getCaseByStatuteNumber(statuteNumber) != null) {
			request.getSession().setAttribute("caseAddedFail", "Statute Number already exist");
			response.sendRedirect(request.getContextPath() + "/addCase.jsp");
		} else if (caseDAO.addCase(caseDetails)) {
			request.getSession().setAttribute("caseAddedPass", "Case Added Successfully");
			response.sendRedirect(request.getContextPath() + "/addCase.jsp");
		} else {
			request.getSession().setAttribute("caseAddedFail", "Please try again!!!");
			response.sendRedirect(request.getContextPath() + "/addCase.jsp");
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
