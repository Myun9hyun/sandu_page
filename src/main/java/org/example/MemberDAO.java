package org.example;

import java.sql.*;

public class MemberDAO {
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

    public void insert(MemberDTO member) throws Exception {
        String sql = "INSERT INTO MEMBER VALUES (?, ?, ?, ?)";
        connect();
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, member.getId());
        pstmt.setString(2, member.getPassword());
        pstmt.setString(3, member.getName());
        pstmt.setString(4, member.getEmail());
        pstmt.executeUpdate();
        disconnect();
    }
}
