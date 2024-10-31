package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.User;
import db.UserDB;

public class UserDAO {

public void insertUsers(User users) throws SQLException{
	String query ="INSERT INTO users(id, name, email,) VALUES(?,?,?)";
	try (Connection con=UserDB.getConnection();
			PreparedStatement pst= con.prepareStatement(query)){
		pst.setInt(1, users.getId());
		pst.setString(2, users.getName());
		pst.setString(3, users.getEmail());
		pst.executeUpdate();
	}
}
public User getUsers(int id) throws SQLException {
	String query = "SELECT * FROM users WHERE id = ?";
	try (Connection con=UserDB.getConnection();
			PreparedStatement pst=con.prepareStatement(query)){
		pst.setInt(1, id);
		ResultSet rs=pst.executeQuery();
		if (rs.next()) {
			return new User(rs.getInt("id"), rs.getString("name"), rs.getString("email"));		
		}
	}
	return null;
}
public void updateUsers(User users) throws SQLException {
	String query = "UPDATE users SET name= ?, email= ?, country= ?, password= ? WHERE id= ? ";
	try (Connection con= UserDB.getConnection();
			PreparedStatement pst=con.prepareStatement(query)){
		pst.setString(1, users.getName());
		pst.setString(2, users.getEmail());
		pst.setInt(5, users.getId());
		pst.executeUpdate();
	}
}
public void deleteUsers(int id) throws SQLException {
	String query= "DELETE FROM users WHERE id= ?";
	try (Connection con=UserDB.getConnection(); 
			PreparedStatement pst=con.prepareStatement(query)){
		pst.setInt(1, id);
		pst.executeUpdate();
	}
}
public List<User> getAllUsers() throws SQLException {
	List<User> users= new ArrayList<User>();
	String query= "SELECT * FROM users";
	try (Connection con=UserDB.getConnection();
			Statement st=con.createStatement();
			ResultSet rs= st.executeQuery(query)){
		while (rs.next()) {
			users.add(new User(rs.getInt("id"), rs.getString("name"), rs.getString("email")));
		}
	}
	return users;
}
}
