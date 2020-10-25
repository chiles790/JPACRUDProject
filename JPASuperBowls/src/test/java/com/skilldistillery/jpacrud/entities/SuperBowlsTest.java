package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SuperBowlsTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private SuperBowls superbowls;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SuperBowl");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		superbowls = em.find(SuperBowls.class, 34);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		superbowls = null;
	}

	@Test
	void test_SuperBowls_entity_mapping() {
		assertNotNull(superbowls);
		assertEquals("St. Louis Rams", superbowls.getWinner());
		assertEquals(23, superbowls.getWinnerScore());
		assertEquals("Tennessee Titans", superbowls.getLoser());
		assertEquals(16, superbowls.getLoserScore());
		assertEquals("Kurt Warner", superbowls.getMvp());
		assertEquals("Georgia Dome", superbowls.getStadium());
	}

}
