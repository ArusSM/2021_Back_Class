<%@page import="dao.CourseDAO"%>
<%@page import="vo.CourseVO"%>
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
CourseVO vo = new CourseVO();
CourseDAO dao = new CourseDAO();
String id = request.getParameter("id");
vo = dao.selectC(id);
int cnt = 1;
try {
	String sql = "select * from lecturer_tbl";
	pstmt = conn.prepareStatement(sql);
	rs = pstmt.executeQuery();
} catch (SQLException e) {
	e.printStackTrace();
}

%>

<form action="updatePagePro.jsp">
<table border="1">
  <tr>
    <th>교과목 코드</th>
    <th><input type="text" name="id" required value="<%=id%>"></th>
  </tr>
  <tr>
    <th>과목명</th>
    <th><input type="text" name="name" required value="<%=vo.getName()%>"></th>
  </tr>
  <tr>
    <th>담당강사선택</th>
    <th>
    	<select name="lecturer">
    	<%
    		while(rs.next()) {
    	%>
    		 <option value="<%=cnt%>"  <%if(Integer.parseInt(vo.getLecturer())  == rs.getInt("idx")) {%> selected="selected" <%} %>><%=rs.getString("name")%></option>
    	<%
    		cnt++;
    		}
    		 %>
    	</select>
    </th>
  </tr>
  <tr>
    <th>학점</th>
    <th><input type="text" name="credit" required value="<%=vo.getCredit()%>"></th>
  </tr>
  <tr>
    <th>요일</th>
    <th>
    <input type="radio" name="week" value="1" <%if(vo.getWeek() == 1) {%> checked="checked" <%} %>>월
    <input type="radio" name="week" value="2" <%if(vo.getWeek() == 2) {%> checked="checked" <%} %>>화
    <input type="radio" name="week" value="3"  <%if(vo.getWeek() == 3) {%> checked="checked" <%} %>>수
    <input type="radio" name="week" value="4" <%if(vo.getWeek() == 4) {%> checked="checked" <%} %>>목
    <input type="radio" name="week" value="5" <%if(vo.getWeek() == 5) {%> checked="checked" <%} %>>금
    <input type="radio" name="week" value="6" <%if(vo.getWeek() == 6) {%> checked="checked" <%} %>>토
    </th>
  </tr>
  <tr>
    <th>시작</th>
    <th><input type="text" name="start_hour" required value="<%=vo.getStart_hour()%>"></th>
  </tr>
  <tr>
    <th>종료</th>
    <th><input type="text" name="end_end" required value="<%=vo.getEnd_end()%>"></th>
  </tr>
  <tr>
    <th colspan="2">
    <a href="#"><button>목록</button></a>
    <input type="reset" value="취소">
    <input type="submit" value="수정">
    </th>
  </tr>
</table>
</form>



<jsp:include page="/view/footer.jsp"/>