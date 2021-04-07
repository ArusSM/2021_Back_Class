<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp"/>
	<h1>인사관리 조회화면</h1>
	<div>
	<form action="listPage.jsp">
	<table>
		<tr>
			<th><input type="radio" name="select" value="1" checked></th>
			<th>사원번호로 조회</th>
			<th><input type="text" name="wantid"></th>
		</tr>
		<tr>
			<th><input type="radio" name="select" value="2"></th>
			<th>부서명으로 조회</th>
			<th>
				<select name="selectDept">
					<option value="인사부">인사부</option>
					<option value="기획부">기획부</option>
					<option value="홍보부">홍보부</option>
					<option value="영업부">영업부</option>
					<option value="경리부">경리부</option>
				</select>
			</th>
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="조회">
				<input type="button" value="취소" onclick="location.href= 'main.jsp'">
	 		</th>
		</tr>
	</table>
	</form>
	 
	</div>
<jsp:include page="/footer.jsp"/>