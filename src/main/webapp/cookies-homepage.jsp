<%@ page import="java.net.*" %>

<html>

<head>
	<title>Cookie-homepage</title>
</head>

<body>
	<h3>Training Portal</h3>
	
	<!-- read favorite programming language cookie -->
	<%
		//the default.. cookies from the browser request
		String favLang = "Java";
	
		//get the cookie from the browser request
		Cookie[] theCookie = request.getCookies();
		
		//find our favorite language cookie 
		// find our favorite language cookie
	    if (theCookie != null) {
	        
	        for (Cookie tempCookie : theCookie) {
	            
	            if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
	                
	                // decode cookie data ... handle case of languages with spaces in them
	                favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
	                
	                break;
	            }
	        }
	    }
	%>
	
	<!-- Show the personalize page ... use the "favLang" variable -->
	<!-- Shoe new booke for the new lang -->
	<h3>New Book for <%= favLang %></h3>
	
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	
	<h3>Latest news reports for <%= favLang %></h3>
	
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	
	<h3>Hot Jobs for <%= favLang %></h3>
	
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	
	<a href="cookies-personalize-form.html">Personalize this page</a>
	
</body>

</html>