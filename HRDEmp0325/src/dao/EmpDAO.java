package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.JDBCUtil;
import vo.EmpVO;

public class EmpDAO {
	
	public int insertEmp(EmpVO vo) {
		int n = 0;
		
		try {
			Connection conn = JDBCUtil.getConn();
			PreparedStatement pstmt = null;
			String sql = "insert into employee_tbl(empno, empname, joindate, rank, dept) values(?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, vo.getEmpno());
			pstmt.setString(2, vo.getEmpname());
			pstmt.setDate(3, vo.getJoindate());
			pstmt.setString(4, vo.getRank());
			pstmt.setString(5, vo.getDept());
			
			n = pstmt.executeUpdate();
			sql = "insert into salary_tbl(empno, payday, pay) values(?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getEmpno());
			pstmt.setDate(2, vo.getJoindate());
			pstmt.setInt(3, 0);
			pstmt.execute();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return n;
	}
	public int UpdateEmp(EmpVO vo) {
		int n = 0;
		
		try {
			Connection conn = JDBCUtil.getConn();
			PreparedStatement pstmt = null;
			String sql = "UPDATE employee_tbl SET empname = ?, rank = ?, dept = ? where empno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getEmpname());
			pstmt.setString(2, vo.getRank());
			pstmt.setString(3, vo.getDept());
			pstmt.setInt(4, vo.getEmpno());
			
			n = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return n;
	}
}
