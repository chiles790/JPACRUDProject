package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.SuperBowls;

public interface SuperBowlDAO {
 SuperBowls findById(int Id);
 List<SuperBowls> findAll();
 SuperBowls create(SuperBowls superbowls);
 SuperBowls update(int Id, SuperBowls superbowls);
 boolean delete(int id);
}
