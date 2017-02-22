package csjobs.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import csjobs.model.Job;
import csjobs.model.User;
import csjobs.model.dao.UserDao;
@Repository
public class UserDaoImpl implements UserDao

{

	@PersistenceContext
	private EntityManager entityManager;
	
	@Override
	public List<User> getUsers() {
		return entityManager.createQuery("from User order by id", User.class).getResultList();
	}

	@Override
	public User getUsers(long id) {
		return entityManager.find(User.class, id);
	}

	@Override
	@Transactional
	public User saveUser(User user) {
		return entityManager.merge(user);
	}

	@Override
	public List<User> getUsersbyrole(String email) {
		
					
			String query = "from User where email =:email";
			
			return   entityManager.createQuery(query, User.class).setParameter("email", email).getResultList();
			//return entityManager.createQuery(query, Users.class).getResultList();
		}
	}


