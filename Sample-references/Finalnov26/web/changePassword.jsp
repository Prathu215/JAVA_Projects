<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="customutils.Util"%>
<%@ page import="model.*"%>
<%
	if(request.getSession().getAttribute("admin") == null) {
		response.sendRedirect(request.getContextPath() + "/adminLogin.jsp");
		return;
	}
	User user = (User) request.getSession().getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript">
		function validate() {
			errorShow = document.getElementById("error");
			currentPassword = document.getElementById("currentPassword").value;
			newpassword = document.getElementById("newPassword").value;
			repeatPassword = document.getElementById("repeatPassword").value;
			if(newpassword.length < 6) {
				errorShow.innerHTML = "Min. password length is 6";
				return false;
			} else if(newpassword != repeatPassword) {
				errorShow.innerHTML = "Both new passwords should match";
				return false;
			} else if(currentPassword == newPassword) {
				errorShow.innerHTML = "Current, New passwords cannot be same";
				return false;
			}
			return true;
		}
		
		function validateSecurity() {
			errorShow = document.getElementById("errorSecurity");
			question = document.getElementById("securityQuestion").value;
			answer = document.getElementById("securityAnswer").value;
			if(question.trim().length < 3) {
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
		<h1>Statute Of Limitations System</h1>
	</header>
	<nav>
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
	</nav>
	<div id="mainWrapper">
		<form action="ChangePasswordServlet" method="POST" onsubmit="return validate()">
			<fieldset>
				<legend>Change Password</legend>
				<label class="longlabel">Current Password</label>
				<input type="password" name="currentPassword" id="currentPassword" />
				<br />
				<label class="longlabel">New Password</label>
				<input type="password" name="newPassword" id="newPassword" />
				<br />
				<label class="longlabel">Repeat Password</label>
				<input type="password" name="repeatPassword" id="repeatPassword" />
				<br />
				<input type="submit" value="Submit" class="longbutton" />
				<br />
				<span class="error" id="error"><%=Util.getValue(session, "changePasswordFail") %></span>
				<span class="success"><%=Util.getValue(session, "changePasswordPass") %></span>
			</fieldset>
		</form>
		<br>
		<form action="ChangeSecurityServlet" method="POST" onsubmit="return validateSecurity()">
			<fieldset>
				<legend>Security</legend>
				<label class="longlabel">Security Question</label>
				<input type="text" name="securityQuestion" id="securityQuestion" value="<%=user.getQuestion() %>" />
				<br />
				<label class="longlabel">Security Answer</label>
				<input type="text" name="securityAnswer" id="securityAnswer" value="<%=user.getAnswer() %>" />
				<br />
				<input type="submit" value="Submit" class="longbutton" />
				<br />
				<span class="error" id="errorSecurity"><%=Util.getValue(session, "securityFail") %></span>
				<span class="success"><%=Util.getValue(session, "securityPass") %></span>
			</fieldset>
		</form>
		<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
		</div>
	</div>
</body>
</html>