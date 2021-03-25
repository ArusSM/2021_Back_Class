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
	String sql = "select * from employee_tbl where empno = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, Integer.parseInt(request.getParameter("empno")));
	rs = pstmt.executeQuery();
	if(rs.next()){
%>
<form action="/updatePro.jsp">
	<table border="1">
		<tr>
			<th>사원번호</th>
			<th><input type="text" name="empno" value="<%=rs.getInt("empno")%>"
					readonly></th>
		</tr>
		<tr>
			<th>사원이름</th>
			<th><input type="text" name="empname" value="<%=rs.getString("empname")%>"></th>
		</tr>
		<tr>
			<th>입사일자</th>
			<th><input type="text" name="joindate" value="<%=rs.getDate("joindate")%>" readonly></th>
		</tr>
		<tr>
			<th>직급</th>
			<th>
			<select name="rank">
				<option value="A" selected>사원</option>
				<option value="B">대리</option>
				<option value="C">과장</option>
			</select></th>
		</tr>
		<tr>
			<th>부서</th>
			<th>
			<input type="text" name="dept" value="<%=rs.getString("dept")%>">
			</th>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="수정하기"></th>
		</tr>
		
	</table>
</form>
<%} %>
<jsp:include page="/view/footer.jsp"/>