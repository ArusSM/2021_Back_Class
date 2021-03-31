<%@page import="vo.LecturerVO"%>
<%@page import="dao.CourseDAO"%>
<%@page import="vo.CourseVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>
	<%
	LecturerVO vo = new LecturerVO();
	
	vo.setIdx(Integer.parseInt(request.getParameter("idx")));
	vo.setName(request.getParameter("name"));
	vo.setMajor(request.getParameter("major"));
	vo.setField(request.getParameter("field"));
	
	
	CourseDAO dao = new CourseDAO();
	
	dao.insertLecturer(vo);
	
	%>
	
	<script>
	location.href="/lecListPage.jsp";
	</script>
<jsp:include page="/view/footer.jsp"/>