<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>
</head>
<body>
    <%-- 데이터베이스에 접속하여 회원 정보를 저장하는 코드 --%>
    <%@ page import="org.example.MemberDAO" %>
    <%@ page import="org.example.MemberDTO" %>

    <% request.setCharacterEncoding("UTF-8"); %>
    <%
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String email = request.getParameter("email");

        // 입력된 회원 정보를 DTO 객체에 저장
        MemberDTO member = new MemberDTO();
        member.setId(id);
        member.setPassword(password);
        member.setName(name);
        member.setEmail(email);

        // MemberDAO 객체 생성 및 회원 정보 저장
        MemberDAO memberDAO = new MemberDAO();
        memberDAO.insert(member);
    %>

    <h1>회원가입이 완료되었습니다.</h1>
    <p>ID: <%= id %></p>
    <p>Name: <%= name %></p>
    <p>Email: <%= email %></p>
</body>
</html>
