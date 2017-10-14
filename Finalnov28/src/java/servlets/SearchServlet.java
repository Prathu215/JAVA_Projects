package servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CaseDAO;
import DAO.HistoryDAO;
import model.Case;
import model.History;
import model.User;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("user");
		int userId = user.getId();
		String userName = user.getName();
		String caseName = request.getParameter("name").toString();
		String caseCategory = request.getParameter("category").toString();
		String incidentDate = request.getParameter("incidentDate").toString();
		CaseDAO co = new CaseDAO();
		List<Case> cases = co.getCases();
		Case reqCase = null;
		for (Case caseDetail : cases) {
			if (caseDetail.getName().equals(caseName)) {
				reqCase = caseDetail;
				break;
			}
		}
		int days = reqCase.getDays();
		String statuteNumber = reqCase.getStatuteNumber();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Calendar calendar = Calendar.getInstance();
		History history = null;
		try {
			calendar.setTime(dateFormat.parse(incidentDate));
			calendar.add(Calendar.DATE, days);
			String tillDate = dateFormat.format(calendar.getTime());

			HistoryDAO ho = new HistoryDAO();
			history = new History(incidentDate, tillDate, days, userId, userName, caseName, caseCategory, statuteNumber);
			ho.addTrace(history);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		if(history == null) {
			request.getSession().setAttribute("searchFail", "Please try again");
			response.sendRedirect(request.getContextPath() + "/searchCase.jsp");
		} else {
			request.getSession().setAttribute("searchPass", history);
			response.sendRedirect(request.getContextPath() + "/searchResult.jsp");
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
