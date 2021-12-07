package com.realpro.footballmatch.bean;

import java.util.Date;

public class MatchVO {
	private int seq;
	private String team_one;
	private String team_two;
	private String league;
	private Date date;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getTeam_one() {
		return team_one;
	}

	public void setTeam_one(String team_one) {
		this.team_one = team_one;
	}

	public String getTeam_two() {
		return team_two;
	}

	public void setTeam_two(String team_two) {
		this.team_two = team_two;
	}

	public String getLeague() {
		return league;
	}

	public void setLeague(String league) {
		this.league = league;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
}
