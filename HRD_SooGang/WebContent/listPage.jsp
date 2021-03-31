<%@page import="java.util.ArrayList"%>
<%@page import="vo.ListVO"%>
<%@page import="dao.CourseDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>
<%
	CourseDAO dao = new CourseDAO();
	ListVO vo = new ListVO();
	ArrayList<ListVO> list = new ArrayList<ListVO>();
	list = dao.getList();
	
%>

<table border="1">
	<tr>
		<th>과목코드</th>
		<th>과목명</th>
		<th>학점</th>
		<th>담당강사</th>
		<th>요일</th>
		<th>시작시간</th>
		<th>종료시간</th>
		<th>관리</th>
	</tr>
	<%for(int i = 0; i < list.size(); i++ ) { 
	vo = list.get(i);
	%>
	<tr>
		<th><%=vo.getId()%></th>
		<th><%=vo.getName() %></th>
		<th><%=vo.getCredit() %></th>
		<th><%=vo.getLecname() %></th>
		<th><%=vo.getWeek() %></th>
		<th><%=vo.getStart_hour() %></th>
		<th><%=vo.getEnd_end() %></th>
		<th><a href="/updatePage.jsp?id=<%=vo.getId()%>">수정</a>/<a href="/deletePage.jsp?id=<%=vo.getId()%>">삭제</a></th>
	</tr>
	<%
	} %>
</table>
<jsp:include page="/view/footer.jsp"/>