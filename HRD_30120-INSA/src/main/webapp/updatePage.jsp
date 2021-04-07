<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp"/>
	<form action="/updatePagePro.jsp">
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
				<th>소속부서 : </th>
				<th><select name="dept">
					<option value="인사부">인사부</option>
					<option value="기획부">기획부</option>
					<option value="홍보부">홍보부</option>
					<option value="영업부">영업부</option>
					<option value="경리부">경리부</option>
				</select></th>
			</tr>
			<tr>
				<th>직 급 : </th>
				<th><select name="position">
					<option value="1">1급</option>
					<option value="2">2급</option>
					<option value="3">3급</option>
					<option value="4">4급</option>
					<option value="5">5급</option>
				</select></th>
			</tr>
			<tr>
				<th>직 책 : </th>
				<th><input type="text" name="duty" required></th>
			</tr>
			<tr>
				<th>연락처 : </th>
				<th><input type="text" name="phone" required></th>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="수정">
				</th>
			</tr>
		</table>
	</form>
<jsp:include page="/footer.jsp"/>