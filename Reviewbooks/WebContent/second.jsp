<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
div.gallery {
  margin: 100px;
  float: left;
  width: 150px;

  
}
div.gallery img {
  width: 220px;
  height: 350px;
}

div.desc {
  padding: 20px;
  text-align: center;
  font-family: papyrus;
  font-size:40px;
  height:20px
}
div.buttons{
	left-margin:200px;
	left-padding:200px;
}
div.first{
float:center}
.first {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
  .first:hover {
  background-color: #3e8e41;
}
</style>
</head>
<body>
<% 
            if(request.getParameter("Entry") != null) {
        %>
        <div class="desc">The Catcher In The Rye</div>
        <div class="gallery" align="center">
			<img src="<%=request.getContextPath()%>/img/catcher.jpg" alt="The catcher in the rye" width="600" height="400" border="2" >
		</div>
		<div class="buttons">
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<form action="write.jsp" method="POST">
		<input type="submit" class="first" name="first" value="Write Review">
		</form>
		<form action="read.jsp" method="POST">
		
		<input type="submit" class="first" name="first" value="Read Review"></form>
		</div>
        <%
            }
if(request.getParameter("Entry2") != null) {
    %>
        <div class="desc">To Kill A Mocking Bird</div>
        <div class="gallery" align="center">
			<img src="<%=request.getContextPath()%>/img/bird.jpg" alt="To Kill A Mocking Bird" width="600" height="400" border="2" >
		</div>
		<div class="buttons">
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<form action="write.jsp" method="POST">
		<input type="submit" class="first" name="sec" value="Write Review">
		</form>
		<form action="read.jsp" method="POST">
		
		<input type="submit" class="first" name="sec" value="Read Review"></form>
		</div>
    <%
        }
if(request.getParameter("Entry3") != null) {
    %>
        <div class="desc">The Alchemist</div>
        <div class="gallery" align="center">
			<img src="<%=request.getContextPath()%>/img/alchemist.jpg" alt="The Alchemist" width="600" height="400" border="2" >
		</div>
		<div class="buttons">
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<form action="write.jsp" method="POST">
		<input type="submit" class="first" name="third" value="Write Review">
		</form>
		<form action="read.jsp" method="POST">
		
		<input type="submit" class="first" name="third" value="Read Review"></form>
		</div>
    <%
        }
if(request.getParameter("Entry4") != null) {
    %>
        <div class="desc">Pride And Prejudice</div>
        <div class="gallery" align="center">
			<img src="<%=request.getContextPath()%>/img/pride.jpg" alt="Pride And Prejudice" width="600" height="400" border="2" >
		</div>
		<div class="buttons">
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<br></br>
		<form action="write.jsp" method="POST">
		<input type="submit" class="first" name="four" value="Write Review">
		</form>
		<form action="read.jsp" method="POST">
		
		<input type="submit" class="first" name="four" value="Read Review"></form>
		</div>
    <%
        }
 %>
</body>
</html>