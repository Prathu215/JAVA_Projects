<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.util.*"%>
<%@ page import="customutils.Util"%>
<%@ page import="model.* "%>
<%@ page import="DAO.* "%>
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
%>
<%
	CaseDAO co = new CaseDAO();
	List<Case> cases = co.getCases();
	pages = cases.size() / maxRows;
	if(cases.size() % maxRows != 0) {
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
<title>View All Cases</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<header>
		<h1>Statute Of Limitations System</h1>
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
			<caption>All Cases</caption>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Category</th>
					<th>Days</th>
				</tr>
			</thead>
			<tbody>
				<%
					counter = 1;
					for(int i = (currentPage - 1) * maxRows; counter <= maxRows && i < cases.size(); i++, counter++) {
						Case caseDetail = cases.get(i);
						%>
							<tr>
								<td><%=caseDetail.getStatuteNumber() %></td>
								<td><%=caseDetail.getName() %></td>
								<td><%=caseDetail.getCategory() %></td>
								<td><%=caseDetail.getDays() %></td>
							</tr>
						<%
					}
				%>
			</tbody>
		</table>
		<br><br>
		<p class="pageNumbers">
			<%
				for(int i = 1; i <= pages; i++) {
					%>
						<a class="pageIndex" href="viewAllCasesU.jsp?page=<%=i %>"><%=i %></a>
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