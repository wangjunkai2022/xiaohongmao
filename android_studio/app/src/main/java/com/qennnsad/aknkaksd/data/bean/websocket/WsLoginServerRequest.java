package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class WsLoginServerRequest implements WsRequest {
    @SerializedName("device_id")
    private String device_id;
    @SerializedName("issued")
    private String issued;
    @SerializedName("lob")
    private Integer lob;
    @SerializedName("_method_")
    private String method;
    @SerializedName("plat")
    private String plat = "android";
    @SerializedName("rid")
    private Integer rid;
    @SerializedName("jwt_token")
    private String token;
    @SerializedName("user_id")
    private String userId;
    @SerializedName("ver")
    private String ver;

    public String getDeviceId() {
        return this.device_id;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getIssued() {
        return this.issued;
    }

    public Integer getLob() {
        return this.lob;
    }

    public String getMethod() {
        return this.method;
    }

    public String getPlat() {
        return this.plat;
    }

    public Integer getRid() {
        return this.rid;
    }

    public String getToken() {
        return this.token;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getVer() {
        return this.ver;
    }

    public void setDeviceId(String str) {
        this.device_id = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setIssued(String str) {
        this.issued = str;
    }

    public void setLob(Integer num) {
        this.lob = num;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setPlat(String str) {
        this.plat = str;
    }

    public void setRid(Integer num) {
        this.rid = num;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setVer(String str) {
        this.ver = str;
    }
}
