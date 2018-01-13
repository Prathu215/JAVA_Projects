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
<title>Admin Home</title>
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
					<li class="right"><a href="aboutUs.jsp">About Us</a></li>
					<li class="right"><a href="contactus.jsp">Contact Us</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<center><h1>WELCOME ADMIN</h1></center>
	</div>
</body>
</html>