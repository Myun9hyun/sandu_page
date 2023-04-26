package org.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws Exception {
        Scanner scanner = new Scanner(System.in);
        MemberDAO dao = new MemberDAO();
        MemberDTO member = new MemberDTO();

        System.out.print("아이디를 입력하세요: ");
        member.setId(scanner.next());

        System.out.print("비밀번호를 입력하세요: ");
        member.setPassword(scanner.next());

        System.out.print("이름을 입력하세요: ");
        member.setName(scanner.next());

        System.out.print("이메일을 입력하세요: ");
        member.setEmail(scanner.next());

        dao.insert(member);

        System.out.println("회원가입이 완료되었습니다.");
    }

    public static class CommentDAO {
        private Connection conn = null;
        private PreparedStatement pstmt = null;
        private ResultSet rs = null;

        private static final String DRIVER = "com.mysql.jdbc.Driver";
        private static final String URL = "jdbc:mysql://localhost:3306/DB명";
        private static final String USERNAME = "유저이름";
        private static final String PASSWORD = "비밀번호";

        public void connect() throws Exception {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }

        public void disconnect() throws Exception {
            if(rs != null) {
                rs.close();
            }
            if(pstmt != null) {
                pstmt.close();
            }
            if(conn != null) {
                conn.close();
            }
        }

        public void insert(CommentDTO comment) throws Exception {
            String sql = "INSERT INTO COMMENT VALUES (?, ?, ?)";
            connect();
            pstmt = conn.prepareStatement(sql);
            pstmt.setInt(1, comment.getBoardId());
            pstmt.setString(2, comment.getWriter());
            pstmt.setString(3, comment.getContent());
            pstmt.executeUpdate();
            disconnect();
        }
    }

    public static class BoardDAO {
        private Connection conn = null;
        private PreparedStatement pstmt = null;
        private ResultSet rs = null;
        private static final String DRIVER = "com.mysql.jdbc.Driver";
        private static final String URL = "jdbc:mysql://localhost:3306/DB명";
        private static final String USERNAME = "유저이름";
        private static final String PASSWORD = "비밀번호";

        public void connect() throws Exception {
            Class.forName(DRIVER);
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        }

        public void disconnect() throws Exception {
            if (rs != null) {
                rs.close();
            }
            if (pstmt != null) {
                pstmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        public void insert(BoardDTO board) throws Exception {
            String sql = "INSERT INTO BOARD VALUES (null, ?, ?, ?, ?)";
            connect();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, board.getTitle());
            pstmt.setString(2, board.getWriter());
            pstmt.setString(3, board.getContent());
            pstmt.setTimestamp(4, board.getRegdate());
            pstmt.executeUpdate();
            disconnect();
        }
    }
}
