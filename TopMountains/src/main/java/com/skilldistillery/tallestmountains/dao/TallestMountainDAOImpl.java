package com.skilldistillery.tallestmountains.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.tallestmountains.entities.TallestMountain;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class TallestMountainDAOImpl implements TallestMountainDAO{
	
	@PersistenceContext
	private EntityManager em;
	
//	@Override
//	public Film filmById(int filmId) {
//		return em.find(Film.class, filmId);
//	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean deleteById(int mountId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public TallestMountain findById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TallestMountain> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public TallestMountain create(TallestMountain newMountain) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
