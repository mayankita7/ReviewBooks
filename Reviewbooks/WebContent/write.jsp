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
<script>
function validLogin(){
if (document.form.message.value == ""){
alert ( "Can't submit Empty Review !" );
document.loginform.message.focus();
return false;
}
if (document.form.message.length>45){
alert ( "Maximum limit of letters is 45 !" );
document.userform.password.focus();
return false;
}
alert ( "Welcome User" );
return true;
}
</script>

</head>

<body>
	<div class="desc">Write you review here for The Catcher In The Rye</div>
	<br><br><br><br>
	<div class="form">
	<form name="write" action="write.jsp" onsubmit="return validLogin();">
	<textarea name="message" rows="20" cols="50">Write review here..(max 45 letters)</textarea>
	<input type="submit" value="Enter" />
	</form>
	</div>
<%
  if(request.getParameter("message")!=null){
	  String s=request.getParameter("message");
  try {
    java.sql.Connection con;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reviews", "root", "monalisa7");
    Statement st=con.createStatement();
   
    int j=st.executeUpdate("insert into catcher(rev) values('"+s+"')");
    out.println("        Review Successfully posted !");

   
  
  }
  catch(SQLException e) {
    out.println("SQLException caught: " +e.getMessage());
  }
  }
	
%>

</body>
</html>