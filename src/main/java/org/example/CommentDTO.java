package org.example;

import java.sql.Timestamp;

public class CommentDTO {
    private int id;
    private int boardId;
    private String writer;
    private String content;
    private Timestamp regdate;

    public CommentDTO() {}

    public CommentDTO(int id, int boardId, String writer, String content, Timestamp regdate) {
        this.id = id;
        this.boardId = boardId;
        this.writer = writer;
        this.content = content;
        this.regdate = regdate;
    }

    // getter, setter 메서드
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public int getBoardId() { return boardId; }
    public void setBoardId(int boardId) { this.boardId = boardId; }
    public String getWriter() { return writer; }
    public void setWriter(String writer) { this.writer = writer; }
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    public Timestamp getRegdate() { return regdate; }
    public void setRegdate(Timestamp regdate) { this.regdate = regdate; }
}
