package org.example;

import java.sql.Timestamp;

public class BoardDTO {
    private int id;
    private String title;
    private String writer;
    private String content;
    private Timestamp regdate;

    public BoardDTO() {}

    public BoardDTO(int id, String title, String writer, String content, Timestamp regdate) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.content = content;
        this.regdate = regdate;
    }

    // getter, setter 메서드
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }
    public String getWriter() { return writer; }
    public void setWriter(String writer) { this.writer = writer; }
    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }
    public Timestamp getRegdate() { return regdate; }
    public void setRegdate(Timestamp regdate) { this.regdate = regdate; }
}
