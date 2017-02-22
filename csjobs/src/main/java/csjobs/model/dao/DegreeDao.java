package csjobs.model.dao;

import java.util.List;

import csjobs.model.Degree;

public interface DegreeDao 
{
	
	List<Degree> getDg();
	Degree getdg(long id);
	
	Degree saveDg(Degree dg);

}
