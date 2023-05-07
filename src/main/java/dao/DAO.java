package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Flight;
import entity.Account;

public class DAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	
	

	public List<Flight> getListFlight() {
		List<Flight> list = new ArrayList<>();
		String query = "select * from DBPlane.dbo.Flight";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Flight(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8)));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	
	public List<Flight> searchByDepart(String depSearch) {
		List<Flight> list = new ArrayList<>();
		String query = "select * from DBPlane.dbo.Flight\r\n" + "where fDep like ?";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + depSearch + "%");
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Flight(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8)));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<Flight> searchByDepartxDestination(String depSearch, String desSearch) {
		List<Flight> list = new ArrayList<>();
		String query = "select * from DBPlane.dbo.Flight\r\n" + "where fDep like ? and fDes like ?";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + depSearch + "%");
			ps.setString(2, "%" + desSearch + "%");
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Flight(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8)));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public Flight getFlightByID(String id) {
		String query = "select * from DBPlane.dbo.Flight\r\n"
				+ "where fID = ?";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			rs = ps.executeQuery();

			while (rs.next()) {
				return new Flight(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void updateChangePass(int id, String pass) {
		String query = "update DBPlane.dbo.Account\r\n"
				+ "set uPass = ?\r\n"
				+ "where uID = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, pass);
			ps.setInt(2, id);
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateChangeInfo(int id, String name, String email, String cccd, int age) {
		String query = "update DBPlane.dbo.Account\r\n"
				+ "set uName = ?,\r\n"
				+ "uEmail = ?,\r\n"
				+ "uCCCD = ?,\r\n"
				+ "uAge = ?\r\n"
				+ "where uID = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, cccd);
			ps.setInt(4, age);
			ps.setInt(5, id);
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateFlight(int id, String dep, String des, String timedep, String timedes, int cost, int numT, String image) {
		String query = "update DBPlane.dbo.Flight\r\n"
				+ "set fDep = ?,\r\n"
				+ "fDes = ?,\r\n"
				+ "fTimeDep = ?,\r\n"
				+ "fTimeDes = ?,\r\n"
				+ "fCost = ?,\r\n"
				+ "fNumT = ?,\r\n"
				+ "fImage = ?\r\n"
				+ "where fID = ?";

		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, dep);
			ps.setString(2, des);
			ps.setString(3, timedep);
			ps.setString(4, timedes);
			ps.setInt(5, cost);
			ps.setInt(6, numT);
			ps.setString(7, image);
			ps.setInt(8, id);
			
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Account login(String email, String pass) {
		String query = "select * from DBPlane.dbo.Account \n"
				+ "where uEmail = ?\n"
				+ "and uPass = ?";
				try {
					conn = new DBContext().getConnection();
					ps = conn.prepareStatement(query);
					ps.setString(1, email);
					ps.setString(2, pass);
					rs = ps.executeQuery();

					while(rs.next()) {
						return new Account(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4),
								rs.getInt(5),
								rs.getInt(6),
								rs.getInt(7),
								rs.getString(8),
								rs.getInt(9));
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		return null;
	}
	
	public Account checkAccountExit(String email) {
		String query = "select * from DBPlane.dbo.Account \n"
				+ "where uEmail = ?\n";
				try {
					conn = new DBContext().getConnection();
					ps = conn.prepareStatement(query);
					ps.setString(1, email);
					rs = ps.executeQuery();

					while(rs.next()) {
						return new Account(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getString(4),
								rs.getInt(5),
								rs.getInt(6),
								rs.getInt(7),
								rs.getString(8),
								rs.getInt(9));
					}
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		return null;
	}
	
	public void RegisterAC(int id, String email, String name, String pass, String CCCD, int age) {
		String query = "insert into DBPlane.dbo.Account\r\n"
				+ "values (?,?,?,?,1,0,0,?,?)";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.setString(2, email);
			ps.setString(3, name);
			ps.setString(4, pass);
			ps.setString(5, CCCD);
			ps.setInt(6, age);
			
			ps.executeUpdate();

			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public int TopID() {
		String query = "select * from DBPlane.dbo.Account\r\n"
				+ "order by uID desc";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				return (rs.getInt(1) + 1);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}
	public int TopIDFlight() {
		String query = "select * from DBPlane.dbo.Flight\r\n"
				+ "order by fID desc";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				return (rs.getInt(1) + 1);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}
	
	public int TopIDBooking() {
		String query = "select * from DBPlane.dbo.Booking\r\n"
				+ "order by IDbooking desc";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				return (rs.getInt(1) + 1);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 1;
	}
	
	
	
	public void deleteTicket(String fid) {
		String query = "delete from DBPlane.dbo.Flight\r\n"
				+ "where fID = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, fid);
			ps.executeUpdate();
		} catch (Exception e) {
			
		}
	}
	
	public void addTicket(int id, String dep, String des, String timedep, String timedes, int cost, int numT, String image) {
		String query = "insert DBPlane.dbo.Flight\r\n"
				+ "([fID],[fDep],[fDes],[fTimeDep],[fTimeDes],[fCost],[fNumT],[fImage])\r\n"
				+ "values (?,?,?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.setString(2, dep);
			ps.setString(3, des);
			ps.setString(4, timedep);
			ps.setString(5, timedes);
			ps.setInt(6, cost);
			ps.setInt(7, numT);
			ps.setString(8, image);
			
			ps.executeUpdate();
		} catch (Exception e) {
			
		}
	}
	
	public String getPresentTime() {
		
	    LocalDateTime current = LocalDateTime.now();
	    
	    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm dd-MM-yyyy");
	    
	    String formatted = current.format(formatter);
	    
	    //formatted = formatted.substring(0, 2) + 'h' + formatted.substring(3);
	    
	    return formatted;
	}
	
	public void addBooking(int bID, int uID, int fID, int quanlity, int total, String BookingDate) {
		String query = "insert DBPlane.dbo.Booking\r\n"
				+ "([bID],[uID],[fID],[quanlity],[total],[BookingDate])\r\n"
				+ "values (?,?,?,?,?,?)";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, bID);
			ps.setInt(2, uID);
			ps.setInt(3, fID);
			ps.setInt(4, quanlity);
			ps.setInt(5, total);
			ps.setString(6, BookingDate);
			
			ps.executeUpdate();
		} catch (Exception e) {
			
		}
	}
	
	public int checkExitBooking(int uID, int fID) {
		String query = "select * from DBPlane.dbo.AcF\r\n"
				+ "where uID = ? and fID = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, uID);
			ps.setInt(2, fID);
			rs = ps.executeQuery();
			
			int i = 0;
			while(rs.next()) {
				i++;
				if (i > 0) return 1;
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public void addAcF(int uID, int fID, int quanlity, int total) {
		String query1 = "insert DBPlane.dbo.AcF\r\n"
				+ "([uID],[fID],[quanlity],[total])\r\n"
				+ "values (?,?,?,?)";
		String query2 = "update DBPlane.dbo.AcF \r\n"
				+ "set quanlity = quanlity + ?,\r\n"
				+ "total = total + ?\r\n"
				+ "where [uID] = ? and [fID] = ?";
		try {
			conn = new DBContext().getConnection();
			
			if (checkExitBooking(uID, fID) == 1) {
				ps = conn.prepareStatement(query2);
				ps.setInt(1, quanlity);
				ps.setInt(2, total);
				ps.setInt(3, uID);
				ps.setInt(4, fID);
			}
			else {
				ps = conn.prepareStatement(query1);
				ps.setInt(1, uID);
				ps.setInt(2, fID);
				ps.setInt(3, quanlity);
				ps.setInt(4, total);
			}
			
			
			ps.executeUpdate();
		} catch (Exception e) {
			
		}
	}
	
	public void updateAfterBooking(int fID, int quanlity) {
		String query = "update DBPlane.dbo.Flight\r\n"
				+ "set fNumT = fNumT - ?\r\n"
				+ "where fID = ?";
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, quanlity);
			ps.setInt(2, fID);
			
			ps.executeUpdate();
		} catch (Exception e) {
			
		}
	}
	
	public static void main(String[] args) {
		DAO dao = new DAO();
		//System.out.println(dao.TopIDBooking());
		dao.addAcF(100, 100, 1000, 1000);	
	}
}
