package main.java.com.example.projekt_jee_liga.domain;

public class Player {
	private int playerId=1;
	private int clubId;
	private String firstName = "unknown";
	private String lastName = "unknown";
	private String position = "unknown";
	private int number = 0;
	
	
	public Player() {
		super();
	}
	//Konstruktor
	public Player(int playerId, int clubId, String firstName, String lastName, String position, int number) {
		super();
		this.setPlayerId(playerId);
		this.setClubId(clubId);
		this.firstName = firstName;
		this.setLastName(lastName);
		this.setPosition(position);
		this.setNumber(number);
	}
	//Setters & Getters
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getPlayerId() {
		return playerId;
	}
	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}
	public int getClubId() {
		return clubId;
	}
	public void setClubId(int clubId) {
		this.clubId = clubId;
	}

}