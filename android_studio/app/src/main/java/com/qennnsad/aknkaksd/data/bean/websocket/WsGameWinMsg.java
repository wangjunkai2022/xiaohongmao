package com.qennnsad.aknkaksd.data.bean.websocket;

import java.io.Serializable;

/* loaded from: classes3.dex */
public class WsGameWinMsg implements Serializable {
    private String avatar;
    private String client_name;
    private String content;
    private String type;
    private String win_money;

    public String getAvatar() {
        return this.avatar;
    }

    public String getClient_name() {
        return this.client_name;
    }

    public String getContent() {
        return this.content;
    }

    public String getType() {
        return this.type;
    }

    public String getWin_money() {
        return this.win_money;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setClient_name(String str) {
        this.client_name = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setWin_money(String str) {
        this.win_money = str;
    }
}
