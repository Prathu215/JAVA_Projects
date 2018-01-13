<%@ page import="DAO.*"%>
<%
	if(request.getSession().getAttribute("admin") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
	if (request.getParameter("id") != null) {
		try {
			int caseId = Integer.parseInt(request.getParameter("id").toString());
			CaseDAO co = new CaseDAO();
			co.deleteCase(caseId);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	response.sendRedirect(request.getContextPath() + "/deleteCases.jsp");
%>