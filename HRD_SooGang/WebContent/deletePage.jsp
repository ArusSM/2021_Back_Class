<%@page import="dao.CourseDAO"%>
<%@page import="vo.CourseVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>
	<%
	CourseVO vo = new CourseVO();
	
	String id = request.getParameter("id");
	
	
	CourseDAO dao = new CourseDAO();
	
	dao.deleteC(id);
	
	%>
	
	<script>
	location.href="/listPage.jsp";
	</script>
<jsp:include page="/view/footer.jsp"/>