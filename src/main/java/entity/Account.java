package entity;

public class Account {
	private int id;
	private String email;
	private String name;
	private String pass;
	private int isUser;
	private int isAdmin;
	private int bugdet;
	private String CCCD;
	private int age;
	
	public Account() {
		
	}

	public Account(int id, String email, String name, String pass, int isUser, int isAdmin, int bugdet, String CCCD, int age) {
		this.id = id;
		this.email = email;
		this.name = name;
		this.pass = pass;
		this.isUser = isUser;
		this.isAdmin = isAdmin;
		this.bugdet = bugdet;
		this.CCCD = CCCD;
		this.age = age;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getIsUser() {
		return isUser;
	}

	public void setIsUser(int isUser) {
		this.isUser = isUser;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	public int getBugdet() {
		return bugdet;
	}

	public void setBugdet(int bugdet) {
		this.bugdet = bugdet;
	}

	public String getCCCD() {
		return CCCD;
	}

	public void setCCCD(String cCCD) {
		CCCD = cCCD;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Account [id=" + id + ", email=" + email + ", name=" + name + ", pass=" + pass + ", isUser=" + isUser
				+ ", isAdmin=" + isAdmin + ", bugdet=" + bugdet + ", CCCD=" + CCCD + ", age=" + age + "]";
	}

	
	
	
}
