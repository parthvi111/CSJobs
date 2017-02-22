package csjobs.model.dao;

import java.util.List;

import csjobs.model.Job;



public interface JobDao
{

	List<Job> getJobTitle();
	
	Job getDetails(long id);
}
