package com.qennnsad.aknkaksd.data.bean.websocket;

import java.util.List;

/* loaded from: classes3.dex */
public class SystemMsg implements RoomPublicMsg {
    private String content;
    private List<String> rollmsg_content;
    private RoomAdBean room_ad;
    private String room_id;
    private String type;

    public String getContent() {
        return this.content;
    }

    public List<String> getRollmsg_content() {
        return this.rollmsg_content;
    }

    public RoomAdBean getRoom_ad() {
        return this.room_ad;
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

    public void setRollmsg_content(List<String> list) {
        this.rollmsg_content = list;
    }

    public void setRoom_ad(RoomAdBean roomAdBean) {
        this.room_ad = roomAdBean;
    }

    public void setRoom_id(String str) {
        this.room_id = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "SystemMsg{type='" + this.type + "', content='" + this.content + "', room_ad=" + this.room_ad + ", room_id='" + this.room_id + "'}";
    }
}
