<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="DAO.*"%>
<%
	if(request.getSession().getAttribute("admin") == null) {
		response.sendRedirect(request.getContextPath() + "/adminlogin.jsp");
		return;
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