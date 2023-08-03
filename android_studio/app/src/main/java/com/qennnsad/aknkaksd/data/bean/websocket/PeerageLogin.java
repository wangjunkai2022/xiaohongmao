package com.qennnsad.aknkaksd.data.bean.websocket;

import com.qennnsad.aknkaksd.util.o0;

/* loaded from: classes3.dex */
public class PeerageLogin extends RoomMysterableMsg {
    private String avatar;
    private String cache_name;
    private boolean is_vibrate;
    private int level_id;
    private String mount_name;
    private String mount_url;
    private String nick_name;
    private int peerage_id;
    private String peerage_name;
    private String room_id;
    private String type;
    private String user_id;

    public String getAvatar() {
        return this.avatar;
    }

    public String getCache_name() {
        int lastIndexOf = this.mount_url.lastIndexOf("/");
        this.cache_name = this.mount_url.substring(lastIndexOf + 1, this.mount_url.lastIndexOf("."));
        o0.g("getCache_name", "getCache_name:" + this.cache_name);
        return this.cache_name;
    }

    public int getLevel_id() {
        return this.level_id;
    }

    public String getMount_name() {
        return this.mount_name;
    }

    public String getMount_url() {
        return this.mount_url;
    }

    public String getNick_name() {
        return this.nick_name;
    }

    public int getPeerage_id() {
        return this.peerage_id;
    }

    public String getPeerage_name() {
        return this.peerage_name;
    }

    public String getRoom_id() {
        return this.room_id;
    }

    public String getType() {
        return this.type;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public boolean isIs_vibrate() {
        return this.is_vibrate;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setIs_vibrate(boolean z9) {
        this.is_vibrate = z9;
    }

    public void setLevel_id(int i4) {
        this.level_id = i4;
    }

    public void setMount_name(String str) {
        this.mount_name = str;
    }

    public void setMount_url(String str) {
        this.mount_url = str;
    }

    public void setNick_name(String str) {
        this.nick_name = str;
    }

    public void setPeerage_id(int i4) {
        this.peerage_id = i4;
    }

    public void setPeerage_name(String str) {
        this.peerage_name = str;
    }

    public void setRoom_id(String str) {
        this.room_id = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUser_id(String str) {
        this.user_id = str;
    }

    public String toString() {
        return "PeerageLogin{type='" + this.type + "', room_id='" + this.room_id + "', user_id='" + this.user_id + "', nick_name='" + this.nick_name + "', avatar='" + this.avatar + "', level_id=" + this.level_id + ", mount_name='" + this.mount_name + "', mount_url='" + this.mount_url + "', is_vibrate=" + this.is_vibrate + ", cache_name='" + this.cache_name + "', peerage_id=" + this.peerage_id + ", peerage_name='" + this.peerage_name + "', is_mystery=" + getIsMystery() + '}';
    }
}
