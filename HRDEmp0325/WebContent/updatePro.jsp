<%@page import="dao.EmpDAO"%>
<%@page import="java.sql.Date"%>
<%@page import="vo.EmpVO"%>
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
	EmpVO vo = new EmpVO();

	vo.setEmpno(Integer.parseInt(request.getParameter("empno")));
	vo.setEmpname(request.getParameter("empname"));
	vo.setRank(request.getParameter("rank"));
	vo.setDept(request.getParameter("dept"));
	
	EmpDAO dao = new EmpDAO();
	
	dao.UpdateEmp(vo);
	response.sendRedirect("/empList.jsp");
	%>
</body>
</html>