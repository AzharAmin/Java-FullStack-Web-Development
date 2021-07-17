<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Data</title>
</head>
<body>

<table height=100 width=100 border 5>
<tr>
<th>Name</th>
<th>Registration Number</th>
<th>Contact</th>
<th>Email</th>
<th>Gender</th>
<th>Age</th>
<th>Address</th>
</tr>
<tr>

<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hospital";
String userId = "root";
String passwordDB = "";

Connection con=null;
Statement st=null;
ResultSet rs=null;


try{
	Class.forName(driver);
	con = DriverManager.getConnection(connectionUrl+database,userId,passwordDB);
	st = con.createStatement();
	String sqlquery = "select * from information";
	rs = st.executeQuery(sqlquery);
	while(rs.next())
	{
		%>
		<td><%= rs.getString("name")%></td>
		<td><%= rs.getString("regno")%></td>
		<td><%= rs.getString("contact")%></td>
		<td><%= rs.getString("email")%></td>
		<td><%= rs.getString("gender")%></td>
		<td><%= rs.getString("age")%></td>
		<td><%= rs.getString("address")%></td>
		</tr>
		<%
	}
	
	con.close();
}
catch(Exception e){
	out.println(e);
}

%>
</table>

</body>
</html>