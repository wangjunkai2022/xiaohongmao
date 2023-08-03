package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class SendPrivate implements WsRequest {
    private String _method_;
    private String content;
    private int prerequisite;
    private int ptid;
    private int serverTime;
    private String type;

    public String getContent() {
        return this.content;
    }

    public int getPrerequisite() {
        return this.prerequisite;
    }

    public int getPtid() {
        return this.ptid;
    }

    public int getServerTime() {
        return this.serverTime;
    }

    public String getType() {
        return this.type;
    }

    public String get_method_() {
        return this._method_;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setPrerequisite(int i4) {
        this.prerequisite = i4;
    }

    public void setPtid(int i4) {
        this.ptid = i4;
    }

    public void setServerTime(int i4) {
        this.serverTime = i4;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void set_method_(String str) {
        this._method_ = str;
    }
}
