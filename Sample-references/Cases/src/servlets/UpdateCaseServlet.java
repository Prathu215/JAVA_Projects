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
 * Servlet implementation class UpdateCaseServlet
 */
@WebServlet("/UpdateCaseServlet")
public class UpdateCaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateCaseServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int caseId = Integer.parseInt(request.getParameter("caseId").toString());
		String name = request.getParameter("name").toString();
		String category = request.getParameter("category").toString();
		int days = Integer.parseInt(request.getParameter("days").toString());
		Case caseDetails = new Case(caseId, name, category, days);
		CaseDAO caseDAO = new CaseDAO();
		if (caseDAO.updateCase(caseDetails)) {
			request.getSession().setAttribute("caseUpdatedPass", "Case Updated Successfully");
			response.sendRedirect(request.getContextPath() + "/updateCases.jsp");
		} else {
			request.getSession().setAttribute("caseUpdatedFail", "Please try again!!!");
			response.sendRedirect(request.getContextPath() + "/updateCase.jsp?id=" + caseId);
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
