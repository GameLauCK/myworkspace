package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.model.EmailValidation;
import com.springmvc.model.Login;
import com.springmvc.model.User;

public class UserDaoImpl implements UserDao {

  @Autowired
  DataSource datasource;

  @Autowired
  JdbcTemplate jdbcTemplate;
  
public int register(User user) {
    String sql = "insert into User values(null,?,?,?,?,?,?,?,?,?,null)";

    return jdbcTemplate.update(sql, new Object[] { user.getUsername(), user.getFirstname(),user.getLastname(), user.getEmail(), 
    		user.getPassword(), user.getCountry(), user.getCity(), user.getCompany(), user.getPosition() });
  }

  
 
public int update(User user) {
	String sql = "update User set username=?, firstname=?, lastname=?, email=?,"
			+ " password=?, country=?, city=?, company=?, position=? where id=?";

	try {

		int counter = jdbcTemplate.update(sql,
				new Object[] { user.getUsername(), user.getFirstname(), user.getLastname(),
						user.getEmail(), user.getPassword(), user.getCountry(), user.getCity(), 
						user.getCompany(), user.getPosition(), user.getId() });

		return counter;

	} catch (Exception e) {
		e.printStackTrace();
		return 0;
	}
}

 
public int delete(int userid) {
	String sql = "delete from User where id=?";

	try {

		int counter = jdbcTemplate.update(sql, new Object[] { userid });

		return counter;

	} catch (Exception e) {
		e.printStackTrace();
		return 0;
	}
}

public List<User> read() {
	List<User> userList = jdbcTemplate.query("SELECT * FROM User", new RowMapper<User>() {

		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User user = new User();

			user.setId(rs.getString("id"));
			user.setUsername(rs.getString("username"));
			user.setFirstname(rs.getString("firstname"));
			user.setLastname(rs.getString("lastname"));
			user.setEmail(rs.getString("email"));
			user.setPassword(rs.getString("password"));
		    user.setCountry(rs.getString("country"));
		    user.setCity(rs.getString("city"));
		    user.setCompany(rs.getString("company"));
		    user.setPosition(rs.getString("position"));
			
			return user;
		}

	});

	return userList;
}

	public List<User> findUserById(int userid) {
		List<User> userList = jdbcTemplate.query("SELECT * FROM User where id=?",
			new Object[] { userid }, new RowMapper<User>() {
					 
				public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					User user  = new User();
					user.setId(rs.getString("id"));
					user.setUsername(rs.getString("username"));
					user.setFirstname(rs.getString("firstname"));
					user.setLastname (rs.getString("lastname"));
					user.setEmail(rs.getString("email"));
					user.setPassword(rs.getString("password"));
				    user.setCountry(rs.getString("country"));
				    user.setCity(rs.getString("city"));
				    user.setCompany(rs.getString("company"));
				    user.setPosition(rs.getString("position"));
					return user;
				}
					 
		});
		
	return userList; 
	}

	public User validateUser(Login login) {
	    String sql = "select * from User where email='" + login.getEmail() 
	    	+ "' and password='" + login.getPassword() + "'";
	    List<User> users = jdbcTemplate.query(sql, new UserMapper());
	
	    return users.size() > 0 ? users.get(0) : null;
	}
	
	class UserMapper implements RowMapper<User> {
	
	  public User mapRow(ResultSet rs, int arg1) throws SQLException {
	    User user = new User();
	
	    user.setId(rs.getString("id"));
	    user.setUsername(rs.getString("username"));
	    user.setFirstname(rs.getString("firstname"));
	    user.setLastname(rs.getString("lastname"));
	    user.setEmail(rs.getString("email"));
	    user.setPassword(rs.getString("password"));
	    user.setCountry(rs.getString("country"));
	    user.setCity(rs.getString("city"));
	    user.setCompany(rs.getString("company"));
	    user.setPosition(rs.getString("position"));
	    user.setRole(rs.getInt("role"));
	
	    return user;
	  }
	  
	}

	public List<User> searchUser(String searchValue) {
		String sql = "SELECT * FROM user where username LIKE ?";
		List<User> userList = jdbcTemplate.query(sql, new Object[] { '%' + searchValue + '%' },
				new RowMapper<User>() {
					 
					public User mapRow(ResultSet rs, int rowNum) throws SQLException {
						User user  = new User();
	
						user.setId(rs.getString("id"));
						user.setUsername(rs.getString("username"));
						user.setFirstname(rs.getString("firstname"));
						user.setLastname (rs.getString("lastname"));
						user.setEmail(rs.getString("email"));
						user.setPassword(rs.getString("password"));
					    user.setCountry(rs.getString("country"));
					    user.setCity(rs.getString("city"));
					    user.setCompany(rs.getString("company"));
					    user.setPosition(rs.getString("position"));
						return user;
					}
					 
		});
		return userList;
	}
	
	public User validateEmail(EmailValidation email){
	    String sql = "select * from User where email=?" ;
		List<User> users = jdbcTemplate.query(sql, 
				new Object[] {email.getEmail()}, new RowMapper<User>() {
					 
				public User mapRow(ResultSet rs, int rowNum) throws SQLException {
					User user  = new User();
					user.setId(rs.getString("id"));
					user.setUsername(rs.getString("username"));
					user.setFirstname(rs.getString("firstname"));
					user.setLastname (rs.getString("lastname"));
					user.setEmail(rs.getString("email"));
					user.setPassword(rs.getString("password"));
				    user.setCountry(rs.getString("country"));
				    user.setCity(rs.getString("city"));
				    user.setCompany(rs.getString("company"));
				    user.setPosition(rs.getString("position"));
					return user;
				}
		});
		return users.size() > 0 ? users.get(0) : null;
	}
	
	public int resetPassword(User user) {
		String sql = "update User set password=? where email=?";

		try {

			int counter = jdbcTemplate.update(sql,
					new Object[] { user.getPassword(), user.getEmail() });

			return counter;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
}
 