package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class WsRoomManageRequest implements WsRequest {
    public static final String ADMINER = "adminer";
    public static final String DISABLEMSG = "disableMsg";
    public static final String MANAGE = "Manage";
    public static final String REMOVERADMINER = "removeAdminer";
    public static final String TYPE_KICK = "addKicked";
    @SerializedName("_method_")
    private String method;
    @SerializedName("managed_user_id")
    private String targetUserId;
    @SerializedName("managed_user_name")
    private String targetUsername;
    @SerializedName("_type_")
    private String type;

    public String getMethod() {
        return this.method;
    }

    public String getTargetUserId() {
        return this.targetUserId;
    }

    public String getTargetUsername() {
        return this.targetUsername;
    }

    public String getType() {
        return this.type;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setTargetUserId(String str) {
        this.targetUserId = str;
    }

    public void setTargetUsername(String str) {
        this.targetUsername = str;
    }

    public void setType(String str) {
        this.type = str;
    }
}
