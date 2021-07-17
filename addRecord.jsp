<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String name = request.getParameter("name");
String regno = request.getParameter("regno");
String contact = request.getParameter("contact");
String email = request.getParameter("email");
String gender = request.getParameter("gender");
String age = request.getParameter("age");
String address = request.getParameter("address");

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
	String sqlquery = "insert into information values('"+name+"','"+regno+"','"+contact+"','"+email+"','"+gender+"','"+age+"','"+address+"')";
	st.executeUpdate(sqlquery);
	out.println("Records Inserted Successfully");
	con.close();
	
}
catch(Exception e){
	out.println(e);
}


%>

</body>
</html>