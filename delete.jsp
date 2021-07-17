<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>delete</title>
</head>
<body>
<form action = "delete.jsp" method="post">
Enter the Registration Number you want to Delete? <input type ="text" name="regno">
<input type="submit" value="search">

</form>
<%

String regno = request.getParameter("regno");

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
	String sqlquery = "select * from information where regno=?";
	st=con.prepareStatement(sqlquery);
	st.setString(1,regno);
	rs = st.executeQuery();
	if(rs.next())
	{
		%>
		<form action ="deleteData.jsp" method="post">
		Name:                <input type="text" name="name" value= <%=rs.getString("name") %>><br/>
		<input type="hidden" name="regno" value= <%=rs.getString("regno") %>><br/>
		Contact:             <input type="text" name="contact" value= <%=rs.getString("contact") %>><br/>
		Email:               <input type="text" name="email" value= <%=rs.getString("email") %>><br/>
		Gender:              <input type="text" name="gender" value= <%=rs.getString("gender") %>><br/>
		Age:                 <input type="text" name="age" value= <%=rs.getString("age") %>><br/>
		Address:             <input type="text" name="address" value= <%=rs.getString("address") %>><br/>
		<input type ="submit" value ="Delete">
		
		</form>
		<% 
	}

	con.close();
		
}
catch(Exception e){
	out.println(e);
}

%>
</body>
</html>