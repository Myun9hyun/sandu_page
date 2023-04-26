<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.example.dao.CommentDAO" %>
<%@ page import="org.example.dao.CommentDTO" %>
<%@ page import="org.example.BoardDAO"%>


<%
    // 파라미터에서 게시글 id 가져오기
    int boardId = Integer.parseInt(request.getParameter("boardId"));

    // 파라미터에서 댓글 작성자, 내용 가져오기
    String writer = request.getParameter("writer");
    String content = request.getParameter("content");

    // CommentDAO 객체 생성
    CommentDAO commentDAO = new CommentDAO();

    // 댓글 추가
    CommentDTO comment = new CommentDTO();
    comment.setBoardId(boardId);
    comment.setWriter(writer);
    comment.setContent(content);
    commentDAO.insert(comment);

    // 게시글 상세보기 페이지로 이동
    response.sendRedirect("view.jsp?id=" + boardId);
%>
