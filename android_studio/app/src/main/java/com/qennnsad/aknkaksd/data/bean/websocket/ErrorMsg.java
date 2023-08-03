package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class ErrorMsg {
    private String bad_content;
    private String content;
    private String room_id;
    private String type;

    public String getBad_content() {
        return this.bad_content;
    }

    public String getContent() {
        return this.content;
    }

    public String getRoom_id() {
        return this.room_id;
    }

    public String getType() {
        return this.type;
    }

    public void setBad_content(String str) {
        this.bad_content = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setRoom_id(String str) {
        this.room_id = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "ErrorMsg{type='" + this.type + "', content='" + this.content + "', room_id='" + this.room_id + "', bad_content='" + this.bad_content + "'}";
    }
}
