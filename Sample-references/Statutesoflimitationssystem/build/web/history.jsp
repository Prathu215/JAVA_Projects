<%@ page import="customutils.Util" %>
<%@ page import="DAO.*"%>
<%@ page import="model.*"%>
<%@ page import="java.util.*"%>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
	User user = (User) session.getAttribute("user");
	int userId = user.getId();
	HistoryDAO ho = new HistoryDAO();
	List<History> historyList = ho.getHistory(userId);
	int i = 1;
%>
<!DOCTYPE html>
<html>
<head>
	<title>Search History</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<header>
		<h1>Statue Of Limitations</h1>
	</header>
	<nav>
		<ul>
			<li><a href="userHome.jsp">Home</a></li>
			<li>
				<a>Manage Tasks</a>
				<ul class="subMenu">
					<li><a href="viewAllCasesU.jsp">View All Cases</a></li>
					<li><a href="history.jsp">View All History</a></li>
					<li><a href="searchCase.jsp">Search Case</a></li>
				</ul>
			</li>
			<li><a href="changePasswordU.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
                        <li class="right"><a href="contactus.jsp">Contact Us</a></li>
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<table>
			<caption>History</caption>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Category</th>
					<th>Incident Date</th>
					<th>Till Date</th>
				</tr>
			</thead>
			<tbody>
				<%
					for(History history : historyList) {
						%>
							<tr>
								<td><%=i %></td>
								<td><%=history.getCaseName() %></td>
								<td><%=history.getCaseCategory() %></td>
								<td><%=history.getIncidentDate() %></td>
								<td><%=history.getTillDate() %></td>
							</tr>
						<%
						i++;
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>