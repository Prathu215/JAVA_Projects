<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="customutils.Util" %>
<%@ page import="DAO.*"%>
<%@ page import="model.*"%>
<%
	boolean valid = false;
	User user = null;
	if(request.getParameter("email") != null) {
		String email = request.getParameter("email").toString();
		UserDAO uo = new UserDAO();
		user = uo.getUserByEmail(email);
		if(user != null) {
			valid = true;
		}
	}
	if(!valid || user == null) {
		request.getSession().setAttribute("forgotPasswordFail", "Invalid email");
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		return;
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Forgot Password</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript" src="script.js"></script>
	<script type="text/javascript">
		var answer = "<%=user!=null?user.getAnswer():"" %>";
		var password = "<%=user!=null?user.getPassword():"" %>";
		
		function validate() {
			errorShow = document.getElementById("error");
			successShow = document.getElementById("success");
			successShow.innerHTML = "";
			errorShow.innerHTML = "";
			input = document.getElementById("answer").value;
			if(input.toLowerCase() == answer.toLowerCase()) {
				successShow.innerHTML = "Password : " + password;
			} else {
				errorShow.innerHTML = "Incorrect answer";
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
			<li><a href="login.jsp">Login</a></li>
			<li><a href="registration.jsp">Registration</a></li>
			
			<li class="right"><a href="contactus.jsp">Contact Us</a></li>
                        <li class="right"><a href="aboutUs.jsp">About Us</a></li>
		</ul>
	</nav>
	<form>
		<fieldset>
			<legend>Forgot Password</legend>
			<label>Email</label>
			<strong><%=user!=null?user.getEmail():"" %></strong>
			<br />
			<label>Security Question</label>
			<strong><%=user!=null?user.getQuestion():"" %></strong>
			<br />
			<label>Security Answer</label>
			<input type="text" id="answer" />
			<br />
			<input type="button" value="Retrive" onclick="validate()" />
			<br>
			<span>Forgot security answer? Click <a href="" id="securityInfoSender">Here</a></span>
			<br>
			<span class="error" id="error"><%=Util.getValue(session, "sendSecurityFail") %></span>
			<span class="success" id="success"><%=Util.getValue(session, "sendSecurityPass") %></span>
		</fieldset>
	</form>
	<script type="text/javascript">
		sis = document.getElementById("securityInfoSender");
		email = "<%=user.getEmail() %>";
		sis.href = "sendSecurityInformation.jsp?email=" + email;
	</script>
	<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
</body>
</html>