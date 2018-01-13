<%@ page import="customutils.Util" %>
<!DOCTYPE html>
<html>
<head>
	<title>Registration</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript">
		function validate() {
			errorShow = document.getElementById("error");
			name = document.getElementById("name").value;
			email = document.getElementById("email").value;
			password = document.getElementById("password").value;
			repeat = document.getElementById("repeat").value;
			question = document.getElementById("question").value;
			answer = document.getElementById("answer").value;
			if(name.trim().length == 0) {
				errorShow.innerHTML = "Invalid Name";
				return false;
			} else if(name.trim().length < 3) {
				errorShow.innerHTML = "Min. name length is 3";
				return false;
			} else if(email.trim().length == 0) {
				errorShow.innerHTML = "Invalid email";
				return false;
			} else if(password.length < 6) {
				errorShow.innerHTML = "Min. password length is 6";
				return false;
			} else if(password != repeat) {
				errorShow.innerHTML = "Both passwords should match";
				return false;
			} else if(question.trim().length < 3) {
				errorShow.innerHTML = "Min. question length is 3";
				return false;
			} else if(answer.length < 3) {
				errorShow.innerHTML = "Min. answer length is 3";
				return false;
			}
			return true;
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
	<form action="RegisterServlet" method="POST" onsubmit="return validate()">
		<fieldset>
			<legend>REGISTRATION</legend>
			<label>Name</label>
			<input type="text" name="name" id="name" />
			<br />
			<label>Email</label>
			<input type="email" name="email" id="email" />
			<br />
			<label>Password</label>
			<input type="password" name="password" id="password" />
			<br />
			<label>Repeat</label>
			<input type="password" name="password" id="repeat" />
			<br />
			<label>Question</label>
			<input type="text" name="question" id="question" />
			<br />
			<label>Answer</label>
			<input type="text" name="answer" id="answer" />
			<br />
			<input type="submit" value="Register" />
			<br />
			<span id="error" class="error"><%=Util.getValue(session, "registrationFail") %></span>
		</fieldset>
	</form>
</body>
</html>