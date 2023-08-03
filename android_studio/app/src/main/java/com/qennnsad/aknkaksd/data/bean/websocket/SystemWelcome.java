package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class SystemWelcome extends RoomMysterableMsg {
    private String client_id;
    private String client_name;
    private int effect_id;
    private int effect_sound;
    private int from_user_peerage_id = 0;
    private boolean is_vibrate;
    private int levelid;
    private int room_id;
    private String type;

    public String getClient_id() {
        return this.client_id;
    }

    public String getClient_name() {
        return this.client_name;
    }

    public int getEffect_id() {
        return this.effect_id;
    }

    public int getEffect_sound() {
        return this.effect_sound;
    }

    public int getFrom_user_peerage_id() {
        return this.from_user_peerage_id;
    }

    public int getLevelid() {
        return this.levelid;
    }

    public int getRoom_id() {
        return this.room_id;
    }

    public String getType() {
        return this.type;
    }

    public boolean isIs_vibrate() {
        return this.is_vibrate;
    }

    public void setClient_id(String str) {
        this.client_id = str;
    }

    public void setClient_name(String str) {
        this.client_name = str;
    }

    public void setEffect_id(int i4) {
        this.effect_id = i4;
    }

    public void setEffect_sound(int i4) {
        this.effect_sound = i4;
    }

    public void setFrom_user_peerage_id(int i4) {
        this.from_user_peerage_id = i4;
    }

    public void setIs_vibrate(boolean z9) {
        this.is_vibrate = z9;
    }

    public void setLevelid(int i4) {
        this.levelid = i4;
    }

    public void setRoom_id(int i4) {
        this.room_id = i4;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "SystemWelcome{type='" + this.type + "', client_id='" + this.client_id + "', client_name='" + this.client_name + "', levelid=" + this.levelid + ", effect_id=" + this.effect_id + ", is_vibrate=" + this.is_vibrate + ", effect_sound=" + this.effect_sound + ", room_id=" + this.room_id + ", from_user_peerage_id=" + this.from_user_peerage_id + ", is_mystery=" + getIsMystery() + '}';
    }
}
