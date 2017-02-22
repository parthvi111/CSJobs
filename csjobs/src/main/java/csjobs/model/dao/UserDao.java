package csjobs.model.dao;

import java.util.List;

import csjobs.model.User;


public interface UserDao 

{
		List<User> getUsers();
	
		User getUsers(long id);
		
		User saveUser(User user);
		
		List<User> getUsersbyrole(String role);
}
