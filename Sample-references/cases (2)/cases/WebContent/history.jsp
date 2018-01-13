<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="customutils.Util" %>
<%@ page import="DAO.*"%>
<%@ page import="model.*"%>
<%@ page import="java.util.*"%>
<%!
	int currentPage = -1;
	int pages = 0;
	int maxRows = 6;
	int counter = 0;
%>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		return;
	}
	User user = (User) session.getAttribute("user");
	int userId = user.getId();
	HistoryDAO ho = new HistoryDAO();
	List<History> historyList = ho.getHistory(userId);
	pages = historyList.size() / maxRows;
	if(historyList.size() % maxRows != 0) {
		pages++;
	}
	if(request.getParameter("page") == null) {
		currentPage = 1;
	} else {
		String temp = request.getParameter("page").toString();
		try {
			currentPage = Integer.parseInt(temp);
			if(currentPage > pages || currentPage <= 0) {
				currentPage = 1;
			}
		} catch(Exception e) {
			currentPage = 1;
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Search History</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
        <script type="text/javascript" src="script.js"></script>
</head>
<body>
	<header>
		<h1>Statue Of Limitations</h1>
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
			<caption>History</caption>
			<thead>
				<tr>
					<th>Sl.No</th>
					<th>Id</th>
					<th>Statute Number</th>
					<th>Case Type</th>
					<th>Incident Type</th>
					<th>Date of Incident</th>
					<th>Time Duration</th>
					<th>Last date file a law suit</th>
					<th>Days remaining</th>
				</tr>
			</thead>
			<tbody>
				<%
					counter = 1;
					for(int i = (currentPage - 1) * maxRows; counter <= maxRows && i < historyList.size(); i++) {
						History history = historyList.get(i);
						%>
							<tr>
								<td><%=counter %></td>
								<td><%=history.getId() %></td>
								<td><%=history.getStatuteNumber() %></td>
								<td><%=history.getCaseCategory() %></td>
								<td><%=history.getCaseName() %></td>
								<td><%=history.getIncidentDate() %></td>
								<td><%=history.getDays() %> days</td>
								<td><%=history.getTillDate() %></td>
								<td><%=history.getRemainingDays() %></td>
							</tr>
						<%
						counter++;
					}
				%>
			</tbody>
		</table>
		<br><br>
		<p class="pageNumbers">
			<%
				for(int i = 1; i <= pages; i++) {
					%>
						<a class="pageIndex" href="history.jsp?page=<%=i %>"><%=i %></a>
					<%
				}
			%>
		</p>
	</div>
    <div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
</body>
</html>