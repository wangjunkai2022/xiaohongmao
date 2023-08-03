package com.qennnsad.aknkaksd.data.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class LoginInfo implements Parcelable {
    public static final Parcelable.Creator<LoginInfo> CREATOR = new Parcelable.Creator<LoginInfo>() { // from class: com.qennnsad.aknkaksd.data.bean.LoginInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginInfo createFromParcel(Parcel parcel) {
            return new LoginInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LoginInfo[] newArray(int i4) {
            return new LoginInfo[i4];
        }
    };
    private String approveid;
    private String avatar;
    private String avatartime;
    private double beanorignal;
    private String city;
    private String copyright;
    @SerializedName("curroomnum")
    private String currentRoomNum;
    private boolean isanchor;
    private boolean iswithdraw;
    private String iswithdraw_promotion;
    @SerializedName("emceelevel")
    private String level;
    private String nickname;
    private int pointbalance;
    private String snap;
    private String token;
    @SerializedName("coinbalance")
    private double totalBalance;
    private String ucuid;
    @SerializedName("id")
    private String userId;
    private String username;
    private String wxunionid;

    public LoginInfo() {
        this.copyright = "";
        this.iswithdraw = false;
        this.pointbalance = 0;
        this.iswithdraw_promotion = "n";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getApproveid() {
        return this.approveid;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getAvatartime() {
        return this.avatartime;
    }

    public double getBeanorignal() {
        return this.beanorignal;
    }

    public String getCity() {
        return this.city;
    }

    public String getCopyright() {
        return this.copyright;
    }

    public String getCurrentRoomNum() {
        return this.currentRoomNum;
    }

    public String getIswithdraw_promotion() {
        return this.iswithdraw_promotion;
    }

    public String getLevel() {
        return this.level;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getPointbalance() {
        return this.pointbalance;
    }

    public String getSnap() {
        return this.snap;
    }

    public String getToken() {
        return this.token;
    }

    public double getTotalBalance() {
        return this.totalBalance;
    }

    public String getUcuid() {
        return this.ucuid;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUsername() {
        return this.username;
    }

    public String getWxunionid() {
        return this.wxunionid;
    }

    public boolean isIsanchor() {
        return this.isanchor;
    }

    public boolean isIswithdraw() {
        return this.iswithdraw;
    }

    public void setApproveid(String str) {
        this.approveid = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setAvatartime(String str) {
        this.avatartime = str;
    }

    public void setBeanorignal(double d4) {
        this.beanorignal = d4;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCopyright(String str) {
        this.copyright = str;
    }

    public void setCurrentRoomNum(String str) {
        this.currentRoomNum = str;
    }

    public void setIsanchor(boolean z9) {
        this.isanchor = z9;
    }

    public void setIswithdraw(boolean z9) {
        this.iswithdraw = z9;
    }

    public void setIswithdraw_promotion(String str) {
        this.iswithdraw_promotion = str;
    }

    public void setLevel(String str) {
        this.level = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPointbalance(int i4) {
        this.pointbalance = i4;
    }

    public void setSnap(String str) {
        this.snap = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setTotalBalance(double d4) {
        this.totalBalance = d4;
    }

    public void setUcuid(String str) {
        this.ucuid = str;
    }

    public void setUserId(String str) {
        this.userId = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }

    public void setWxunionid(String str) {
        this.wxunionid = str;
    }

    public String toString() {
        return "LoginInfo{token='" + this.token + "', nickname='" + this.nickname + "', userId='" + this.userId + "', totalBalance=" + this.totalBalance + ", currentRoomNum='" + this.currentRoomNum + "', avatar='" + this.avatar + "', level='" + this.level + "', snap='" + this.snap + "', city='" + this.city + "', wxunionid='" + this.wxunionid + "', approveid='" + this.approveid + "', ucuid='" + this.ucuid + "', beanorignal=" + this.beanorignal + ", username='" + this.username + "', copyright='" + this.copyright + "', isanchor=" + this.isanchor + ", iswithdraw=" + this.iswithdraw + ", avatartime='" + this.avatartime + "', pointbalance=" + this.pointbalance + ", iswithdraw_promotion='" + this.iswithdraw_promotion + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.token);
        parcel.writeString(this.nickname);
        parcel.writeString(this.userId);
        parcel.writeDouble(this.totalBalance);
        parcel.writeString(this.currentRoomNum);
        parcel.writeString(this.avatar);
        parcel.writeString(this.level);
        parcel.writeString(this.snap);
        parcel.writeString(this.city);
        parcel.writeString(this.wxunionid);
        parcel.writeString(this.approveid);
        parcel.writeString(this.ucuid);
        parcel.writeDouble(this.beanorignal);
        parcel.writeString(this.username);
        parcel.writeString(this.copyright);
        parcel.writeByte(this.isanchor ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.iswithdraw ? (byte) 1 : (byte) 0);
        parcel.writeString(this.avatartime);
        parcel.writeInt(this.pointbalance);
        parcel.writeString(this.iswithdraw_promotion);
    }

    protected LoginInfo(Parcel parcel) {
        this.copyright = "";
        this.iswithdraw = false;
        this.pointbalance = 0;
        this.iswithdraw_promotion = "n";
        this.token = parcel.readString();
        this.nickname = parcel.readString();
        this.userId = parcel.readString();
        this.totalBalance = parcel.readDouble();
        this.currentRoomNum = parcel.readString();
        this.avatar = parcel.readString();
        this.level = parcel.readString();
        this.snap = parcel.readString();
        this.city = parcel.readString();
        this.wxunionid = parcel.readString();
        this.approveid = parcel.readString();
        this.ucuid = parcel.readString();
        this.beanorignal = parcel.readDouble();
        this.username = parcel.readString();
        this.copyright = parcel.readString();
        this.isanchor = parcel.readByte() != 0;
        this.iswithdraw = parcel.readByte() != 0;
        this.avatartime = parcel.readString();
        this.pointbalance = parcel.readInt();
        this.iswithdraw_promotion = parcel.readString();
    }
}
