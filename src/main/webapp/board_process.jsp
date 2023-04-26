<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="org.example.dao.BoardDTO, org.example.dao.BoardDAO" %>
<%
	// request에서 전송된 데이터 받아오기
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");

	// BoardDTO 객체에 데이터 설정하기
	BoardDTO board = new BoardDTO();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);

	// BoardDAO 객체 생성 및 데이터 저장
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.insert(board);

	// 게시글 목록 페이지로 이동
	response.sendRedirect("board.jsp");
%>
