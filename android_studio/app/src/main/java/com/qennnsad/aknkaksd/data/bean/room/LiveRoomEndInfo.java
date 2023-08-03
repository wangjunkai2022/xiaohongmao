package com.qennnsad.aknkaksd.data.bean.room;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class LiveRoomEndInfo {
    @SerializedName("client")
    private String audienceCount;
    private String avatar;
    @SerializedName("coin")
    private String coinIncome;
    private String nickname;

    public String getAudienceCount() {
        return this.audienceCount;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getCoinIncome() {
        return this.coinIncome;
    }

    public String getNickname() {
        return this.nickname;
    }

    public void setAudienceCount(String str) {
        this.audienceCount = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCoinIncome(String str) {
        this.coinIncome = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public String toString() {
        return "LiveRoomEndInfo{audienceCount='" + this.audienceCount + "', coinIncome='" + this.coinIncome + "', avatar='" + this.avatar + "', nickname='" + this.nickname + "'}";
    }
}
