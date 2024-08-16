package com.skilldistillery.tallestmountains.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class TallestMountainTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private TallestMountain mountain;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPATallestMountains");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		mountain = em.find(TallestMountain.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		mountain = null;
	}

	@Test
	void test_TallestMountain_entity_mappings() {
		assertNotNull(mountain);
		assertEquals("Mount Averest", mountain.getName());
	}

}
