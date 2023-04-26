<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.dao.BoardDAO" %>
<%@ page import="org.example.dao.BoardDTO" %>
<%@ page import="org.example.dao.CommentDAO" %>
<%@ page import="org.example.dao.CommentDTO" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시글 상세보기</title>
</head>
<body>
    <h1>게시글 상세보기</h1>

    <%
        // 파라미터에서 게시글 id 가져오기
        int id = Integer.parseInt(request.getParameter("id"));

        // BoardDAO 객체 생성
        BoardDAO boardDAO = new BoardDAO();

        // BoardDTO 객체 가져오기
        BoardDTO board = boardDAO.get(id);

        // CommentDAO 객체 생성
        CommentDAO commentDAO = new CommentDAO();

        // CommentDTO 객체 리스트 가져오기
        List<CommentDTO> commentList = commentDAO.getList(id);
    %>

    <!-- 게시글 정보 출력 -->
    <h2><%= board.getTitle() %></h2>
    <p>작성자: <%= board.getWriter() %></p>
    <p>작성일: <%= board.getRegdate() %></p>
    <p><%= board.getContent() %></p>

    <!-- 댓글 목록 출력 -->
    <h3>댓글</h3>
    <table>
        <tr>
            <th>작성자</th>
            <th>내용</th>
            <th>작성일</th>
        </tr>
        <% for (CommentDTO comment : commentList) { %>
            <tr>
                <td><%= comment.getWriter() %></td>
                <td><%= comment.getContent() %></td>
                <td><%= comment.getRegdate() %></td>
            </tr>
        <% } %>
    </table>

    <!-- 댓글 추가 버튼 -->
    <a href="comment_write.jsp?boardId=<%= board.getId() %>">댓글 추가</a>
</body>
</html>
