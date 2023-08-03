package com.qennnsad.aknkaksd.data.bean.websocket;

import com.qennnsad.aknkaksd.data.bean.UrlTarget;

/* loaded from: classes3.dex */
public class RoomAdBean {
    private UrlTarget target;
    private String title;
    private String url;

    public UrlTarget getTarget() {
        return this.target;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public void setTarget(UrlTarget urlTarget) {
        this.target = urlTarget;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "RoomAdBean{title='" + this.title + "', url='" + this.url + "', target='" + this.target + "'}";
    }
}
