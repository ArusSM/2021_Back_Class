<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/header.jsp"/>
<h1>인사관리메인메뉴</h1>
<a href="/listSelectPage.jsp"><button class="btn">조회</button></a>
<a href="#"><button class="btn">사원등록</button></a>
<a href="#"><button class="btn">정보변경</button></a> <br>
<a href="#"><button class="btn">퇴사처리</button></a>
<a href="javascript:self.close()"><button class="btn">종료</button></a>
<jsp:include page="/footer.jsp"/>