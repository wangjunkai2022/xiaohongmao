package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;

/* loaded from: classes3.dex */
public class WsLogoutRequest implements WsRequest {
    private String daoju;
    @SerializedName("levelid")
    private String levelId;
    @SerializedName("levelname")
    private String levelName;
    @SerializedName("_method_")
    private String method;
    @SerializedName(f.f54200b)
    private String roomId;
    @SerializedName("jwt_token")
    private String token;
    private String ucuid;
    @SerializedName("user_id")
    private String userId;
    @SerializedName("user_name")
    private String userName;
    private String play_status = "0";
    private long play_seconds = 0;

    public String getDaoju() {
        return this.daoju;
    }

    public String getLevelId() {
        return this.levelId;
    }

    public String getLevelName() {
        return this.levelName;
    }

    public String getMethod() {
        return this.method;
    }

    public long getPlay_seconds() {
        return this.play_seconds;
    }

    public String getPlay_status() {
        return this.play_status;
    }

    public String getRoomId() {
        return this.roomId;
    }

    public String getToken() {
        return this.token;
    }

    public String getUcuid() {
        return this.ucuid;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserName() {
        return this.userName;
    }

    public void setDaoju(String str) {
        this.daoju = str;
    }

    public void setLevelId(String str) {
        this.levelId = str;
    }

    public void setLevelName(String str) {
        this.levelName = str;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public void setPlay_seconds(long j4) {
        this.play_seconds = j4;
    }

    public void setPlay_status(String str) {
        this.play_status = str;
    }

    public void setRoomId(String str) {
        this.roomId = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUcuid(String str) {
        this.ucuid = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUserName(String str) {
        this.userName = str;
    }
}
