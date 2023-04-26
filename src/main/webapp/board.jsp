<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시판</title>
</head>
<body>
	<h1>게시판</h1>

	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<!-- 게시글 목록을 출력하는 부분 -->
		<!-- <% List<BoardDTO> list = boardDAO.getList(); %>
		<% for (BoardDTO board : list) { %>
		<tr>
			<td><%= board.getId() %></td>
			<td><a href="view.jsp?id=<%= board.getId() %>"><%= board.getTitle() %></a></td>
			<td><%= board.getWriter() %></td>
			<td><%= board.getRegdate() %></td>
		</tr>
		<% } %> -->
	</table>

	<br>

	<!-- 게시글 추가 버튼 -->
	<a href="write.jsp">게시글 추가</a>
</body>
</html>
