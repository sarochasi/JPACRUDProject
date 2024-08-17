package com.skilldistillery.tallestmountains.dao;

import java.util.List;
import com.skilldistillery.tallestmountains.entities.TallestMountain;

public interface TallestMountainDAO {
	
	TallestMountain findById(int id);
	List<TallestMountain> findAll();
	TallestMountain create(TallestMountain newMountain);
	TallestMountain update(int id, TallestMountain mountain);
	boolean deleteById(int id);

}
