package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class BlockMsg implements RoomPublicMsg {
    private int duration;
    private String message;
    private String room_id;
    private String type;

    public int getDuration() {
        return this.duration;
    }

    public String getMessage() {
        return this.message;
    }

    public String getRoom_id() {
        return this.room_id;
    }

    public String getType() {
        return this.type;
    }

    public void setDuration(int i4) {
        this.duration = i4;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setRoom_id(String str) {
        this.room_id = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "BlockMsg{type='" + this.type + "', room_id='" + this.room_id + "', duration=" + this.duration + ", message='" + this.message + "'}";
    }
}
