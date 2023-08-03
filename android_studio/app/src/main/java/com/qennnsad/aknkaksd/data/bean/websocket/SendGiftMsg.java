package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.util.o0;

/* loaded from: classes3.dex */
public class SendGiftMsg extends RoomMysterableMsg {
    private String amount;
    private long anchorBalance;
    private String cache_name;
    private int comboHit;
    @SerializedName("effort_duration")
    private int effortDuration;
    @SerializedName("from_client_avatar")
    private String fromUserAvatar;
    @SerializedName("userId")
    private String fromUserId;
    @SerializedName("from_client_name")
    private String fromUserName;
    private String from_user_id;
    private int from_user_peerage_id = 0;
    private int giftCount;
    private String giftIcon;
    private String giftName;
    private String giftSwf;
    private String imageUrl;
    private String isred;
    @SerializedName("levelid")
    private int level;
    private String needface;
    private String redId;
    private int room_id;
    @SerializedName("show_chat_msg")
    private Boolean showChatMsg;

    public String getAmount() {
        return this.amount;
    }

    public long getAnchorBalance() {
        return this.anchorBalance;
    }

    public String getCache_name() {
        int lastIndexOf = this.giftSwf.lastIndexOf("/");
        this.cache_name = this.giftSwf.substring(lastIndexOf + 1, this.giftSwf.lastIndexOf("."));
        o0.g("getCache_name", "getCache_name:" + this.cache_name);
        return this.cache_name;
    }

    public int getComboHit() {
        return this.comboHit;
    }

    public int getEffortDuration() {
        return this.effortDuration;
    }

    public String getFromUserAvatar() {
        return this.fromUserAvatar;
    }

    public String getFromUserId() {
        return this.fromUserId;
    }

    public String getFromUserName() {
        return this.fromUserName;
    }

    public String getFrom_user_id() {
        return this.from_user_id;
    }

    public int getFrom_user_peerage_id() {
        return this.from_user_peerage_id;
    }

    public int getGiftCount() {
        return this.giftCount;
    }

    public String getGiftIcon() {
        return this.giftIcon;
    }

    public String getGiftName() {
        return this.giftName;
    }

    public String getGiftSwf() {
        return this.giftSwf;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public String getIsred() {
        return this.isred;
    }

    public int getLevel() {
        return this.level;
    }

    public String getNeedface() {
        return this.needface;
    }

    public String getRedId() {
        return this.redId;
    }

    public String getRed_Id() {
        return this.redId;
    }

    public int getRoom_id() {
        return this.room_id;
    }

    public Boolean getShowChatMsg() {
        return this.showChatMsg;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setAnchorBalance(long j4) {
        this.anchorBalance = j4;
    }

    public void setComboHit(int i4) {
        this.comboHit = i4;
    }

    public void setEffortDuration(int i4) {
        this.effortDuration = i4;
    }

    public void setFromUserAvatar(String str) {
        this.fromUserAvatar = str;
    }

    public void setFromUserId(String str) {
        this.fromUserId = str;
    }

    public void setFromUserName(String str) {
        this.fromUserName = str;
    }

    public void setFrom_user_id(String str) {
        this.from_user_id = str;
    }

    public void setFrom_user_peerage_id(int i4) {
        this.from_user_peerage_id = i4;
    }

    public void setGiftCount(int i4) {
        this.giftCount = i4;
    }

    public void setGiftIcon(String str) {
        this.giftIcon = str;
    }

    public void setGiftName(String str) {
        this.giftName = str;
    }

    public void setGiftSwf(String str) {
        this.giftSwf = str;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setIsred(String str) {
        this.isred = str;
    }

    public void setLevel(int i4) {
        this.level = i4;
    }

    public void setNeedface(String str) {
        this.needface = str;
    }

    public void setRedId(String str) {
        this.redId = str;
    }

    public void setRed_Id(String str) {
        this.redId = str;
    }

    public void setRoom_id(int i4) {
        this.room_id = i4;
    }

    public void setShowChatMsg(Boolean bool) {
        this.showChatMsg = bool;
    }

    public String toString() {
        return "SendGiftMsg{redId='" + this.redId + "', giftIcon='" + this.giftIcon + "', giftCount=" + this.giftCount + ", anchorBalance=" + this.anchorBalance + ", fromUserId='" + this.fromUserId + "', giftName='" + this.giftName + "', fromUserName='" + this.fromUserName + "', fromUserAvatar='" + this.fromUserAvatar + "', from_user_id='" + this.from_user_id + "', level=" + this.level + ", isred='" + this.isred + "', amount='" + this.amount + "', imageUrl='" + this.imageUrl + "', comboHit=" + this.comboHit + ", needface='" + this.needface + "', room_id=" + this.room_id + ", from_user_peerage_id=" + this.from_user_peerage_id + ", giftSwf='" + this.giftSwf + "', cache_name='" + this.cache_name + "', effortDuration='" + this.effortDuration + "', showChatMsg='" + this.showChatMsg + "', is_mystery=" + getIsMystery() + '}';
    }
}
