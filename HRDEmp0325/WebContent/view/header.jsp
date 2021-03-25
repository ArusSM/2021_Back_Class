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
		list-style: none;
		text-decoration: none;
		color: #333;
	}
	h3 {
		text-align:center;
	}
	footer {
		position:absolute;
		bottom: 0px;
		width:100%;
		line-height: 40px;
	}
	
	footer > p {
	text-align: center;
	}
	nav {
		height: 40px;
		background-color: fuchsia;
		line-height: 40px;
	}
	nav > ul {
		display: flex;
		justify-content: space-around;
	}	
	table {
		margin: 0 auto;
	}
</style>
<body>
<h3>사원 관리 프로그램</h3>

<nav>
	<ul>
		<li><a href="/main.jsp">홈으로</a></li>
		<li><a href="/insertPage.jsp">사원등록</a></li>
		<li><a href="/SaleList.jsp">사원급여 조회</a></li>
		<li><a href="/empList.jsp">사원목록 조회/수정</a></li>
	</ul>
</nav>

