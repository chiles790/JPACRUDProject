package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SuperBowls {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String winner;
	
	@Column(name = "winner_score")
	private int winnerScore;
	
	private String loser;
	
	@Column(name = "loser_score")
	private int loserScore;
	
	private String mvp;
	private String stadium;
	

	public SuperBowls() {
		super();
	}
	

	public SuperBowls(int id, String winner, int winnerScore, String loser, int loserScore, String mvp,
			String stadium) {
		super();
		this.id = id;
		this.winner = winner;
		this.winnerScore = winnerScore;
		this.loser = loser;
		this.loserScore = loserScore;
		this.mvp = mvp;
		this.stadium = stadium;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWinner() {
		return winner;
	}

	public void setWinner(String winner) {
		this.winner = winner;
	}

	public int getWinnerScore() {
		return winnerScore;
	}

	public void setWinnerScore(int winnerScore) {
		this.winnerScore = winnerScore;
	}

	public String getLoser() {
		return loser;
	}

	public void setLoser(String loser) {
		this.loser = loser;
	}

	public int getLoserScore() {
		return loserScore;
	}

	public void setLoserScore(int loserScore) {
		this.loserScore = loserScore;
	}

	public String getMvp() {
		return mvp;
	}

	public void setMvp(String mvp) {
		this.mvp = mvp;
	}

	public String getStadium() {
		return stadium;
	}

	public void setStadium(String stadium) {
		this.stadium = stadium;
	}

	@Override
	public String toString() {
		return "SuperBowls [id=" + id + ", winner=" + winner + ", winnerScore=" + winnerScore + ", loser=" + loser
				+ ", loserScore=" + loserScore + ", mvp=" + mvp + ", stadium=" + stadium + "]";
	}

}
