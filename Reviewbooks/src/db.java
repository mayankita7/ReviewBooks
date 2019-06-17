import java.sql.*;  
public class db{  
	
public void connect(){  
String url = "jdbc:mysql://localhost:3306/mess";
	String username = "root";
	String password = "monalisa7";

	System.out.println("Connecting database...");
					
	try (Connection connection = DriverManager.getConnection(url, username, password)) {
	    System.out.println("Database connected!");
	    ResultSet rs;
	    Statement stmt = connection.createStatement();
	    rs = stmt.executeQuery("SELECT * FROM North_mess");
        while ( rs.next() ) {
            String lastName = rs.getString("name");
            System.out.println(lastName);
        }
	} catch (SQLException e) {
	    throw new IllegalStateException("Cannot connect the database!", e);
	}
}
	public static void main(String args[]){
		db d=new db();
		d.connect();
	}
}  


