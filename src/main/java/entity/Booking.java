package entity;

public class Booking {
	private int ID;
	private int uID;
	private int fID;
	private int num;
	private int total;
	private String date;
	
	public Booking() {
		
	}

	public Booking(int iD, int uID, int fID, int num, int total, String date) {
		ID = iD;
		this.uID = uID;
		this.fID = fID;
		this.num = num;
		this.total = total;
		this.date = date;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getuID() {
		return uID;
	}

	public void setuID(int uID) {
		this.uID = uID;
	}

	public int getfID() {
		return fID;
	}

	public void setfID(int fID) {
		this.fID = fID;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Booking [ID=" + ID + ", uID=" + uID + ", fID=" + fID + ", num=" + num + ", total=" + total + ", date="
				+ date + "]";
	}
	
	
	
}
