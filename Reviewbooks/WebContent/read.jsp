<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.io.*,java.util.*,java.sql.*,javax.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
div.desc {
  padding: 20px;
  text-align: center;
  font-family: papyrus;
  font-size:35px;
  height:20px
}
div.form{
padding: 40px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>

<body>
	
<%
  if(request.getParameter("first")!=null){
  try {
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reviews", "root", "monalisa7");
    ResultSet rs;
    Statement stmt = con.createStatement();
    rs = stmt.executeQuery("SELECT * FROM catcher");
    out.println("Reviews of The Catcher In The Rye");
    out.println("<br>");
    out.println("<br>");
    while ( rs.next() ) {
        String rev_1 = rs.getString("rev");
        out.println("		"+rev_1);
        out.println("<br>");
    }
  }
  catch(SQLException e) {
	    out.println("SQLException caught: " +e.getMessage());
	  }
  }
  %>
  <% 
  if(request.getParameter("sec")!=null){
	  try {
	    java.sql.Connection con;
	    Class.forName("com.mysql.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reviews", "root", "monalisa7");
	    ResultSet rs;
	    Statement stmt = con.createStatement();
	    rs = stmt.executeQuery("SELECT * FROM bird");
	    out.println("Reviews of To Kill A Mocking Bird");
	    out.println("<br>");
	    out.println("<br>");
	    while ( rs.next() ) {
	        String rev_2 = rs.getString("rev");
	        out.println("		"+rev_2);
	        out.println("<br>");
	    }
	  }
	  catch(SQLException e) {
		    out.println("SQLException caught: " +e.getMessage());
		  }
  }
  %>
  <% 
  if(request.getParameter("third")!=null){
	  try {
	    java.sql.Connection con;
	    Class.forName("com.mysql.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reviews", "root", "monalisa7");
	    ResultSet rs;
	    Statement stmt = con.createStatement();
	    rs = stmt.executeQuery("SELECT * FROM alchemist");
	    out.println("Reviews of The Alchemist");
	    out.println("<br>");
	    out.println("<br>");
	    while ( rs.next() ) {
	        String rev_3 = rs.getString("rev");
	        out.println("		"+rev_3);
	        out.println("<br>");
	    }
	  }
	  catch(SQLException e) {
		    out.println("SQLException caught: " +e.getMessage());
		  }
  }
  %>
  <% 
  if(request.getParameter("four")!=null){
	  try {
	    java.sql.Connection con;
	    Class.forName("com.mysql.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reviews", "root", "monalisa7");
	    ResultSet rs;
	    Statement stmt = con.createStatement();
	    rs = stmt.executeQuery("SELECT * FROM pride");
	    out.println("Reviews of Pride And Prejudice");
	    out.println("<br>");
	    out.println("<br>");
	    while ( rs.next() ) {
	        String rev_4 = rs.getString("rev");
	        out.println(rev_4);
	        out.println("<br>");
	    }
	  }
	  catch(SQLException e) {
		    out.println("SQLException caught: " +e.getMessage());
		  }
  }
  %>
   

</body>
</html>