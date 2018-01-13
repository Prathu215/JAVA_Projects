<%@ page import="customutils.Util" %>
<%@ page import="DAO.*" %>
<%@ page import="customutils.Util" %>
<%
	if(request.getSession().getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath() + "/login.jsp");
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
	<script type="text/javascript">
		civilCasesList = new Array();
		criminalCasesList = new Array();
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
		<h1>Statue Of Limitations</h1>
	</header>
	<nav>
		<ul>
			<li><a href="userHome.jsp">Home</a></li>
			<li>
				<a>Manage Tasks</a>
				<ul class="subMenu">
					<li><a href="viewAllCasesU.jsp">View All Cases</a></li>
					<li><a href="history.jsp">View All History</a></li>
					<li><a href="searchCase.jsp">Search Case</a></li>
				</ul>
			</li>
			<li><a href="changePasswordU.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
                        <li class="right"><a href="contactus.jsp">Contact Us</a></li>
			<li class="right"><a href="aboutUs.jsp">About Us</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<h3><%=result %></h3>
		<form action="SearchServlet" method="GET">
		<fieldset>
			<legend>Search Case</legend>
			<label>Category</label>
			<input type="radio" name="category" checked="checked" value="civil" id="civ" onchange="loadCasesList()">
			<span class="inlinespan" class="radioMessage">Civil</span>
			&emsp;
			<input type="radio" name="category" value="criminal" id="cri" onchange="loadCasesList()">
			<span class="inlinespan" class="radioMessage">Criminal</span>
			<br />
			<label>Name</label>
			<select id="selectedCase" name="name"></select>
			<br />
			<label>Incident Date</label>
			<input type="date" name="incidentDate" required="required" />
			<br />
			<input type="submit" value="Search" />
		</fieldset>
	</form>
	</div>
</body>
</html>