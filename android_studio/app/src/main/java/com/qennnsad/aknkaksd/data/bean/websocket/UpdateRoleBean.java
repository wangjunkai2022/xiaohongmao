package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class UpdateRoleBean implements RoomPublicMsg {
    private String content;
    private RoomRole role;
    private String room_id;
    private String type;

    public String getContent() {
        return this.content;
    }

    public RoomRole getRole() {
        return this.role;
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

    public void setRole(RoomRole roomRole) {
        this.role = roomRole;
    }

    public void setRoom_id(String str) {
        this.room_id = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "UpdateRoleBean{type='" + this.type + "', room_id='" + this.room_id + "', role='" + this.role + "', content='" + this.content + "'}";
    }
}
