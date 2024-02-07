<html>

<body>

<h3>Hello world of Java!</h3>

<%!

	String makeItLower (String data){
	return data.toLowerCase();
}

%>

lower case "Hello World" : <%= makeItLower("Hello World") %>

</body>

</html>