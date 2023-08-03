package com.qennnsad.aknkaksd.data.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;

/* loaded from: classes3.dex */
public class AnchorSummary extends LiveSummary implements Parcelable {
    public static final Parcelable.Creator<AnchorSummary> CREATOR = new Parcelable.Creator<AnchorSummary>() { // from class: com.qennnsad.aknkaksd.data.bean.AnchorSummary.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AnchorSummary createFromParcel(Parcel parcel) {
            return new AnchorSummary(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AnchorSummary[] newArray(int i4) {
            return new AnchorSummary[i4];
        }
    };
    public static final int IS_ATTENTION = 1;
    @SerializedName("bigpic")
    private String bigPic;
    private String broadcasting;
    @SerializedName("emceelevel")
    private int emceeLevel;
    private boolean following;
    private String intro;
    @SerializedName("offlinevideo")
    private String offlineVideo;
    private int sex;

    protected AnchorSummary(Parcel parcel) {
        this.bigPic = parcel.readString();
        this.broadcasting = parcel.readString();
        this.offlineVideo = parcel.readString();
        this.sex = parcel.readInt();
        this.following = parcel.readByte() != 0;
        this.intro = parcel.readString();
        this.emceeLevel = parcel.readInt();
        this.id = parcel.readString();
        this.curroomnum = parcel.readString();
        this.avatar = parcel.readString();
        this.snap = parcel.readString();
        this.city = parcel.readString();
        this.nickname = parcel.readString();
        this.is_attention = parcel.readInt();
        this.gameType = parcel.readInt();
        this.limit = (PrivateLimitBean) parcel.readParcelable(PrivateLimitBean.class.getClassLoader());
        this.toyStatus = parcel.readInt();
        this.video_status = parcel.readInt();
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public String getAvatar() {
        return this.avatar;
    }

    public String getBigPic() {
        return this.bigPic;
    }

    public String getBroadcasting() {
        return this.broadcasting;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public String getCity() {
        return this.city;
    }

    public String getCurrentRoomNum() {
        return this.curroomnum;
    }

    public int getEmceeLevel() {
        return this.emceeLevel;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public String getId() {
        return this.id;
    }

    public String getIntro() {
        return this.intro;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public String getNickname() {
        return this.nickname;
    }

    public String getOfflineVideo() {
        return this.offlineVideo;
    }

    public int getSex() {
        return this.sex;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public String getSnap() {
        return this.snap;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public int getToyStatus() {
        return this.toyStatus;
    }

    public boolean isFollowing() {
        return this.following;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBigPic(String str) {
        this.bigPic = str;
    }

    public void setBroadcasting(String str) {
        this.broadcasting = str;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public void setCity(String str) {
        this.city = str;
    }

    public void setCurrentRoomNum(String str) {
        this.curroomnum = str;
    }

    public void setEmceeLevel(int i4) {
        this.emceeLevel = i4;
    }

    public void setFollowing(boolean z9) {
        this.following = z9;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public void setId(String str) {
        this.id = str;
    }

    public void setIntro(String str) {
        this.intro = str;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setOfflineVideo(String str) {
        this.offlineVideo = str;
    }

    public void setSex(int i4) {
        this.sex = i4;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public void setSnap(String str) {
        this.snap = str;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public void setToyStatus(int i4) {
        this.toyStatus = i4;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public String toString() {
        return "AnchorSummary{id='" + this.id + "', nickname='" + this.nickname + "', currentRoomNum='" + this.curroomnum + "', bigPic='" + this.bigPic + "', broadcasting='" + this.broadcasting + "', offlineVideo='" + this.offlineVideo + "', sex=" + this.sex + ", following=" + this.following + ", intro='" + this.intro + "', avatar='" + this.avatar + "', emceeLevel=" + this.emceeLevel + ", snap='" + this.snap + "', city='" + this.city + "', toy_status='" + this.toyStatus + "', isMystery= " + isMystery() + '}';
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.bigPic);
        parcel.writeString(this.broadcasting);
        parcel.writeString(this.offlineVideo);
        parcel.writeInt(this.sex);
        parcel.writeByte(this.following ? (byte) 1 : (byte) 0);
        parcel.writeString(this.intro);
        parcel.writeInt(this.emceeLevel);
        parcel.writeString(this.id);
        parcel.writeString(this.curroomnum);
        parcel.writeString(this.avatar);
        parcel.writeString(this.snap);
        parcel.writeString(this.city);
        parcel.writeString(this.nickname);
        parcel.writeInt(this.is_attention);
        parcel.writeInt(this.gameType);
        parcel.writeParcelable(this.limit, i4);
        parcel.writeInt(this.toyStatus);
        parcel.writeInt(this.video_status);
    }
}
