package main.java.com.example.projekt_jee_liga.service;

import java.util.ArrayList;
import java.util.List;

import main.java.com.example.projekt_jee_liga.domain.Player;

public class StorageService {
	
	
	private List<Player> db = new ArrayList<Player>();
	
	public void add(Player player){
		Player newPlayer = new Player (player.getPlayerId(), player.getClubId(), player.getFirstName(), player.getLastName(), player.getPosition(), player.getNumber());
		db.add(newPlayer);
	}
	
	public List<Player> getAllPlayers(){
		return db;
	}

}