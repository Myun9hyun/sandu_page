<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="join_process.jsp" method="post">
		<label for="id">아이디:</label>
		<input type="text" id="id" name="id"><br>

		<label for="password">비밀번호:</label>
		<input type="password" id="password" name="password"><br>

		<label for="name">이름:</label>
		<input type="text" id="name" name="name"><br>

		<label for="email">이메일:</label>
		<input type="text" id="email" name="email"><br>

		<input type="submit" value="가입">
	</form>
</body>
</html>
