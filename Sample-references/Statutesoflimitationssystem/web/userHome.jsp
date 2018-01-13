<%@ page import="model.*" %>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
	User user = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
	<title>User Home</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body onload="load()">
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
		<center><h1>Welcome <%=user.getName() %></h1></center>
	</div>
</body>
</html>