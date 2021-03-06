package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;
import vo.PersonnelVO;

public class PersonnelDAO {
	
	
	public ArrayList<PersonnelVO> idList(String id) {
		ArrayList<PersonnelVO> list = new ArrayList<PersonnelVO>();
		ResultSet rs = null;
		String sql = "select * from personnel where id = ?";
		try {
			Connection conn = JDBCUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PersonnelVO vo = new PersonnelVO();
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("name"));
				vo.setDept(rs.getString("dept"));
				vo.setDuty(rs.getString("duty"));
				vo.setPhone(rs.getString("phone"));
				vo.setPosition(rs.getString("position"));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public ArrayList<PersonnelVO> deptList(String dept) {
		ArrayList<PersonnelVO> list = new ArrayList<PersonnelVO>();
		ResultSet rs = null;
		String sql = "select * from personnel where dept = ?";
		try {
			Connection conn = JDBCUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dept);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PersonnelVO vo = new PersonnelVO();
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("name"));
				vo.setDept(rs.getString("dept"));
				vo.setDuty(rs.getString("duty"));
				vo.setPhone(rs.getString("phone"));
				vo.setPosition(rs.getString("position"));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int perInsert(PersonnelVO vo) {
		int i = 0;
			try {
				String sql = "insert into personnel values(?, ?, ?, ?, ?, ?)";
				Connection conn = JDBCUtil.getConnection();
				PreparedStatement pstmt = null;
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getId());
				pstmt.setString(2, vo.getName());
				pstmt.setString(3, vo.getDept());
				pstmt.setString(4, vo.getPosition());
				pstmt.setString(5, vo.getDuty());
				pstmt.setString(6, vo.getPhone());
				i = pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return i;
	}
	
	public int perUpdate(PersonnelVO vo) {
		int i = 0;
			try {
				String sql = "update personnel set name = ?, dept = ?, position = ?, duty = ?, phone = ? where id = ? ";
				Connection conn = JDBCUtil.getConnection();
				PreparedStatement pstmt = null;
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getName());
				pstmt.setString(2, vo.getDept());
				pstmt.setString(3, vo.getPosition());
				pstmt.setString(4, vo.getDuty());
				pstmt.setString(5, vo.getPhone());
				pstmt.setString(6, vo.getId());
				i = pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return i;
	}
	
	public int perDelete(String id, String name) {
		int i = 0;
		try {
			String sql = "delete from personnel where id = ? and name = ?";
			Connection conn = JDBCUtil.getConnection();
			PreparedStatement pstmt = null;
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			i = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
	}
		return i;
	}
}
