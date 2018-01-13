<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="customutils.Util" %>
<%@ page import="DAO.*"%>
<%@ page import="model.*"%>
<%
	Case caseDetail = null;
	String criminalChecked = "";
	String civilChecked = "";
	if (request.getParameter("id") != null) {
		try {
			int caseId = Integer.parseInt(request.getParameter("id").toString());
			CaseDAO co = new CaseDAO();
			caseDetail = co.getCaseById(caseId);
			criminalChecked = caseDetail.getCategory().equals("criminal") ? "checked" : "";
			civilChecked = caseDetail.getCategory().equals("civil") ? "checked" : "";
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	if(request.getSession().getAttribute("admin") == null || caseDetail == null) {
		response.sendRedirect(request.getContextPath() + "/adminHome.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Case</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<header>
		<h1>CASE LIMITATION</h1>
	</header>
	<nav>
		<ul>
			<li><a href="adminHome.jsp">Home</a></li>
			<li>
				<a>Update Cases <img src="down.png" class="dropDownIndicator"></a>
				<ul class="subMenu">
					<li><a href="addCase.jsp">Add Case</a></li>
					<li><a href="deleteCases.jsp">Delete Case</a></li>
					<li><a href="updateCases.jsp">Modify Case</a></li>
					<li><a href="viewAllCasesA.jsp">View All</a></li>
				</ul>
			</li>
			<li><a href="changePassword.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
			<li class="right"><a href="contactus.jsp">Contact Us</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<form action="UpdateCaseServlet" method="POST">
			<input type="hidden" name="caseId" value="<%=caseDetail.getId() %>" />
			<input type="hidden" name="statuteNumber" value="<%=caseDetail.getStatuteNumber() %>" />
			<fieldset>
				<legend>Update Case</legend>
				<label>Statute Number</label>
				&emsp;
				<label><%=caseDetail.getStatuteNumber() %></label>
				<br />
				<label>Category</label>
				<input type="radio" name="category" checked="<%=civilChecked %>" value="civil">
				<span class="inlinespan" class="radioMessage">Civil</span>
				&emsp;
				<input type="radio" name="category" checked="<%=criminalChecked %>" value="criminal">
				<span class="inlinespan" class="radioMessage">Criminal</span>
				<br />
				<label>Name</label>
				<input type="text" name="name" value="<%=caseDetail.getName() %>" />
				<br />
				<label>Days</label>
				<input type="number" min="1" name="days" value="<%=caseDetail.getDays() %>" />
				<br />
				<input type="submit" value="Update Case" class="longbutton" />
				<br />
				<span class="error"><%=Util.getValue(session, "caseUpdatedFail") %></span>
			</fieldset>
		</form>
		<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
	</div>
</body>
</html>