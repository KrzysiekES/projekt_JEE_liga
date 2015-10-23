package main.java.com.example.servletjspdemo.domain;

public class Player {

	private String firstName = "unknown";
	private String lastName = "unknown";
	private String position = "unknown";
	private int number = 0;
	
	
	public Player() {
		super();
	}
	//Konstruktor
	public Player(String firstName, String lastName, String position, int number) {
		super();
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

}



