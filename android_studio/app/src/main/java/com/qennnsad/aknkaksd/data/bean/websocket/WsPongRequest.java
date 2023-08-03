package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class WsPongRequest implements WsRequest {
    private String device;
    @SerializedName("_method_")
    private String method;

    public String getDevice() {
        return this.device;
    }

    public String getMethod() {
        return this.method;
    }

    public void setDevice(String str) {
        this.device = str;
    }

    public void setMethod(String str) {
        this.method = str;
    }
}
