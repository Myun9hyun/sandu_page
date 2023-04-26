<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.BoardDTO" %>
<%@ page import="org.example.BoardDAO"%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 작성 처리</title>
</head>
<body>
	<%
		// 요청 파라미터 값을 읽어옴
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");

		// 입력된 게시글 정보를 DTO 객체에 저장
		BoardDTO board = new BoardDTO();
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);

		// BoardDAO 객체 생성 및 게시글 정보 저장
		BoardDAO boardDAO = new BoardDAO();
		boardDAO.insert(board);
	%>

	<h1>게시글이 등록되었습니다.</h1>
	<p>제목: <%= title %></p>
	<p>작성자: <%= writer %></p>
	<p>내용: <%= content %></p>
</body>
</html>
