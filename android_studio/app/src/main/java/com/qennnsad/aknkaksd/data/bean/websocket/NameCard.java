package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class NameCard implements RoomPublicMsg {
    private String content;
    private String room_id;
    private String type;

    public String getContent() {
        return this.content;
    }

    public String getRoom_id() {
        return this.room_id;
    }

    public String getType() {
        return this.type;
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
        return "NameCardBean{type='" + this.type + "', room_id='" + this.room_id + "', content='" + this.content + "'}";
    }
}
