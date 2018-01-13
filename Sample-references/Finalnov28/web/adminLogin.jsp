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
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript" src="script.js"></script>
	<script type="text/javascript">
		function forgot() {
			email = document.getElementById("email").value;
			errorShow = document.getElementById("error");
			if(email.trim().length == 0) {
				errorShow.innerHTML = "Enter email";
			} else {
				window.location.href = "forgotpassword.jsp?email=" + email;
			}
		}
	</script>
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
					<li><a href="login.jsp">ACCUSER / DEFENDANT</a></li>
				</ul>
			</li>
			<li><a href="registration.jsp">Registration</a></li>
			
			<li class="right"><a href="contactus.jsp">Contact Us</a></li>
                        <li class="right"><a href="aboutUs.jsp">About Us</a></li>
		</ul>
	</nav>
	<form action="AdminLoginServlet" method="POST">
		<fieldset>
			<legend>Admin LOGIN</legend>
			<label>(Email Id) Login Id</label>
			<input type="email" name="email" id="email" />
			<br />
			<label>Password</label>
			<input type="password" name="password" />
			<br />
			<input type="submit" value="Submit" />
			<input type="button" value="Forgot Password" onclick="forgot()" />
			<br />
			<span class="error" id="error"><%=Util.getValue(session, "invalid") %><%=Util.getValue(session, "forgotPasswordFail") %></span>
			<span class="success"><%=Util.getValue(session, "registrationPass") %></span>
		</fieldset>
	</form>
	<p class="aboutDesc "></p>
	
	<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
		</div>
</body>
</html>