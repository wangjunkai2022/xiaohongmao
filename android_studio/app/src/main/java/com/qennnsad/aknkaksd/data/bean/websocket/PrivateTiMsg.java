package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class PrivateTiMsg {
    private String action;
    private String content;
    private int money;
    private String plid;
    private int prerequisite;
    private int ptid;
    private String room_id;
    private int serverTime;
    private String type;

    public String getAction() {
        return this.action;
    }

    public String getContent() {
        return this.content;
    }

    public int getMoney() {
        return this.money;
    }

    public String getPlid() {
        return this.plid;
    }

    public int getPrerequisite() {
        return this.prerequisite;
    }

    public int getPtid() {
        return this.ptid;
    }

    public String getRoom_id() {
        return this.room_id;
    }

    public int getServerTime() {
        return this.serverTime;
    }

    public String getType() {
        return this.type;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setMoney(int i4) {
        this.money = i4;
    }

    public void setPlid(String str) {
        this.plid = str;
    }

    public void setPrerequisite(int i4) {
        this.prerequisite = i4;
    }

    public void setPtid(int i4) {
        this.ptid = i4;
    }

    public void setRoom_id(String str) {
        this.room_id = str;
    }

    public void setServerTime(int i4) {
        this.serverTime = i4;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "PrivateTiMsg{type='" + this.type + "', content='" + this.content + "', serverTime=" + this.serverTime + ", money=" + this.money + ", action='" + this.action + "', plid='" + this.plid + "', ptid=" + this.ptid + ", room_id='" + this.room_id + "', prerequisite=" + this.prerequisite + '}';
    }
}
