<%@ page import="customutils.Util" %>
<%
	if(request.getSession().getAttribute("admin") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Add Case</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript">
		function validate() {
			errorShow = document.getElementById("error");
			name = document.getElementById("name").value;
			days = document.getElementById("days").value;
			if(name.trim().length == 0) {
				errorShow.innerHTML = "Invalid Name";
				return false;
			} else if(name.trim().length < 3) {
				errorShow.innerHTML = "Min. name length is 3";
				return false;
			} else if(days <= 0) {
				errorShow.innerHTML = "Days should be > 0";
				return false;
			}
			return true;
		}
	</script>
</head>
<body>
	<header>
		<h1>Statue Of Limitations</h1>
	</header>
	<nav>
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
	</nav>
	<div id="mainWrapper">
		<span class="success" style="text-align: center;display: block;"><%=Util.getValue(session, "caseAddedPass") %></span>
		<form action="AddCaseServlet" method="POST" onsubmit="return validate()">
			<fieldset>
				<legend>Add Case</legend>
				<label class="shortlabel">Category</label>
				<input type="radio" name="category" checked="checked" value="civil">
				<span class="inlinespan" class="radioMessage" >Civil</span>
				&emsp;
				<input type="radio" name="category" value="criminal">
				<span class="inlinespan" class="radioMessage">Criminal</span>
				<br />
				<label>Name</label>
				<input type="text" name="name" id="name" />
				<br />
				<label>Days</label>
				<input type="number" name="days" id="days" />
				<br />
				<input type="submit" value="Add Case" />
				<br />
				<span class="error" id="error"><%=Util.getValue(session, "caseAddedFail") %></span>
			</fieldset>
		</form>
	</div>
</body>
</html>