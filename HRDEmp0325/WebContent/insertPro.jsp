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

	Date datee = Date.valueOf(request.getParameter("joindate"));
	System.out.println(datee);
	vo.setEmpno(Integer.parseInt(request.getParameter("empno")));
	vo.setEmpname(request.getParameter("empname"));
	vo.setJoindate(Date.valueOf(request.getParameter("joindate")));
	vo.setRank(request.getParameter("rank"));
	vo.setDept(request.getParameter("dept"));
	
	EmpDAO dao = new EmpDAO();
	
	dao.insertEmp(vo);
	response.sendRedirect("/main.jsp");
%>
</body>
</html>