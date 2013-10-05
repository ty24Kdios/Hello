<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%
  String driverName="com.mysql.jdbc.Driver";
  String DBUser="root";
  String DBPwd="love";
  String DBName="menagerie";


  String connUrl="jdbc:mysql://localhost/"+DBName
       +"?user="+DBUser+"&password="+DBPwd;

  try{
  Class.forName(driverName).newInstance();
  //Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection conn = DriverManager.getConnection(connUrl);
   //Connection conn = DriverManager.getConnection("jdbc:odbc:MySQL","root","love");
  Statement sm = conn.createStatement();
 
  String sql="select * from pet";
  ResultSet rs=sm.executeQuery(sql);
  while(rs.next())
  {
	out.print(rs.getString(2)+ "#"+rs.getString(5)+"<br/>");
  }

  out.print("this odbc is ok. we can load mysql drivers jar in tomcat/lib or lib in the work");
  rs.close();
  sm.close();
  conn.close();
}catch(Exception e) { out.print(e+"");}
  
%>

<html>
<head>
	<title>JSP MySql</title>
</head>
<body>
    
</body>
</html>
