package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.SuperBowls;

@Transactional
@Service
public class SuperBowlDAOImpl implements SuperBowlDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public SuperBowls findById(int id) {
		return em.find(SuperBowls.class, id);
	}

	@Override
	public List<SuperBowls> findAll() {
		List<SuperBowls> superbowls = null;
		String jpql = "SELECT sb FROM Superbowls sb";
		superbowls = em.createQuery(jpql, SuperBowls.class).getResultList();
		return superbowls;
	}

	@Transactional
	@Override
	public SuperBowls create(SuperBowls superbowls) {
		em.persist(superbowls);
		return null;
	}

	@Transactional
	@Override
	public SuperBowls update(int id, SuperBowls superbowls) {
		SuperBowls updateSuper = em.find(SuperBowls.class, id);
		updateSuper.setWinner(superbowls.getWinner());
		updateSuper.setWinnerScore(superbowls.getWinnerScore());
		updateSuper.setLoser(superbowls.getLoser());
		updateSuper.setLoserScore(superbowls.getLoserScore());
		updateSuper.setMvp(superbowls.getMvp());
		updateSuper.setStadium(superbowls.getStadium());

		return updateSuper;
	}

	@Override
	public boolean delete(int id) {
		SuperBowls dsuper = em.find(SuperBowls.class, id);
		em.remove(dsuper);
		boolean isDeleted = !em.contains(dsuper);
		return isDeleted;
	}

}
