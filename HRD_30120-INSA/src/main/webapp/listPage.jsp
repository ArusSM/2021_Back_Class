<%@page import="vo.PersonnelVO"%>
<%@page import="java.util.ArrayList"%>
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
		String select = request.getParameter("select");
		String wantid = request.getParameter("wantid");
		String selectDept = request.getParameter("selectDept");
		PersonnelDAO dao = new PersonnelDAO();
		int i = 0;
		ArrayList<PersonnelVO> list = new ArrayList<PersonnelVO>();
		
		PersonnelVO vo = new PersonnelVO();
		if(select.equals("1")) {
			list = dao.idList(wantid);
			%>
			<!--  -->
			
		<table border="1">
			<tr>
				<th>성명</th>
				<th>사번</th>
				<th>직급</th>
				<th>직책</th>
				<th>연락처</th>
				<th>소속부서</th>
			</tr>
			<%
				while(list.size() != i) {
					vo = list.get(i);
					%>
			<tr>
				<th><%=vo.getName() %></th>
				<th><%=vo.getId() %></th>
				<th><%=vo.getPosition()%></th>
				<th><%=vo.getDuty() %></th>
				<th><%=vo.getPhone() %></th>
				<th><%=vo.getDept() %></th>
			</tr>
					<%
					i++;
				}
			%>
		</table>
			<%
		} else {
			list = dao.deptList(selectDept);
			%>
			<!--  -->
			<table border="1">
			<tr>
				<th>성명</th>
				<th>사번</th>
				<th>직급</th>
				<th>직책</th>
				<th>연락처</th>
				<th>소속부서</th>
			</tr>
			<%
				while(list.size() != i) {
					vo = list.get(i);
					%>
			<tr>
				<th><%=vo.getName() %></th>
				<th><%=vo.getId() %></th>
				<th><%=vo.getPosition()%></th>
				<th><%=vo.getDuty() %></th>
				<th><%=vo.getPhone() %></th>
				<th><%=vo.getDept() %></th>
			</tr>
					<%
					i++;
				}
			%>
		</table>
			<%
		}
	%>
	<a href="/listSelectPage.jsp"><button>확인</button></a>
</body>
</html>