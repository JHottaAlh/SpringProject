package jp.co.ika.entity;

public class UserEntity {
	
	//ユーザー情報関連
	private int id;
	private String token_id;
	private String twitter_id;
	private String NNID;
	private String user_name;
	private String password;
	private String wepon;
	private String area;
	private String yagura;
	private String hoko;
	private int team_id;
	private String icon;
	
	//トロフィー関連
	private int tornament_id;
	private String trophy_type;
	private String got_date;
	
	public int getId() {return id;}
	public void setId(int id) {this.id = id;}
	
	public String getToken_id() {return token_id;}
	public void setToken_id(String token_id) {this.token_id = token_id;}
	
	public String getTwitter_id() {return twitter_id;}
	public void setTwitter_id(String twitter_id) {this.twitter_id = twitter_id;}
	
	public String getNNID() {return NNID;}
	public void setNNID(String nNID) {NNID = nNID;}
	
	public String getUser_name() {return user_name;}
	public void setUser_name(String user_name) {this.user_name = user_name;}
	
	public String getPassword() {return password;}
	public void setPassword(String password) {this.password = password;}
	
	public String getWepon() {return wepon;}
	public void setWepon(String wepon) {this.wepon = wepon;}
	
	public String getArea() {return area;}
	public void setArea(String area) {this.area = area;}
	
	public String getYagura() {return yagura;}
	public void setYagura(String yagura) {this.yagura = yagura;}
	
	public String getHoko() {return hoko;}
	public void setHoko(String hoko) {this.hoko = hoko;}
	
	public int getTeam_id() {return team_id;}
	public void setTeam_id(int team_id) {this.team_id = team_id;}
	
	public String getIcon() {return icon;}
	public void setIcon(String icon) {this.icon = icon;}
	
	public int getTornament_id() {return tornament_id;}
	public void setTornament_id(int tornament_id) {this.tornament_id = tornament_id;}
	
	public String getTrophy_type() {return trophy_type;}
	public void setTrophy_type(String trophy_type) {this.trophy_type = trophy_type;}
	
	public String getGot_date() {return got_date;}
	public void setGot_date(String got_date) {this.got_date = got_date;}
}
