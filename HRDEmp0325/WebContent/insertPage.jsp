<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>

<%
	Date nowdate;
	int maxno = 0;
	nowdate = Date.valueOf(LocalDate.now());
	
	Connection conn = JDBCUtil.getConn();
	PreparedStatement pstmt = null;
	ResultSet rs;
	String sql = "select max(empno) id from employee_tbl";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery(sql);
	if (rs.next()) {
		maxno = rs.getInt("id") + 1;
	}
%>
<form action="/insertPro.jsp">
	<table border="1">
		<tr>
			<th>사원번호</th>
			<th><input type="text" name="empno" value="<%=maxno%>"
					readonly required></th>
		</tr>
		<tr>
			<th>사원이름</th>
			<th><input type="text" name="empname" required></th>
		</tr>
		<tr>
			<th>입사일자</th>
			<th><input type="text" name="joindate" value="<%=nowdate%>" readonly required></th>
		</tr>
		<tr>
			<th>직급</th>
			<th>
			<select name="rank">
				<option value="A">사원</option>
				<option value="B">대리</option>
				<option value="C">과장</option>
			</select></th>
		</tr>
		<tr>
			<th>부서</th>
			<th>
			<select name="dept">
				<option value="A">디자인</option>
				<option value="B">백엔드</option>
				<option value="C">프론트</option>
			</select></th>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="등록하기"></th>
		</tr>
		
	</table>
</form>
<jsp:include page="/view/footer.jsp"/>