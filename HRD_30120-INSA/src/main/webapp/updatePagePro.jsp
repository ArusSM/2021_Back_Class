<%@page import="vo.PersonnelVO"%>
<%@page import="dao.PersonnelDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp"/>
	<%
	PersonnelDAO dao = new PersonnelDAO();
	
	PersonnelVO vo = new PersonnelVO();
	
	vo.setName(request.getParameter("name"));
	vo.setDept(request.getParameter("dept"));
	vo.setDuty(request.getParameter("duty"));
	vo.setId(request.getParameter("id"));
	vo.setPhone(request.getParameter("phone"));
	vo.setPosition(request.getParameter("position"));
	
	int i = 0;
	i = dao.perUpdate(vo);
	
	if(i < 1) {
		%>
		<script>
		alert("없는 아이디 입니다.");
		location.href = "main.jsp";
		</script>
		<%		
	}
	%>
	<script>
		alert("수정 성공");
		location.href = "main.jsp";
	</script>
<jsp:include page="/footer.jsp"/>