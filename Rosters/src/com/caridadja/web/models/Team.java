package com.caridadja.web.models;
import java.util.*;
public class Team {
	private String team_name;
	private static ArrayList<Team> teams = new ArrayList<Team>();
	private ArrayList<Player> players = new ArrayList<>();
	public Team() {
		
	}
	public Team(String team_name) {
		this.team_name = team_name;
	}
	public static void addTeam(String team_name) {
		Team team = new Team(team_name);
		Team.teams.add(team);
	}
	public void removeTeam(int index) {
		Team.teams.remove(index);
	}
	public void addPlayer(String first_name, String last_name, Integer age) {
		Player player = new Player(first_name, last_name, age);
		this.players.add(player);
	}
	public String getTeamName() {
		return this.team_name;
	}
	public ArrayList<Player> getPlayers(){
		return players;
	}
	public static ArrayList<Team> getTeams(){
		return Team.teams;
	}
}
