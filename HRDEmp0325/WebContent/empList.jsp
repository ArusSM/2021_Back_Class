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
	String sql = "select * from employee_tbl order by empno";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
	String Rrank = null;
	String Rdept = null;
	
	%>
	
	<table border="1">
		<tr>
			<th>사원번호</th>
			<th>사원이름</th>
			<th>입사일자</th>
			<th>직급</th>
			<th>부서</th>
			<th>기능</th>
		</tr>
		
		<%while(rs.next()) { 
			Rrank = rs.getString("rank");
			if(Rrank.equals("A")) {
				Rrank = "사원";
			} else if(Rrank.equals("B")) {
				Rrank = "대리";
			} else {
				Rrank = "과장";
			}
			Rdept = rs.getString("dept");
			if(Rdept.equals("A")) {
				Rdept = "사원";
			} else if(Rrank.equals("B")) {
				Rdept = "대리";
			} else {
				Rdept = "과장";
			}
		%>
		<tr>
		<th><%=rs.getInt("empno")%></th>
		<th><%=rs.getString("empname")%></th>
		<th><%=rs.getDate("joindate")%></th>
		
		<th><%=Rrank%></th>
		<th><%=Rdept%></th>
		<th><a href="/updatePage.jsp?empno=<%=rs.getInt("empno")%>"><Button>수정</Button></a></th>
		</tr>
			
		<%} %>
	</table>
<jsp:include page="/view/footer.jsp"/>