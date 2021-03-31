<%@page import="vo.LecturerVO"%>
<%@page import="dao.CourseDAO"%>
<%@page import="vo.CourseVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>
	<%
	LecturerVO vo = new LecturerVO();
	
	String idx = request.getParameter("idx");
	
	
	CourseDAO dao = new CourseDAO();
	
	dao.deleteL(idx);
	
	%>
	
	<script>
	location.href="/lecListPage.jsp";
	</script>
<jsp:include page="/view/footer.jsp"/>