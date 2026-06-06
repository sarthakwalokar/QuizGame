package dao;
import java.sql.*;
import model.User;
import util.DBConnection;
public class UserDao {
    public boolean registerUser(User user) {
    	boolean status=false;
    	try {
    		Connection con = DBConnection.getConnection();
    		String query="INSERT INTO users(full_name,email,password_hash,role) values(?,?,?,?)";
    		PreparedStatement ps=con.prepareStatement(query);
    		
    		ps.setString(1,user.getFullName());
    		ps.setString(2,user.getEmail());
    		ps.setString(3,user.getPasswordHash());
    		ps.setString(4,user.getRole());
    		
    		int row=ps.executeUpdate();
    		if(row>0) {
    			status=true;
    		}
    		
    	}catch(Exception e) {e.printStackTrace();}
    	return status;
    }
    public boolean emailExist(String email) {
    	boolean status=false;
    	try {
    		Connection con =DBConnection.getConnection();
    		String query="select * from users where email=?";
    		PreparedStatement ps=con.prepareStatement(query);
    		
    		ps.setString(1,email);
    		
    		int rows=ps.executeUpdate();
    		
    		if(rows>0) {
    			status=true;
    		}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return status;
    }
    public User login(String email, String passwordHash) {
    	User user=null;
    	try {
    		Connection con=DBConnection.getConnection();
    		String query="select * from users where email=? and password_hash=?";
    		PreparedStatement ps=con.prepareStatement(query);
    		
    		ps.setString(1, email);
    		ps.setString(2, passwordHash);
    		
    	ResultSet rs=ps.executeQuery();
    	if(rs.next()) {
    		 user=new User();
    		
    		 user.setUserId(rs.getInt("user_id"));
             user.setFullName(rs.getString("full_name"));
             user.setEmail(rs.getString("email"));
             user.setRole(rs.getString("role"));
    	}
    	}catch(Exception e) {e.printStackTrace();}
    	return user;
    	
    }
    
}
