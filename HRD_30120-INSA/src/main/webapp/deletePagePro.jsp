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
	
	String name = request.getParameter("name");
	String id = request.getParameter("id");

	int i = 0;
	i = dao.perDelete(id, name);
	
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
		alert("삭제 성공");
		location.href = "main.jsp";
	</script>
</body>
</html>