<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="customutils.Util" %>
<%
	if(request.getSession().getAttribute("user") != null) {
		response.sendRedirect(request.getContextPath() + "/userHome.jsp");
		return;
	} else if(request.getSession().getAttribute("admin") != null) {
		response.sendRedirect(request.getContextPath() + "/adminHome.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Statute Of Limitations System</title>
<link rel="stylesheet" type="text/css" href="main.css" />
<script type="text/javascript" src="script.js"></script>
</head>
<body>
	<header>
		<h1>Statute Of Limitations System</h1>
	</header>
	<nav>
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
	</nav>
	<div class="clear"></div>
	<div id="mainWrapper">
		<div class="aboutImage">
			<img class="largeImage" src="sol.jpg" />
			<span class="sideText">If you are new user, go to <a href="registration.jsp">Registration</a></span>
		</div>
		<p class="aboutDesc largeText">Statutes of limitations are laws passed by legislative bodies in common law systems to set the maximum time after an event within which legal proceedings may be initiated.</p>
	</div>
	<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
</body>
</html>