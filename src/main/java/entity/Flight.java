package entity;

public class Flight {
	
	private int id;
	private String dep;
	private String des;
	private String timedep;
	private String timedes;
	private int cost;
	private int numT;
	private String image;

	public Flight() {

	}

	

	public Flight(int id, String dep, String des, String timedep, String timedes, int cost, int numT, String image) {	
		this.id = id;
		this.dep = dep;
		this.des = des;
		this.timedep = timedep;
		this.timedes = timedes;
		this.cost = cost;
		this.numT = numT;
		this.image = image;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getDep() {
		return dep;
	}



	public void setDep(String dep) {
		this.dep = dep;
	}



	public String getDes() {
		return des;
	}



	public void setDes(String des) {
		this.des = des;
	}



	public String getTimedep() {
		return timedep;
	}



	public void setTimedep(String timedep) {
		this.timedep = timedep;
	}



	public String getTimedes() {
		return timedes;
	}



	public void setTimedes(String timedes) {
		this.timedes = timedes;
	}



	public int getCost() {
		return cost;
	}



	public void setCost(int cost) {
		this.cost = cost;
	}



	public int getNumT() {
		return numT;
	}



	public void setNumT(int numT) {
		this.numT = numT;
	}



	public String getImage() {
		return image;
	}



	public void setImage(String image) {
		this.image = image;
	}



	@Override
	public String toString() {
		return "Flight [id=" + id + ", dep=" + dep + ", des=" + des + ", timedep=" + timedep + ", timedes=" + timedes
				+ ", cost=" + cost + ", numT=" + numT + ", image=" + image + "]";
	}



	

}
