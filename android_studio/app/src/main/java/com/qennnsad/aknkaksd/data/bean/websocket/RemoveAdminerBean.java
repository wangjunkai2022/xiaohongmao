package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class RemoveAdminerBean {
    private String levelid;
    private String type;
    private String user_id;
    private int vip;

    public String getLevelid() {
        return this.levelid;
    }

    public String getType() {
        return this.type;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public int getVip() {
        return this.vip;
    }

    public void setLevelid(String str) {
        this.levelid = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public void setVip(int i4) {
        this.vip = i4;
    }

    public String toString() {
        return "RemoveAdminerBean{type='" + this.type + "', user_id='" + this.user_id + "', vip=" + this.vip + ", levelid='" + this.levelid + "'}";
    }
}
