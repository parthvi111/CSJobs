package csjobs.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import csjobs.model.Job;
import csjobs.model.dao.JobDao;

@Repository
public class JobDaoImpl implements JobDao
{
	@PersistenceContext
	private EntityManager entityManager;

	
	@Override
	public List<Job> getJobTitle() {
		return entityManager.createQuery("from Job order by id", Job.class).getResultList();
	}
	@Override
	public Job getDetails(long id) {
		return entityManager.find(Job.class, id);
	}

}
