<%@ page import="java.util.*"%>
<%@ page import="customutils.Util"%>
<%@ page import="model.* "%>
<%@ page import="DAO.* "%>
<%
	if(request.getSession().getAttribute("admin") == null) {
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
<title>Delete Case</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<header>
		<h1>Statue Of Limitations</h1>
	</header>
	<nav>
		<ul>
			<li><a href="adminHome.jsp">Home</a></li>
			<li>
				<a>Manage Cases</a>
				<ul class="subMenu">
					<li><a href="addCase.jsp">Add Case</a></li>
					<li><a href="deleteCases.jsp">Delete Case</a></li>
					<li><a href="updateCases.jsp">Update Case</a></li>
					<li><a href="viewAllCasesA.jsp">View All</a></li>
				</ul>
			</li>
			<li><a href="changePassword.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
                        <li class="right"><a href="contactus.jsp">Contact Us</a></li>
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<span class="success" style="text-align: center;display: block;"><%=Util.getValue(session, "caseAddedPass") %><%=Util.getValue(session, "caseUpdatedPass") %></span>
		<table>
			<caption>Delete Cases</caption>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Category</th>
					<th>Days</th>
					<th>Delete</th>
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
					<td><a href="deleteCase.jsp?id=<%=caseDetail.getId() %>">Delete</a></td>
				</tr>
<%						
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>