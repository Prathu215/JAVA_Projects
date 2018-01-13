<%@ page import="customutils.Util" %>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
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
		<h1>CASE LIMITATION</h1>
	</header>
	<nav>
		<ul>
			<li><a href="index.html">Home</a></li>
			<li><a href="login.jsp">Login</a></li>
			<li><a href="registration.jsp">Registration</a></li>
			<li><a href="contactus.html">Contact Us</a></li>
		</ul>
	</nav>
	<form action="LoginServlet" method="POST">
		<fieldset>
			<legend>LOGIN</legend>
			<label>Email</label>
			<input type="email" name="email" id="email" />
			<br />
			<label>Password</label>
			<input type="password" name="password" />
			<br />
			<input type="submit" value="Login" />
			<input type="button" value="Forgot Password" onclick="forgot()" />
			<br />
			<span class="error" id="error"><%=Util.getValue(session, "invalid") %><%=Util.getValue(session, "forgotPasswordFail") %></span>
			<span class="success"><%=Util.getValue(session, "registrationPass") %></span>
		</fieldset>
	</form>
</body>
</html>