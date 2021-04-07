<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp"/>
<h1>인사관리 퇴사처리 화면</h1>
	<form action="/deletePagePro.jsp">
		<table>
			<tr>
				<th>성명 : </th>
				<th><input type="text" name="name" required></th>
			</tr>
			<tr>
				<th>사원번호 : </th>
				<th><input type="text" name="id" required></th>
			</tr>
			<tr>
			<th colspan="2">
				<input type="submit" value="삭제">
				<input type="button" value="취소" onclick="location.href= 'main.jsp'">
	 		</th>
		</tr>
		</table>
	</form>
<jsp:include page="/footer.jsp"/>