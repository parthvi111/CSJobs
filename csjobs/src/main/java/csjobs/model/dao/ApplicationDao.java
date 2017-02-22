package csjobs.model.dao;

import java.util.List;

import csjobs.model.Application;
import csjobs.model.User;


public interface ApplicationDao 
{
	List<Application> getApp();
	
	Application getApp(long id);
	
	Application saveApp(Application app);
	
	Application getAppl(long id , long id1);

}
