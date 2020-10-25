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
	public SuperBowls findById(int Id) {
		return em.find(SuperBowls.class, Id);
	}

	@Override
	public List<SuperBowls> findAll() {
		String jpql = "SELECT ";
		return null;
	}

	@Override
	public SuperBowls create(SuperBowls superbowls) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SuperBowls update(int Id, SuperBowls superbowls) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
