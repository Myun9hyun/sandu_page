<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.BoardDTO" %>



<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 작성</title>
</head>
<body>
	<h1>게시글 작성</h1>
	<form action="write_process.jsp" method="post">
		<label for="title">제목:</label>
		<input type="text" id="title" name="title"><br>

		<label for="writer">작성자:</label>
		<input type="text" id="writer" name="writer"><br>

		<label for="content">내용:</label><br>
		<textarea id="content" name="content"></textarea><br>

		<input type="submit" value="작성">
	</form>
</body>
</html>
