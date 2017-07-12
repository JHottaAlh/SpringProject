package jp.co.ika.entity;

public class TrophyEntity {
	private int id;
	private int user_id;
	private int tornament_id;
	private String trophy_type;
	private String got_date;
	
	public int getId() {return id;}
	public void setId(int id) {this.id = id;}
	
	public int getUser_id() {return user_id;}
	public void setUser_id(int user_id) {this.user_id = user_id;}
	
	public int getTornament_id() {return tornament_id;}
	public void setTornament_id(int tornament_id) {this.tornament_id = tornament_id;}
	
	public String getTrophy_type() {return trophy_type;}
	public void setTrophy_type(String trophy_type) {this.trophy_type = trophy_type;}
	
	public String getGot_date() {return got_date;}
	public void setGot_date(String got_date) {this.got_date = got_date;}
}
