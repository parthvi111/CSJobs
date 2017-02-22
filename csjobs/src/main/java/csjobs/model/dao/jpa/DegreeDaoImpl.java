package csjobs.model.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import csjobs.model.Degree;
import csjobs.model.dao.DegreeDao;

@Repository
public class DegreeDaoImpl implements DegreeDao {
	
	
	
		@PersistenceContext
		private EntityManager entityManager;
		

		@Override
		public List<Degree> getDg() {
			return entityManager.createQuery("from Degree order by id", Degree.class).getResultList();
			
		}

		@Override
		public Degree getdg(long id) {
			return entityManager.find(Degree.class, id);

		}

		@Override
		@Transactional
		public Degree saveDg(Degree dg) {
			return entityManager.merge(dg);

		}
	}



