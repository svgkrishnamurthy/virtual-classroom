<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.ArrayList"%>
<%@page import="com.ignou.vcs.forums.beans.CommentBean"%>
<%@page import="com.ignou.vcs.forums.beans.PostsBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.ignou.vcs.forums.ForumDatabaseOperations"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Post Details</title>
<script type="text/javascript">
function showUserPosts(userId)
{
	window.location.href = 'UserPosts.jsp?u='+userId;
}

function goBack()
{
	window.location.href = 'DisplaySubjects.jsp';
}

function loadCss() {
	var browser = navigator.appName.toLowerCase();
	// document.write(browser);
	var stylesheet = document.getElementById("pagestyle");
	var menusheet = document.getElementById("menustyle");
	if (browser.indexOf("microsoft internet explorer") != -1) {
		stylesheet.href = "${pageContext.request.contextPath}/theme/css/style_ie.css";
		menusheet.href = "${pageContext.request.contextPath}/theme/css/menu_ie.css";
	} else {
		stylesheet.href = "${pageContext.request.contextPath}/theme/css/style1.css";
		menusheet.href = "${pageContext.request.contextPath}/theme/css/menu.css";
	}
}

</script>
<link id="pagestyle" type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/theme/css/style1.css" />
<link id="menustyle" type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/theme/css/menu.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/theme/js/transmenu_Packed.js"></script>

<!-- LightBox css and scripts -->
<%
	String usid = (String) request.getSession().getAttribute("userId");
	if(usid != null) {
 %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/theme/css/lightbox_vid.css"
	media="screen,projection" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/theme/js/prototype.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/theme/js/lightbox.js"></script>


<%
 }
 
  %>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Rational Application Developer">
<title>Virtual Classroom System</title>
</head>
<body onLoad="javascript:loadCss()">

<%@include file="../header.jsp"%>

<div class="left">
<div class="left_articles">
<div class="buttons"></div>
<%@include file="../DisplayCalendar.jsp"%>
<h2><a href="../index.jsp"><u>Virtual Classroom System</u></a></h2>
<p class="description">Studying the e-way.</p>
<center>
<%
	String user = request.getParameter("u");

if(user!=null)
{
	SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy hh:mm");
	ArrayList<PostsBean> userPosts = ForumDatabaseOperations.getPostByUser(user);
	for(int i=0;i<userPosts.size();i++)
	{
		PostsBean pb = userPosts.get(i);
%>
	<table  width="100%" style="background-color: #e4d2b8">
			<tr><td rowspan="4"> <%=pb.getPostId() %></td><td align="left"><b><%=pb.getPostTitle() %></b></td></tr>
			<tr height="15"></tr>
			<tr><td colspan="2" align="left"><%=pb.getPostDescription() %></td></tr>
			<tr><td align="left">by you at <%=sdf.format(pb.getPostedDate()) %></td></tr>
	</table>
	<br><br>
	<%
	}
}
%>
<input type="button" onclick="javaScript: goBack()" value="Back">
</center></div></div>
	<div id="right">
			<div class="boxtop"></div>
			<%@include file="Polls.jsp" %>
			
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
		<%@include file="../footer.jsp" %>
	</div>
</body>
</html>