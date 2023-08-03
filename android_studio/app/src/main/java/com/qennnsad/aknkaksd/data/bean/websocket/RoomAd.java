package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class RoomAd implements RoomPublicMsg {
    private String title;
    private String url;

    public RoomAd() {
        this.title = "";
        this.url = "";
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "RoomAd{title='" + this.title + "', url='" + this.url + "'}";
    }

    public RoomAd(String str, String str2) {
        this.title = str;
        this.url = str2;
    }
}
