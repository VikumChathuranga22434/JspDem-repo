<%@ page import="java.util.*" %>

<html>

<body>

<form>
	<!-- Step 1: Create HTML form -->
	<form action="todo-demo.jsp">
	
		Add new item :  <input type="text" name="theItem"/>
		
		<input type="submit" name="Submit"/>
	
	</form>
	
	<!-- Step 2: Add new item "to do" list -->
	<%
	
		//get the to do items from the session
		List<String> item = (List<String>) session.getAttribute("myToDoList");
		
		//if the to do items dosen't exist, then create a new one
		if(item == null){
			item = new ArrayList<String>();
			session.setAttribute("myToDoList", item);
		}
		
		//see if there form data to add
		String theItem = request.getParameter("theItem");
		//
    	// UPDATED CODE BLOCK FOR booleans and if/then statement
    	//
    	boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
    	boolean isItemNotDuplicate = theItem != null && !item.contains(theItem.trim());
    	
    	if (isItemNotEmpty && isItemNotDuplicate) {    		
    		item.add(theItem.trim());    		
    	}
	
	%>
	
	<!-- Step 3: Display the items f the "to do" list -->
	<hr>
	<b>To List Items: </b> <br/>
	<ol>
		
		<%

			for(String temp: item){
				out.println("<li> "+temp+" </li>");
			}
		
		%>
	
	</ol>
	
</form>

</body>

</html>