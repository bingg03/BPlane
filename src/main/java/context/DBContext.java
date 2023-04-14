
package context;


import java.sql.*;


public class DBContext {
    
     public Connection getConnection()throws Exception {
        String url = "jdbc:sqlserver://"+serverName+":"+portNumber + "\\" + instance +";databaseName="+dbName;
        if(instance == null || instance.trim().isEmpty())
            url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }   
    
    private final String serverName = "DESKTOP-ESPLJPP";
    private final String dbName = "DBPlane";
    private final String portNumber = "1433";
    private final String instance="";
    private final String userID = "sa";
    private final String password = "123456789";
    
//    public static void main(String[] args) throws SQLException {
//		try {
//			Connection conn = new DBContext().getConnection();
//			Statement stmt = conn.createStatement();
//			ResultSet rs = stmt.executeQuery("select * from ");
//			System.out.println(new DBContext().getConnection());
//			
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//	}
    
}
 