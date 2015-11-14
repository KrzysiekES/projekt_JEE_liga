package main.java.com.example.projekt_jee_liga.service;

import java.util.ArrayList;
import java.util.List;

import main.java.com.example.projekt_jee_liga.domain.Club;
import main.java.com.example.projekt_jee_liga.domain.Player;

public class StorageService {
	int usun;
	
	private List<Player> players = new ArrayList<Player>();
	private List<Club> clubs = new ArrayList<Club>();
	
	
	public void add(Player player){
		Player newPlayer = new Player (player.getPlayerId(), player.getClubId(), player.getFirstName(), player.getLastName(), player.getPosition(), player.getNumber());
		players.add(newPlayer);
	}
	
	public List<Player> getAllPlayers(){
		return players;
	}
	
	public void add(Club club){
		Club newClub = new Club (club.getClubId(), club.getClubName(), club.getClubCity(), club.getClubMenager());
		
		clubs.add(newClub);
	}
	
	public List<Club> getAllClubs(){
		return clubs;
	}

}