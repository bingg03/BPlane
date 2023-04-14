package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Flight;

public class DAO {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Flight> getListFlight() {
		List<Flight> list = new ArrayList<>();
		String query = "select * from DBPlane.dbo.TB_Flight";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();

			while(rs.next()) {
				list.add(new Flight(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7),
						rs.getInt(8),
						rs.getString(9)));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Flight> searchByDepart(String depSearch) {
		List<Flight> list = new ArrayList<>();
		String query = "select * from DBPlane.dbo.TB_Flight\r\n"
				+ "where Flight_Depart like ?";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1,"%" + depSearch + "%");
			rs = ps.executeQuery();

			while(rs.next()) {
				list.add(new Flight(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7),
						rs.getInt(8),
						rs.getString(9)));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<Flight> searchByDepartxDestination(String depSearch, String desSearch) {
		List<Flight> list = new ArrayList<>();
		String query = "select * from DBPlane.dbo.TB_Flight\r\n"
				+ "where Flight_Depart like ? and Flight_Destination like ?";
		
		try {
			conn = new DBContext().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1,"%" + depSearch + "%");
			ps.setString(2,"%" + desSearch + "%");
			rs = ps.executeQuery();

			while(rs.next()) {
				list.add(new Flight(rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5),
						rs.getInt(6),
						rs.getInt(7),
						rs.getInt(8),
						rs.getString(9)));
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args) {
		DAO dao = new DAO();
		List<Flight> list = dao.searchByDepartxDestination("đà","");
		for(Flight o : list) {
			System.out.println(o);
		}
	}
}
