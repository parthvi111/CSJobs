package csjobs.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import csjobs.model.Application;
import csjobs.model.User;
import csjobs.model.dao.ApplicationDao;
@Repository
public class ApplicationDaoImpl implements ApplicationDao
{
	@PersistenceContext
	private EntityManager entityManager;
	
	@Override

	public List<Application> getApp() {
		return entityManager.createQuery("from Application order by id", Application.class).getResultList();
	}

	@Override
	public Application getApp(long id) {
		return entityManager.find(Application.class, id);
	}

	@Override
	@Transactional
	public Application saveApp(Application app) {
		return entityManager.merge(app);
	}

	@Override
	public Application getAppl(long id, long id1) {
		// TODO Auto-generated method stub
		return entityManager.createQuery("from Application where applicant_id=:id and job_id=:id1 ", Application.class).setParameter("id",id).setParameter("id1",id1).getSingleResult();
	}
}
