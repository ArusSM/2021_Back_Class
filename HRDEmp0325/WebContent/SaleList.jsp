<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBCUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>
	<%
	Connection conn = JDBCUtil.getConn();
	PreparedStatement pstmt = null;
	ResultSet rs;
	String sql = "select e.empname, s.empno, sum(s.pay) as Fpay from salary_tbl s, EMPLOYEE_TBL e where s.empno = e.empno group by s.empno, e.empname order by sum(s.pay) DESC, s.empno";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	
	%>
	<table border="1">
		<tr>
			<th>사원번호</th>
			<th>사원이름</th>
			<th>입사일자</th>
		</tr>
		
		<%while(rs.next()) { %>
		<tr>
		<th><%=rs.getInt("empno")%></th>
		<th><%=rs.getString("empname")%></th>
		<th><%=rs.getInt("Fpay")%></th>
		</tr>
		<%} %>
	</table>
<jsp:include page="/view/footer.jsp"/>