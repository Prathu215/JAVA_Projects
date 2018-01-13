<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
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
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
			<li class="right"><a href="contactus.jsp">Contact Us</a></li>
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
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
			<li class="right"><a href="contactus.jsp">Contact Us</a></li>
		</ul>
			 <%
		} else {
			 %>
			 <ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="registration.jsp">Registration</a></li>
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
			<li class="right"><a href="contactus.jsp">Contact Us</a></li>
		</ul>
			 <%
		}
	%>
	</nav>
	<div id="mainWrapper">
		<table>
			<caption>Contact Us</caption>
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Prathyusha</td>
					<td>prathyusha.vinukonda@gmail.com</td>
					<td>+1 203 390 0750</td>
				</tr>
				<tr>
					<td>Prathyusha</td>
					<td>prathyusha.vinukonda@gmail.com</td>
					<td>+1 203 390 0750</td>
				</tr>
				<tr>
					<td>Prathyusha</td>
					<td>prathyusha.vinukonda@gmail.com</td>
					<td>+1 203 390 0750</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>