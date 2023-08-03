package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class WsExitMsg {
    private String message;

    public WsExitMsg() {
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public String toString() {
        return "WsExitMsg{message='" + this.message + "'}";
    }

    public WsExitMsg(String str) {
        this.message = str;
    }
}
