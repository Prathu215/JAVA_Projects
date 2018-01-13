<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="model.*" %>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		return;
	}
	User user = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
	<title>User Home</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript" src="script.js"></script>
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
		<center><h1>Welcome <%=user.getName() %></h1></center>
		<div id="mainWrapper">
			<div class="aboutImage">
				<img src="sol.jpg" />
			</div>
		</div>
		<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
	</div>
</body>
</html>