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
	User user = (User) request.getSession().getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<script type="text/javascript" src="script.js"></script>
	<script type="text/javascript">
		function validate() {
			errorShow = document.getElementById("error");
			phone = document.getElementById("phone").value;
			street = document.getElementById("street").value;
			city = document.getElementById("city").value;
			state = document.getElementsByName("state")[0].value;
			zip = document.getElementById("zip").value;
			
			
			if(street.length == 0) {
				errorShow.innerHTML = "Invalid Street";
				return false;
			}
			if(city.length == 0) {
				errorShow.innerHTML = "Invalid City";
				return false;
			}
			if(!/^[A-Za-z ]+$/.test(city)) {
				errorShow.innerHTML = "Invalid City";
				return false;
			}
			if(state.length == 0) {
				errorShow.innerHTML = "Invalid State";
				return false;
			}
			if(zip.length == 0) {
				errorShow.innerHTML = "Invalid Zip";
				return false;
			}
			if(!/^[0-9]+$/.test(zip)) {
				errorShow.innerHTML = "Invalid Zip";
				return false;
			}
			if(state == "Alabama (AL)") {
				if(zip < 35801 || zip > 35816) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Alaska (AK)") {
				if(zip < 99501 || zip > 99524) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Arizona (AZ)") {
				if(zip < 85001 || zip > 85055) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Arkansas (AR)") {
				if(zip < 72201 || zip > 72217) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "California (CA)") {
				if(zip < 94203 || zip > 94209) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Colorado (CO)") {
				if(zip < 80201 || zip > 80239) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Conneticut (CT)") {
				if(zip < 6101 || zip > 6112) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Deleware (DE)") {
				if(zip < 19901 || zip > 19905) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "District of Columbia (DC)") {
				if(zip < 20001 || zip > 20020) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Florida (FL)") {
				if(zip < 32501 || zip > 32509) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Georgia (GA)") {
				if(zip < 30301 || zip > 30381) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Hawaii (HI)") {
				if(zip < 96801 || zip > 96380) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Idaho (ID)") {
				if(zip != 83254) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Illinois (IL)") {
				if(zip < 60601 || zip > 60641) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Indiana (IN)") {
				if(zip < 46201 || zip > 46209) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Iowa (IA)") {
				if(zip < 52801 || zip > 52809) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Kansas (KS)") {
				if(zip < 67201 || zip > 67221) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Kentucky (KY)") {
				if(zip < 41701 || zip > 41702) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Lousiana (LA)") {
				if(zip < 70112 || zip > 70119) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Maine (ME)") {
				if(zip < 4032 || zip > 4034) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Maryland (MD)") {
				if(zip < 21201 || zip > 21237) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Massachusetts (MA)") {
				if(zip < 2101 || zip > 2137) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Michigan (MI)") {
				if(zip != 49036) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Minnesota (MN)") {
				if(zip < 55801 || zip > 51808) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Mississippo (MS)") {
				if(zip < 39530 || zip > 39535) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Missouri (MO)") {
				if(zip < 63101 || zip > 63141) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Montana (MT)") {
				if(zip < 68901 || zip > 68902) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Nebraska (NE)") {
				if(zip < 68901 || zip > 68902) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Nevada (NV)") {
				if(zip < 89501 || zip > 89513) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "New Hampshire (NH)") {
				if(zip != 3217) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "New Jersey (NJ)") {
				if(zip != 7039) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "New Mexico (NM)") {
				if(zip < 87500) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "New York (NY)") {
				if(zip < 10001 || zip > 10048) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "North Carolina (NC)") {
				if(zip != 27565) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "North Dakota (ND)") {
				if(zip != 58282) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Ohio (OH)") {
				if(zip < 44101 || zip > 44179) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Oklahoma (OK)") {
				if(zip < 74101 || zip > 74110) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Oregon (OR)") {
				if(zip < 97201 || zip > 97225) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Pennsylvania (PA)") {
				if(zip < 15201 || zip > 15244) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Rhode Island (RI)") {
				if(zip < 2840 || zip > 2841) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "South Carolina (SC)") {
				if(zip != 29020) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "South Dakota (SD)") {
				if(zip < 57401 || zip > 57402) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Tennessee (TN)") {
				if(zip < 37201 || zip > 37222) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Texas (TX)") {
				if(zip < 78701 || zip > 78705) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Utah (UT)") {
				if(zip < 84321 || zip > 84323) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Vermont (VT)") {
				if(zip != 5751) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Virginia (VA)") {
				if(zip != 24517) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Washington (WA)") {
				if(zip < 98004 || zip > 98009) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "West Virginia (WV)") {
				if(zip != 25813) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Wisconsin (WI)") {
				if(zip < 53201 || zip > 53228) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			if(state == "Wyoming (WY)") {
				if(zip != 82941) {
					errorShow.innerHTML = "Invalid Zip";
					return false;
				}
			}
			var phoneRegex = /^[0-9]+$/;
			if(phone.length != 10) {
				errorShow.innerHTML = "Inavalid phone number";
				return false;
			} else if(!phoneRegex.test(phone)) {
				errorShow.innerHTML = "Inavalid phone number";
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
			<li><a href="userHome.jsp">Home</a></li>
			<li><a href="searchCase.jsp">Request for Case Limitation</a></li>
			<li><a href="history.jsp">View History</a></li>
			<li><a href="editProfile.jsp">Edit Profile</a></li>
			<li><a href="changePasswordU.jsp">Change Password</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</nav>
	<div id="mainWrapper">
		<form action="EditProfileServlet" method="Post" onsubmit="return validate()">
		<fieldset>
			<legend>Edit Profile</legend>
			<label>Street</label>
			<input type="text" name="street" id="street" value="<%=user.getStreet() %>" />
			<br />
			<label>City</label>
			<input type="text" name="city" id="city" value="<%=user.getCity() %>" />
			<br />
			<label>State</label>
			<select name="state" id="state">
				<option value = "Alabama (AL)">Alabama (AL)</option>
				<option value = "Alaska (AK)">Alaska (AK)</option>
				<option value="Arizona (AZ)">Arizona (AZ)</option>
				<option value="Arkansas (AR)">Arkansas (AR)</option>
				<option value="California (CA)">California (CA)</option>
				<option value="Colorado (CO)">Colorado (CO)</option>
				<option value="Conneticut (CT)">Conneticut (CT)</option>
				<option value="Deleware (DE)">Deleware (DE)</option>
				<option value="District of Columbia (DC)">District of Columbia (DC)</option>
				<option value="Florida (FL)">Florida (FL)</option>
				<option value="Georgia (GA)">Georgia (GA)</option>
				<option value="Hawaii (HI)">Hawaii (HI)</option>
				<option value="Idaho (ID)">Idaho (ID)</option>
				<option value="Illinois (IL)">Illinois (IL)</option>
				<option value="Indiana (IN)">Indiana (IN)</option>
				<option value="Iowa (IA)">Iowa (IA)</option>
				<option value="Kansas (KS)">Kansas (KS)</option>
				<option value="Kentucky (KY)">Kentucky (KY)</option>
				<option value="Lousiana (LA)">Lousiana (LA)</option>
				<option value="Maine (ME)">Maine (ME)</option>
				<option value="Maryland (MD)">Maryland (MD)</option>
				<option value="Massachusetts (MA)">Massachusetts (MA)</option>
				<option value="Michigan (MI)">Michigan (MI)</option>
				<option value="Minnesota (MN)">Minnesota (MN)</option>
				<option value="Mississippo (MS)">Mississippo (MS)</option>
				<option value="Missouri (MO)">Missouri (MO)</option>
				<option value="Montana (MT)">Montana (MT)</option>
				<option value="Nebraska (NE)">Nebraska (NE)</option>
				<option value="Nevada (NV)">Nevada (NV)</option>
				<option value="New Hampshire (NH)">New Hampshire (NH)</option>
				<option value="New Jersey (NJ)">New Jersey (NJ)</option>
				<option value="New Mexico (NM)">New Mexico (NM)</option>
				<option value="New York (NY)">New York (NY)</option>
				<option value="North Carolina (NC)">North Carolina (NC)</option>
				<option value="North Dakota (ND)">North Dakota (ND)</option>
				<option value="Ohio (OH)">Ohio (OH)</option>
				<option value="Oklahoma (OK)">Oklahoma (OK)</option>
				<option value="Oregon (OR)">Oregon (OR)</option>
				<option value="Pennsylvania (PA)">Pennsylvania (PA)</option>
				<option value="Rhode Island (RI)">Rhode Island (RI)</option>
				<option value="South Carolina (SC)">South Carolina (SC)</option>
				<option value="South Dakota (SD)">South Dakota (SD)</option>
				<option value="Tennessee (TN)">Tennessee (TN)</option>
				<option value="Texas (TX)">Texas (TX)</option>
				<option value="Utah (UT)">Utah (UT)</option>
				<option value="Vermont (VT)">Vermont (VT)</option>
				<option value="Virginia (VA)">Virginia (VA)</option>
				<option value="Washington (WA)">Washington (WA)</option>
				<option value="West Virginia (WV)">West Virginia (WV)</option>
				<option value="Wisconsin (WI)">Wisconsin (WI)</option>
				<option value="Wyoming (WY)">Wyoming (WY)</option>
			</select>
			<br />
			<label>Zip Code</label>
			<input type="text" name="zip" id="zip" value="<%=user.getZip() %>" />
			<br />
			<label>Phone</label>
			<input type="text" name="phone" id="phone" value="<%=user.getPhone() %>" />
			<br />
			<input type="submit" value="Submit" />
			<br />
			<span class="error" id="error"><%=Util.getValue(session, "updateUserFail") %></span>
			<span class="success"><%=Util.getValue(session, "updateUserPass") %></span>
		</fieldset>
	</form>
	<script type="text/javascript">
		document.getElementsByName("state")[0].value = "<%=user.getState() %>";
	</script>
	<div class="redirectButtons">
			<button class="redirectors leftRedirector" onclick="showBack()">Previous</button>
			<button class="redirectors rightRedirector" onclick="showNext()">Next</button>
	</div>
	</div>
</body>
</html>