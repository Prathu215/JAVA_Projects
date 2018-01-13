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
		request.getSession().setAttribute("sendSecurityFail", "Please try again");
		response.sendRedirect(request.getContextPath() + "/forgotpassword.jsp?email=" + user.getEmail());
		return;
	}
	String message = "Hello " + user.getName() + ",<br><br>You have been requested for security answer , if you haven't requested for the security answer please contact us immediately for security purpose, as some one is trying to login in your account";
	message += "<br><br>Security Question: " + user.getQuestion() + "<br>Security Answer: " + user.getAnswer();
			message += "<br><br>Thank You";
	boolean sent = Util.sendEmail(user.getEmail(), "Request for security answer. statute of limitations", message, "StatuteOfLimitations");
	if(sent) {
		request.getSession().setAttribute("sendSecurityPass", "An email sent to your mail");
		response.sendRedirect(request.getContextPath() + "/forgotpassword.jsp?email=" + user.getEmail());
		return;
	} else {
		request.getSession().setAttribute("sendSecurityFail", "Invalid email");
		response.sendRedirect(request.getContextPath() + "/forgotpassword.jsp?email=" + user.getEmail());
		return;
	}
%>