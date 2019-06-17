# ReviewBooks
A book reviewing system (dynamic web application) built using JSP and Java to database connectivity to MySQL server.

JSP code is like JAVA along with HTML(for front end). Tomcat 7.9 Web Server was used while running this Web application. 

Steps For JDBC Connectivity:
1. Download the jdbc connector jar file, mysql-connector.jar, JDK of appropriate version and a MySQL server.
2. Load this jar file by pasting it in the jre/lib/ext folder
3. Create a database on MySQL server.
4. In the JSP code, change the connection URL, "jdbc:mysql://localhost:3306/reviews", "root", "monalisa7" so that database name comes in palce
of "review", username comes in place of "root" and MySQL server password comes in place of "monalisa7".
5. Run the file, 'first.jsp' and choose the book and read/write reviews, throught the jdbc connection.
