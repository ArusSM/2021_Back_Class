<%@page import="dao.CourseDAO"%>
<%@page import="vo.CourseVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/view/header.jsp"/>
	<%
	CourseVO vo = new CourseVO();
	
	vo.setId(request.getParameter("id"));
	vo.setCredit(Integer.parseInt(request.getParameter("credit")));
	vo.setEnd_end(Integer.parseInt(request.getParameter("end_end")));
	vo.setLecturer(request.getParameter("lecturer"));
	vo.setName(request.getParameter("name"));
	vo.setStart_hour(Integer.parseInt(request.getParameter("start_hour")));
	vo.setWeek(Integer.parseInt(request.getParameter("week")));
	
	
	CourseDAO dao = new CourseDAO();
	
	dao.updatePro(vo);
	
	%>
	
	<script>
	location.href="/listPage.jsp";
	</script>
<jsp:include page="/view/footer.jsp"/>