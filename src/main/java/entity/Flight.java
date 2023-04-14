package entity;

public class Flight {
	private int id;
	private String depart;
	private String destination;
	private String dep_dt;
	private String des_dt;
	private int cost;
	private int numT;
	private int numS;
	private String img;

	public Flight() {

	}

	public Flight(int id, String depart, String destination, String dep_dt, String des_dt, int cost, int numT, int numS,
			String img) {
		this.id = id;
		this.depart = depart;
		this.destination = destination;
		this.dep_dt = dep_dt;
		this.des_dt = des_dt;
		this.cost = cost;
		this.numT = numT;
		this.numS = numS;
		this.img = img;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDepart() {
		return depart;
	}

	public void setDepart(String depart) {
		this.depart = depart;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public String getDep_dt() {
		return dep_dt;
	}

	public void setDep_dt(String dep_dt) {
		this.dep_dt = dep_dt;
	}

	public String getDes_dt() {
		return des_dt;
	}

	public void setDes_dt(String des_dt) {
		this.des_dt = des_dt;
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

	public int getNumS() {
		return numS;
	}

	public void setNumS(int numS) {
		this.numS = numS;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Flight [id=" + id + ", depart=" + depart + ", destination=" + destination + ", dep_dt=" + dep_dt
				+ ", des_dt=" + des_dt + ", cost=" + cost + ", numT=" + numT + ", numS=" + numS + ", img=" + img + "]";
	}

}
