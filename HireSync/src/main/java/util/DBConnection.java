package util;
import java.sql.*;
public class DBConnection {
 public static Connection getConnection() {
	 Connection con=null;
	 try {
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 String url="jdbc:mysql://localhost:3306/hiresync";
		 String user="root";
		 String passwd="Sarthak@2006";
		 
		 con=DriverManager.getConnection(url,user,passwd);
		
	 }catch(Exception e) {e.printStackTrace();}
	 return con;
 }
 

}
