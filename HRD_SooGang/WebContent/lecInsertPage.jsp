<%@page import="java.sql.SQLException"%>
<%@page import="common.JDBCUtil"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>

<%
Connection conn = JDBCUtil.getConnection();
PreparedStatement pstmt = null;
ResultSet rs = null;
int cnt = 1;
try {
	String sql = "select name from lecturer_tbl";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
} catch (SQLException e) {
	e.printStackTrace();
}

%>

<form action="lecInsertPagePro.jsp">
<table border="1">
  <tr>
    <th>강사번호</th>
    <th><input type="text" name="idx" required></th>
  </tr>
  <tr>
    <th>강사명</th>
    <th><input type="text" name="name" required></th>
  </tr>
  <tr>
    <th>전공</th>
    <th><input type="text" name="major" required></th>
  </tr>
  <tr>
    <th>연구분야</th>
    <th><input type="text" name="field" required></th>
  </tr>
  <tr>
    <th colspan="2">
    <a href="/lecListPage.jsp"><button>목록</button></a>
    <input type="submit" value="등록">
    </th>
  </tr>
</table>
</form>



<jsp:include page="/view/footer.jsp"/>