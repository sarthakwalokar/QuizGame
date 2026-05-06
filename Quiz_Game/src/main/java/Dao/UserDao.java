package Dao;
import model.User;
import java.sql.*;
public class UserDao {

	public boolean saveUser(String name,String email) {
		boolean status=false;
		User user=new User();
		  try {
			  Connection con=DBConnection.getConnection();
			  String sql="insert into user(name,email) values(?,?)";
			  PreparedStatement ps=con.prepareStatement(sql);
			  ps.setString(1,name);
			  ps.setString(2,email);
			  int row=ps.executeUpdate();
			  
			  if(row>0) {
				  status=true;
			  }
			  
			  
		  }catch(Exception e){
			  e.printStackTrace();
		  }
		return status;
	}
	
	public User getUserByEmail(String email) {
		
		User user=null;
		try {
			
			Connection con=DBConnection.getConnection();
			String fetch="SELECT * FROM USER WHERE email=?";
			PreparedStatement ps=con.prepareStatement(fetch);
			
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				user=new User();
				user.setName(rs.getString("name"));
				user.setScore(rs.getInt("score"));
			}
		}catch(Exception e) {e.printStackTrace();}
		return user;
	}
	
	
}
