package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.JDBCUtil;
import vo.CourseVO;
import vo.LecturerVO;
import vo.ListVO;

public class CourseDAO {
	
	
	public int insertCourse(CourseVO vo) {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		int cnt = 0;
		String sql = "insert into course_tbl(id, name, credit, lecturer, week, start_hour, end_end) values(?, ?, ?, ?, ?, ?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getName());
			pstmt.setInt(3, vo.getCredit());
			pstmt.setString(4, vo.getLecturer());
			pstmt.setInt(5, vo.getWeek());
			pstmt.setInt(6, vo.getStart_hour());
			pstmt.setInt(7, vo.getEnd_end());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
		
	}
	
	public ArrayList<ListVO> getList() {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select c.id, c.name as name, c.credit, l.name as lecname, c.week, c.start_hour, c.end_end from course_tbl c, lecturer_tbl l where c.lecturer = l.idx order by c.id";
		ArrayList<ListVO> list = new ArrayList<ListVO>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ListVO vo = new ListVO();
				vo.setId(rs.getString("id"));
				vo.setCredit(rs.getInt("credit"));
				vo.setEnd_end(rs.getInt("end_end"));
				vo.setLecname(rs.getString("lecname"));
				vo.setName(rs.getString("name"));
				vo.setWeek(rs.getInt("week"));
				vo.setStart_hour(rs.getInt("start_hour"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int updatePro(CourseVO vo) {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		int cnt = 0;
		String sql = "update course_tbl set name = ?, credit = ?, lecturer = ?, week = ?, start_hour = ?, end_end = ? where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setInt(2, vo.getCredit());
			pstmt.setString(3, vo.getLecturer());
			pstmt.setInt(4, vo.getWeek());
			pstmt.setInt(5, vo.getStart_hour());
			pstmt.setInt(6, vo.getEnd_end());
			pstmt.setString(7, vo.getId());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
		
	}
	
	public CourseVO selectC(String id) {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select name, credit, end_end, week, start_hour,lecturer from course_tbl where id = ?";
		CourseVO vo = new CourseVO();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setCredit(rs.getInt("credit"));
				vo.setEnd_end(rs.getInt("end_end"));
				vo.setName(rs.getString("name"));
				vo.setWeek(rs.getInt("week"));
				vo.setStart_hour(rs.getInt("start_hour"));
				vo.setLecturer(rs.getString("lecturer"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	public int deleteC(String id) {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from course_tbl where id = ?";
		int cnt = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public int insertLecturer(LecturerVO vo) {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		int cnt = 0;
		String sql = "insert into lecturer_tbl(idx, name, major, field) values(?, ?, ?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getIdx());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getMajor());
			pstmt.setString(4, vo.getField());
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
		
	}
	
	public ArrayList<LecturerVO> getLecList() {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select idx, name, major, field from lecturer_tbl";
		ArrayList<LecturerVO> list = new ArrayList<LecturerVO>();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				LecturerVO vo = new LecturerVO();
				vo.setIdx(rs.getInt("idx"));
				vo.setName(rs.getString("name"));
				vo.setMajor(rs.getString("major"));
				vo.setField(rs.getString("field"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int deleteL(String idx) {
		Connection conn = JDBCUtil.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from lecturer_tbl where idx = ?";
		int cnt = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, idx);
			cnt = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
}
