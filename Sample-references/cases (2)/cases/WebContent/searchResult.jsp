<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="customutils.Util" %>
<%@ page import="DAO.*" %>
<%@ page import="model.*" %>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		return;
	}
%>
<%
	History history = null;
	if(request.getSession().getAttribute("searchPass") != null) {
		history = (History) request.getSession().getAttribute("searchPass");
	}
	if(history == null) {
		response.sendRedirect(request.getContextPath() + "/searchCase.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	
</head>
<body>
	<header>
		<h1>Statute Of Limitations System</h1>
	</header>
	<nav>
		<ul>
			<li><a href="userHome.jsp">Home</a></li>
			<li><a href="searchCase.jsp">Request for Case Limitation</a></li>
			<li><a href="history.jsp">View History</a></li>
			<li><a href="editProfile.jsp">Edit Profile</a></li>
			<li><a href="changePasswordU.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<table>
			<caption>Search Result</caption>
			<tbody>
				<tr>
					<th>Id</th>
					<td><%=history.getId() %></td>
				</tr>
				<tr>
					<th>Name of Accused</th>
					<td><%=history.getUserName() %></td>
				</tr>
				<tr>
					<th>Statute Number</th>
					<td><%=history.getStatuteNumber() %></td>
				</tr>
				<tr>
					<th>Case Type</th>
					<td><%=history.getCaseCategory() %></td>
				</tr>
				<tr>
					<th>Incident Type</th>
					<td><%=history.getCaseName() %></td>
				</tr>
				<tr>
					<th>Date of Incident</th>
					<td><%=history.getIncidentDate() %></td>
				</tr>
				<tr>
					<th>Time Duration</th>
					<td><%=history.getDays() %> days</td>
				</tr>
				<tr>
					<th>Last date file a law suit</th>
					<td><%=history.getTillDate() %></td>
				</tr>
				<tr>
					<th>Days remaining</th>
					<td><%=history.getRemainingDays() %></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
</body>
</html>