<%@ page import="java.util.*"%>
<%@ page import="customutils.Util"%>
<%@ page import="model.* "%>
<%@ page import="DAO.* "%>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
%>
<%
	CaseDAO co = new CaseDAO();
	List<Case> cases = co.getCases();
%>
<!DOCTYPE html>
<html>
<head>
<title>View All Cases</title>
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
					for(Case caseDetail : cases) {
%>
<tr>
					<td><%=caseDetail.getId() %></td>
					<td><%=caseDetail.getName() %></td>
					<td><%=caseDetail.getCategory() %></td>
					<td><%=caseDetail.getDays() %></td>
				</tr>
<%						
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>