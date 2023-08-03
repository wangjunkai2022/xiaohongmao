package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;

/* loaded from: classes3.dex */
public class WsLoginRequest implements WsRequest {
    private String avatartime;
    private String daoju;
    @SerializedName("device_id")
    private String device_id;
    @SerializedName("levelid")
    private String levelId;
    @SerializedName("levelname")
    private String levelName;
    @SerializedName("_method_")
    private String method;
    private int prompt_time = 0;
    private int rollmsg_time = 0;
    @SerializedName(f.f54200b)
    private String roomId;
    @SerializedName("jwt_token")
    private String token;
    private String ucuid;
    @SerializedName("user_id")
    private String userId;
    @SerializedName("user_name")
    private String userName;
    private String vip;

    public String getAvatartime() {
        return this.avatartime;
    }

    public String getDaoju() {
        return this.daoju;
    }

    public String getDeviceId() {
        return this.device_id;
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

    public int getPrompt_time() {
        return this.prompt_time;
    }

    public int getRollmsg_time() {
        return this.rollmsg_time;
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

    public String getVip() {
        return this.vip;
    }

    public void setAvatartime(String str) {
        this.avatartime = str;
    }

    public void setDaoju(String str) {
        this.daoju = str;
    }

    public void setDeviceId(String str) {
        this.device_id = str;
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

    public void setPrompt_time(int i4) {
        this.prompt_time = i4;
    }

    public void setRollmsg_time(int i4) {
        this.rollmsg_time = i4;
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

    public void setVip(String str) {
        this.vip = str;
    }
}
