<html>
	
	<head>
		<title>Student Confirmation Title.</title>
	</head>
	
	<body>
		
		The Student is confirmed : ${param.firstname} ${param.lastname}
		<br/><br/>
		The Student Country : ${param.country}
		<br/><br/>
		The Student's fav Programming language is : ${param.favlanguage}
		<br/><br/>
		The Student's Fav Programing languages are :<br/> 
														 <ul>
															<%
																String[] langs = request.getParameterValues("favoriteLan");
															
																for(String tempLang : langs){
																	out.println("<li> "+tempLang+" </li>");
																}
															%>
														 </ul>	
		
	</body>
	
</html>