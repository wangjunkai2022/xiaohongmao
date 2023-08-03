package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class NameCardNews extends RoomMysterableMsg {
    private String fromUserId;
    private String fromUserName;
    private String room_id;
    private String title;
    private String toUserId;
    private String toUserName;
    private String type;

    public String getFromUserId() {
        return this.fromUserId;
    }

    public String getFromUserName() {
        return this.fromUserName;
    }

    public String getRoom_id() {
        return this.room_id;
    }

    public String getTitle() {
        return this.title;
    }

    public String getToUserId() {
        return this.toUserId;
    }

    public String getToUserName() {
        return this.toUserName;
    }

    public String getType() {
        return this.type;
    }

    public void setFromUserId(String str) {
        this.fromUserId = str;
    }

    public void setFromUserName(String str) {
        this.fromUserName = str;
    }

    public void setRoom_id(String str) {
        this.room_id = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setToUserId(String str) {
        this.toUserId = str;
    }

    public void setToUserName(String str) {
        this.toUserName = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "NameCardNews{type='" + this.type + "', room_id='" + this.room_id + "', title='" + this.title + "', fromUserId='" + this.fromUserId + "', fromUserName='" + this.fromUserName + "', toUserId='" + this.toUserId + "', toUserName=" + this.toUserName + ", is_mystery=" + getIsMystery() + '}';
    }
}
