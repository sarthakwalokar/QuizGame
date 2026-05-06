package Dao;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	 public static Connection getConnection() {
	        String url = "jdbc:mysql://localhost:3306/quiz_game";
	        String usr = "root";
	        String pass = "Sarthak@2006";
	        Connection con = null;
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            con = DriverManager.getConnection(url, usr, pass);
	            //System.out.println("Connection done");
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return con;
	    }
}
