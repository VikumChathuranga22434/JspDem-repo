<%@ page import="java.net.URLEncoder" %>

<html>

<head>
	<title>Confirmation</title>
</head>

<body>
	<%
		//read form data
		String favLang = request.getParameter("favoritelanguage");
	
		//Create the cookie
		Cookie theCookie = new Cookie("myApp.favoritelanguage", favLang);
		
		// encode cookie data ... handle case of languages with spaces in them
	    favLang = URLEncoder.encode(favLang, "UTF-8");
		
		//set the life span.. total number of seconds
		theCookie.setMaxAge(60*60*24*365);
		
		//send response to the browser
		response.addCookie(theCookie);
	%>
	
	Thankz! We set your favorite language to : ${param.favoritelanguage}
	
	<br/><br/>
	<a href="cookies-homepage.jsp">Return to home page.</a>
	
</body>

</html>