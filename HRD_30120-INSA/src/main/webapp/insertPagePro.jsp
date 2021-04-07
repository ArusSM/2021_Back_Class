<%@page import="vo.PersonnelVO"%>
<%@page import="dao.PersonnelDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	i = dao.perInsert(vo);
	
	if(i < 1) {
		%>
		<script>
		alert("에러가 있습니다.");
		location.href = "main.jsp";
		</script>
		<%		
	}
	%>
	<script>
		alert("추가 성공");
		location.href = "main.jsp";
	</script>
</body>
</html>