<%@ page import="customutils.Util"%>
<%
	if(request.getSession().getAttribute("admin") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
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
			newpassword = document.getElementById("newPassword").value;
			repeatPassword = document.getElementById("repeatPassword").value;
			if(newpassword.length < 6) {
				errorShow.innerHTML = "Min. password length is 6";
				return false;
			} else if(newpassword != repeatPassword) {
				errorShow.innerHTML = "Both passwords should match";
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
			<li><a href="adminHome.jsp">Home</a></li>
			<li><a href="addCase.jsp">Add Case</a></li>
			<li><a href="changePassword.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<form action="ChangePasswordServlet" method="POST" onsubmit="return validate()">
			<fieldset>
				<legend>Change Password</legend>
				<label class="longlabel">Current Password</label>
				<input type="password" name="currentPassword" />
				<br />
				<label class="longlabel">New Password</label>
				<input type="password" name="newPassword" id="newPassword" />
				<br />
				<label class="longlabel">Repeat Password</label>
				<input type="password" name="repeatPassword" id="repeatPassword" />
				<br />
				<input type="submit" value="Change Password" class="longbutton" />
				<br />
				<span class="error" id="error"><%=Util.getValue(session, "changePasswordFail") %></span>
				<span class="success"><%=Util.getValue(session, "changePasswordPass") %></span>
			</fieldset>
		</form>
	</div>
</body>
</html>