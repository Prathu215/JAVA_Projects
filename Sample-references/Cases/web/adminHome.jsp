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
<title>Login</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<header>
		<h1>CASE LIMITATION</h1>
	</header>
	<nav>
		<ul>
			<li><a href="adminHome.jsp">Home</a></li>
			<li><a href="addCase.jsp">Add Case</a></li>
			<li><a href="changePassword.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<span class="success" style="text-align: center;display: block;"><%=Util.getValue(session, "caseAddedPass") %><%=Util.getValue(session, "caseUpdatedPass") %></span>
		<table>
			<caption>All Cases</caption>
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Category</th>
					<th>Days</th>
					<th>Delete</th>
					<th>Update</th>
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
					<td><a href="updateCase.jsp?id=<%=caseDetail.getId() %>">Update</a></td>
				</tr>
<%						
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>