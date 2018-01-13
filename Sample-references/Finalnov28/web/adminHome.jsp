<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="java.util.*"%>
<%@ page import="customutils.Util"%>
<%@ page import="model.* "%>
<%@ page import="DAO.* "%>
<%
	if(request.getSession().getAttribute("admin") == null) {
		response.sendRedirect(request.getContextPath() + "/adminlogin.jsp");
		return;
	}
%>
<%
	CaseDAO co = new CaseDAO();
	List<Case> cases = co.getCases();
%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Home</title>
<link rel="stylesheet" type="text/css" href="main.css" />
<script type="text/javascript" src="script.js"></script>
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
		<center><h1>WELCOME ADMIN</h1></center>
                <br>
		<div class="imageAndText">
			<div class="imageHolder">
				<img src="sol.jpg" class="largeImage" />
			</div>
			<div class="textHolder">
                            <br><br><br><br><br>
				<p class="">Hello Admin you can update the cases.</p>
			</div>
		</div>
		<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
		</div>
	</div>
</body>
</html>