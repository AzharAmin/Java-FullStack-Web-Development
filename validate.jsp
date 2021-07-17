<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Validate</title>
</head>
<body>
<%

String username = request.getParameter("username");
String password = request.getParameter("password");

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "hospital";
String userId = "root";
String passwordDB = "";

Connection con=null;
PreparedStatement st=null;
ResultSet rs=null;


try{
	Class.forName(driver);
	con = DriverManager.getConnection(connectionUrl+database,userId,passwordDB);
	//st = con.createStatement();
	String sqlquery = "select * from login where username=? and password =?";
	st=con.prepareStatement(sqlquery);
	st.setString(1,username);
	st.setString(2,password);
	
	rs = st.executeQuery();
	if(rs.next())
	{
		String user = rs.getString("username");
		String role = rs.getString("role");
		session.setAttribute("name",user);
		session.setAttribute("role", role);
		response.sendRedirect("dashboard.jsp");
	}
	else
		response.sendRedirect("relogin.jsp");

	con.close();
		
}
catch(Exception e){
	out.println(e);
}

%>

</body>
</html>