<%@page import="vo.LecturerVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.ListVO"%>
<%@page import="dao.CourseDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>
<%
	CourseDAO dao = new CourseDAO();
	LecturerVO vo = new LecturerVO();
	ArrayList<LecturerVO> list = new ArrayList<LecturerVO>();
	list = dao.getLecList();
	
%>

<table border="1">
	<tr>
		<th>과목코드</th>
		<th>과목명</th>
		<th>학점</th>
		<th>담당강사</th>
		<th>관리</th>
	</tr>
	<%for(int i = 0; i < list.size(); i++ ) { 
	vo = list.get(i);
	%>
	<tr>
		<th><%=vo.getIdx()%></th>
		<th><%=vo.getName() %></th>
		<th><%=vo.getMajor() %></th>
		<th><%=vo.getField() %></th>
		<th><a href="/lecDeletePage.jsp?idx=<%=vo.getIdx()%>">삭제</a></th>
	</tr>
	<%
	} %>
</table>
<jsp:include page="/view/footer.jsp"/>