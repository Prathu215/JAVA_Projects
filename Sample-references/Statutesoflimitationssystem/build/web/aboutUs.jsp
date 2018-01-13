<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<header>
		<h1>Statue Of Limitations</h1>
	</header>
	<nav>
	<%
		if(session.getAttribute("user") != null) {
			%>
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
			<%
		} else if(session.getAttribute("admin") != null) {
			 %>
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
			 <%
		} else {
			 %>
			 <ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="registration.jsp">Registration</a></li>
                        <li class="right"><a href="contactus.jsp">Contact Us</a></li>
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
		</ul>
			 <%
		}
	%>
	</nav>
	<div id="mainWrapper">
		<div class="aboutImage">
			<img src="sol.jpg" />
		</div>
		<p class="aboutDesc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	</div>
</body>
</html>