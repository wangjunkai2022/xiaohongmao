package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class WsPublicMsgRequest implements WsRequest {
    private String checksum;
    @SerializedName("client_name")
    private String clientName;
    private String content;
    @SerializedName("_method_")
    private String method;

    public String getChecksum() {
        return this.checksum;
    }

    public String getClientName() {
        return this.clientName;
    }

    public String getContent() {
        return this.content;
    }

    public String getMethod() {
        return this.method;
    }

    public void setChecksum(String str) {
        this.checksum = str;
    }

    public void setClientName(String str) {
        this.clientName = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setMethod(String str) {
        this.method = str;
    }
}
