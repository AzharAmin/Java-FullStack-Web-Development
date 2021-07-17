<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name = (String)session.getAttribute("name");
String role = (String)session.getAttribute("role");

%>
<h1>Welcome <%=name %> and your role is <%=role %></h1>

<%
	if(role.equals("admin"))
	{
		%>
		<h1>
		<a href= "add.jsp">ADD RECORD</a><br/>
		<a href= "view.jsp">VIEW RECORD</a><br/>
		<a href= "edit.jsp">EDIT RECORD</a><br/>
		<a href= "delete.jsp">DELETE RECORD</a><br/>
		</h1>
		<% 
	}
	else if(role.equals("staff"))
	{
		%>
		<h1>
		<a href= "view.jsp">VIEW RECORD</a><br/>
		<a href= "edit.jsp">EDIT RECORD</a><br/>
		</h1>
		<% 
	}
	else{
		%>
		<h1>
		<a href= viewRecord.jsp?name=<%=name %>>VIEW RECORD</a><br/>
		</h1>
		<% 
	}
%>

</body>
</html>