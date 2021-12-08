package com.realpro.footballmatch.bean;

public class MatchVO {
	private int seq;
	private String team_one;
	private String team_two;
	private String league;
	private String date;
	private String team_one_score;
	private String team_two_score;
	private String time;

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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public String getTeam_one_score() {
		return team_one_score;
	}

	public void setTeam_one_score(String team_one_score) {
		this.team_one_score = team_one_score;
	}

	public String getTeam_two_score() {
		return team_two_score;
	}

	public void setTeam_two_score(String team_two_score) {
		this.team_two_score = team_two_score;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
}
