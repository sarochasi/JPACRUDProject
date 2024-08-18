package com.skilldistillery.tallestmountains.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.tallestmountains.entities.TallestMountain;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class TallestMountainDAOImpl implements TallestMountainDAO{
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public TallestMountain update(int id, TallestMountain mountain) {
		
		TallestMountain managedMountain = em.find(TallestMountain.class, id);
		 if(managedMountain != null) {
			 managedMountain.setName(mountain.getName());
			 managedMountain.setCountry(mountain.getCountry());
			 managedMountain.setDescription(mountain.getDescription());
			 managedMountain.setHeight(mountain.getHeight());
			 managedMountain.setImageUrl(mountain.getImageUrl());
			 managedMountain.setLatitude(mountain.getLatitude());
			 managedMountain.setLongitude(mountain.getLongitude());
			 managedMountain.setYearFound(mountain.getYearFound());
			 
		 }
		 
		 em.getTransaction().commit();
		 em.close();
		return mountain;
		
	}

	@Override
	public boolean deleteById(int id) {
		
		boolean deleted = false;
		
		TallestMountain managedMountain = em.find(TallestMountain.class, id);
		
		if(managedMountain != null) {
			em.remove(managedMountain);
			deleted = true;
		}
				
		return deleted;
	}

	@Override
	public TallestMountain findById(int id) {
		return em.find(TallestMountain.class, id);
	}

	@Override
	public List<TallestMountain> findAll() {
		String jpql = "SELECT mount FROM TallestMountain mount";
		return em.createQuery(jpql, TallestMountain.class).getResultList();
	}

	@Override
	public TallestMountain create(TallestMountain newMountain) {
	
		em.persist(newMountain);
		return newMountain;
	}
	
	

}
