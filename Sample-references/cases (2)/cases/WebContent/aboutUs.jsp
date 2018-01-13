<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us</title>
<link rel="stylesheet" type="text/css" href="main.css" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<header>
		<h1>Statute Of Limitations System</h1>
	</header>
	<nav>
	<%
		if(session.getAttribute("user") != null) {
			%>
			<ul>
			<li><a href="userHome.jsp">Home</a></li>
			<li><a href="searchCase.jsp">Request for Statue</a></li>
			<li><a href="history.jsp">View History</a></li>
			<li><a href="editProfile.jsp">Edit Profile</a></li>
			<li><a href="changePasswordU.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
			<%
		} else if(session.getAttribute("admin") != null) {
			 %>
			 <ul>
			<li><a href="adminHome.jsp">Home</a></li>
			<li>
				<a>Update Cases <img src="down.png" class="dropDownIndicator"></a>
				<ul class="subMenu">
					<li><a href="addCase.jsp">Add Case</a></li>
					<li><a href="deleteCases.jsp">Delete Case</a></li>
					<li><a href="updateCases.jsp">Modify Case</a></li>
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
			<li><a href="index.jsp">Home</a></li>
			<li>Login <img src="down.png" class="dropDownIndicator">
				<ul class="subMenu">
					<li><a href="adminLogin.jsp">Admin</a></li>
					<li><a href="login.jsp">ACCUSED / DEFENDANT</a></li>
				</ul>
			</li>
			<li><a href="registration.jsp">Registration</a></li>
			
			<li class="right"><a href="contactus.jsp">Contact Us</a></li>
                        <li class="right"><a href="aboutUs.jsp">About Us</a></li>
		</ul>
			 <%
		}
	%>
	</nav>
	<div id="mainWrapper">
		<div class="imageAndText">
			<div class="imageHolder">
                            <br><br>
				<img src="aboutImage.jpg" class="largeImage" />
			</div>
			<div class="textHolder">
                            <br><br><br><br>
				<p class="largeText">Statutes of limitations are laws passed by legislative bodies in common law systems to set the maximum time after an event within which legal proceedings may be initiated. When the period of time specified in a statute of limitations passes, a claim might no longer be filed.A user can easily get information in this system for his particular case to file a lawsuit.</p>
			</div>
		</div>
		<br />
		<br />
		<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
		</div>
	</div>
</body>
</html>