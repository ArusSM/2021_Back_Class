<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	* {
		color: #333;
		text-decoration: none;
		padding: 0;
		margin: 0;
	}
	
	.title {
		text-align: center;
	}
	
	nav {
		height: 40px;
		background-color: aqua;
		display: flex;
		justify-content: space-around;
		line-height: 40px;
	}
	
	footer{
		width: 100%;
		position: absolute;
		bottom: 0px;
		text-align: center;
		line-height: 40px;
		background-color: aqua;
	}
	table {
		margin: 0 auto;
		border: 1px solid black;
	}
	
</style>
<body>
<nav>
<a href="/mainPage.jsp">메인페이지</a>
<a href="/insertPage.jsp">교과목등록</a>
<a href="/listPage.jsp">교과신청목록</a>
<a href="/lecInsertPage.jsp">강사등록</a>
<a href="/lecListPage.jsp">강사목록</a>

</nav>
<h3 class="title">수강신청 도우미 사이트</h3>