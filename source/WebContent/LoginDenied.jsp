<%-- tpl:insert page="/theme/VCSTemplate.jtpl" --%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="html"%>
<%@taglib uri="http://jakarta.apache.org/struts/tags-bean" prefix="bean"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ignou.vcs.commons.beans.UserBean"%>
<%@page import="com.ignou.vcs.commons.database.CommonsDatabaseActivities"%>
<html:html>
<head>
<script type="text/javascript" language="javascript" >
function loadCss() {
	var browser = navigator.appName.toLowerCase();
	// document.write(browser);
	var stylesheet = document.getElementById("pagestyle");
	var menusheet = document.getElementById("menustyle");
	if(browser.indexOf("microsoft internet explorer") != -1) {
		stylesheet.href="${pageContext.request.contextPath}/theme/css/style_ie.css";
		menusheet.href="${pageContext.request.contextPath}/theme/css/menu_ie.css";
	}
	else {
		stylesheet.href="${pageContext.request.contextPath}/theme/css/style1.css";
		menusheet.href="${pageContext.request.contextPath}/theme/css/menu.css";		
	}
}
</script> 
<link id="pagestyle" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/style1.css" />
<link id="menustyle" type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/menu.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/transmenu_Packed.js"></script>

<!-- LightBox css and scripts -->
<%
	String usid = (String) request.getSession().getAttribute("userId");
	if(usid != null) {
 %>
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/lightbox_vid.css" media="screen,projection" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/prototype.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/lightbox.js"></script>
 	
 
 <%
 }
 
  %>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
<%-- tpl:put name="headarea" --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/theme/css/lightbox.css" media="screen,projection" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/prototype.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/theme/js/lightbox.js"></script>
<title>Virtual Classroom System</title><%-- /tpl:put --%>
</head>
<body onLoad="javascript:loadCss()">
<%@include file="header.jsp" %>								
		
		<div class="left">
			<div class="left_articles">
				<div class="buttons">
				</div>
				<%@include file="../DisplayCalendar.jsp" %>
				<h2><a href="#"><u>Login Denied</u></a></h2>
				<p class="description">You have been denied access to Virtual Classroom System.</p>
				<%-- /tpl:put --%>
				<%-- tpl:put name="centre_content" --%>
				<p>
					You have been denied access to Virtual Classroom System.<br />
					The reasons for this action can be any of the following:
				</p>
				<ul>
					<li> Your <b>Username</b> is incorrect</li>
					<li> Your <b>password</b> is incorrect</li>
					<li> Your account has been <b>Blocked</b> by the System Administrator</li>
				</ul>
				
				<br />
					If you have forgotten your password please submit <a href="forgotPassword.jsp"> your details here</a>.<br />
					If you wish to contact System Administrator please <a href="contactAdmin"> enter.</a>
					
				<%-- /tpl:put --%>
			</div>
			
		</div>	
		
		
		<div id="right">
			<%@include file="latest_news.jsp" %>
			
			<div class="boxtop"></div>
			<div class="box">
				<p>
					<b><u>Collaborate</u></b><br />
					<a href="#" accesskey="m"><span class="key">I</span>nteractive White Boards</a><br />
					<a href="#" accesskey="m"><span class="key">C</span>hat with friends, Faculties</a><br />
					<a href="#" accesskey="m"><span class="key">V</span>oice Mailboxes</a><br />
				</p>
				<div class="buttons"><p><a href="#" class="bluebtn"><span>More</span></a></p></div>
			</div>
		</div>	
		<%@include file="footer.jsp" %>
	</div>
</body>
</html:html>
<%-- /tpl:insert --%>