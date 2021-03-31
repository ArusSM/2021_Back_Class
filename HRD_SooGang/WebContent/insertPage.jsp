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

<form action="insertPagePro.jsp">
<table border="1">
  <tr>
    <th>교과목 코드</th>
    <th><input type="text" name="id" required></th>
  </tr>
  <tr>
    <th>과목명</th>
    <th><input type="text" name="name" required></th>
  </tr>
  <tr>
    <th>담당강사선택</th>
    <th>
    	<select name="lecturer">
    	<%
    		while(rs.next()) {
    	%>
    		 <option value="<%=cnt%>"><%=rs.getString("name")%></option>
    	<%
    		cnt++;
    		}
    		 %>
    	</select>
    </th>
  </tr>
  <tr>
    <th>학점</th>
    <th><input type="text" name="credit" required></th>
  </tr>
  <tr>
    <th>요일</th>
    <th>
    <input type="radio" name="week" value="1" checked="checked">월
    <input type="radio" name="week" value="2">화
    <input type="radio" name="week" value="3">수
    <input type="radio" name="week" value="4">목
    <input type="radio" name="week" value="5">금
    <input type="radio" name="week" value="6">토
    </th>
  </tr>
  <tr>
    <th>시작</th>
    <th><input type="text" name="start_hour" required></th>
  </tr>
  <tr>
    <th>종료</th>
    <th><input type="text" name="end_end" required></th>
  </tr>
  <tr>
    <th colspan="2">
    <a href="/listPage.jsp"><button>목록</button></a>
    <input type="submit" value="등록">
    </th>
  </tr>
</table>
</form>



<jsp:include page="/view/footer.jsp"/>