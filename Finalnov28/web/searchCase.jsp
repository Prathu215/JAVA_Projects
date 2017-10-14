<%
	response.setHeader("Cache-Control","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setDateHeader("Expires", 0);
	response.setHeader("Pragma","no-cache");
%>
<%@ page import="customutils.Util" %>
<%@ page import="DAO.*" %>
<%@ page import="model.*" %>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		return;
	}
%>
<%
	CaseDAO co = new CaseDAO();
	String caseNames = co.getCaseNames();
	String civilCaseNames = caseNames.split("=")[0];
	String criminalCaseNames = caseNames.split("=")[1];
	
	String result = Util.getValue(session, "tillDate");
	if(result.length() > 0) {
		result = "You can claim till " + result;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript" src="script.js"></script>
	<script type="text/javascript">
		civilCasesList = new Array();
		criminalCasesList = new Array();
		var tomorrow;
		function load() {
			temp1 = "<%=civilCaseNames %>";
			temp2 = "<%=criminalCaseNames %>";
			civilCasesList = temp1.split(",");
			criminalCasesList = temp2.split(",");
			t = "";
			for (var i = 0; i < civilCasesList.length; i ++ ){
				t += "<option value='"+civilCasesList[i]+"'>"+civilCasesList[i]+"</option>";
			}
			document.getElementById("selectedCase").innerHTML = t;
			
			var today = new Date();
			tomorrow = new Date();
			tomorrow.setDate(today.getDate() + 1);
			
			document.getElementById("incidentDate").max = today.getFullYear() + "-" + (today.getMonth() + 1) + "-" + today.getDate();
			console.log(tomorrow);
			console.log(tomorrow.getFullYear() + "-" + (tomorrow.getMonth() + 1) + "-" + tomorrow.getDate());
		}
		
		function loadCasesList() {
			if(document.getElementById("civ").checked) {
				t = "";
				for (var i = 0; i < civilCasesList.length; i ++ ){
					t += "<option value='"+civilCasesList[i]+"'>"+civilCasesList[i]+"</option>";
				}
				document.getElementById("selectedCase").innerHTML = t;
			} else if(document.getElementById("cri").checked) {
				t = "";
				for (var i = 0; i < criminalCasesList.length; i ++ ){
					t += "<option value='"+criminalCasesList[i]+"'>"+criminalCasesList[i]+"</option>";
				}
				document.getElementById("selectedCase").innerHTML = t;
			}
		}
	</script>
</head>
<body onload="load()">
	<header>
		<h1>Statute Of Limitations System</h1>
	</header>
	<nav>
		<ul>
			<li><a href="userHome.jsp">Home</a></li>
			<li><a href="searchCase.jsp">Request for Case Limitation</a></li>
			<li><a href="history.jsp">View History</a></li>
			<li><a href="editProfile.jsp">Edit Profile</a></li>
			<li><a href="changePasswordU.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<h3><%=result %></h3>
		<form action="SearchServlet" method="GET">
		<fieldset>
			<legend>Enter The Case Details</legend>
			<label>Case Type</label>
			<input type="radio" name="category" checked="checked" value="civil" id="civ" onchange="loadCasesList()">
			<span class="inlinespan" class="radioMessage">Civil</span>
			&emsp;
			<input type="radio" name="category" value="criminal" id="cri" onchange="loadCasesList()">
			<span class="inlinespan" class="radioMessage">Criminal</span>
			<br />
			<label>Incident Type</label>
			<select id="selectedCase" name="name"></select>
			<br />
			<label>Incident Date</label>
			<input type="date" name="incidentDate" id="incidentDate" required="required" />
			<br />
			<input type="submit" value="Search" />
		</fieldset>
	</form>
	<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
	</div>
</body>
</html>