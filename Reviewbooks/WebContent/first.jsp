
<html>
<head>
<style>
div.gallery {
  margin: 15px;
  float: left;
  width: 180px;
 
  
}

div.gallery:hover {
  border: 2px solid #777;
}

div.gallery img {
  width: 100%;
  height: 250px;
}

div.desc {
  padding: 20px;
  text-align: center;
  font-family: papyrus;
  font-size:20px;
  height:20px
}
div.first {
  padding: 35px;
  text-align: center;
  font-family: papyrus;
  font-size:40px;
  }
  .button {
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
  .button:hover {
  background-color: #3e8e41;
}
</style>
</head>
<body>
<div class="first" align="center">
GoodReads Reviews
</div>
<div class="second" align="center">
<div class="gallery" align="center">
  <br></br><br></br>
</div>

<div class="gallery" align="center">
<div class="desc">The Catcher In The Rye</div>
<img src="<%=request.getContextPath()%>/img/catcher.jpg" alt="The catcher in the rye" width="600" height="400" border="2" >
<FORM NAME="form1" ACTION="second.jsp" METHOD="POST">
           <input type="submit" name="Entry" class="button" value="Review" />
</FORM>
</div>

<div class="gallery">
	
  <div class="desc">To Kill A Mocking Bird</div>
  <img src="<%=request.getContextPath()%>/img/bird.jpg" alt="To kill a mocking bird" width="600" height="400" border="2" >
<FORM NAME="form1" ACTION="second.jsp" METHOD="POST">
           <input type="submit" name="Entry2" class="button" value="Review" />
</FORM>
</div>

<div class="gallery">
 <div class="desc">The Alchemist<br></br></div>
 <img src="<%=request.getContextPath()%>/img/alchemist.jpg" alt="The Alchemist" width="600" height="400" border="2" >
<FORM NAME="form1" ACTION="second.jsp" METHOD="POST">
           <input type="submit" name="Entry3" class="button" value="Review" />
</FORM>
</div>

<div class="gallery">
  <div class="desc">Pride And Prejudice</div>
  <img src="<%=request.getContextPath()%>/img/pride.jpg" alt="Pride And Prejudice" width="600" height="400" border="2" >
<FORM NAME="form1" ACTION="second.jsp" METHOD="POST">
           <input type="submit" name="Entry4" class="button" value="Review" />
</FORM>

</div>
</div>

</body>
</html>