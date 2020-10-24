package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SuperBowls {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String team1;

	public SuperBowls() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTeam1() {
		return team1;
	}

	public void setTeam1(String team1) {
		this.team1 = team1;
	}

	@Override
	public String toString() {
		return "SuperBowls [id=" + id + ", team1=" + team1 + "]";
	}

}
