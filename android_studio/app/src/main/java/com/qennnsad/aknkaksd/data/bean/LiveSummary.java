package com.qennnsad.aknkaksd.data.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.pk.PkBean;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;

/* loaded from: classes3.dex */
public class LiveSummary extends MysterableBean implements Parcelable {
    public static final Parcelable.Creator<LiveSummary> CREATOR = new Parcelable.Creator<LiveSummary>() { // from class: com.qennnsad.aknkaksd.data.bean.LiveSummary.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveSummary createFromParcel(Parcel parcel) {
            return new LiveSummary(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LiveSummary[] newArray(int i4) {
            return new LiveSummary[i4];
        }
    };
    protected String avatar;
    protected String city;
    protected String curroomnum;
    protected int gameType;
    protected String id;
    protected int is_attention;
    @SerializedName("last_week_rank")
    protected int lastWeekRank;
    @SerializedName("limit")
    protected PrivateLimitBean limit;
    protected String nickname;
    protected int online;
    protected PkBean pk;
    protected String snap;
    @SerializedName("toy_status")
    protected int toyStatus;
    protected int video_status;

    protected LiveSummary(Parcel parcel) {
        this.snap = "";
        this.toyStatus = 0;
        this.video_status = 0;
        this.id = parcel.readString();
        this.curroomnum = parcel.readString();
        this.online = parcel.readInt();
        this.avatar = parcel.readString();
        this.snap = parcel.readString();
        this.city = parcel.readString();
        this.nickname = parcel.readString();
        this.is_attention = parcel.readInt();
        this.gameType = parcel.readInt();
        this.limit = (PrivateLimitBean) parcel.readParcelable(PrivateLimitBean.class.getClassLoader());
        this.toyStatus = parcel.readInt();
        this.video_status = parcel.readInt();
        this.lastWeekRank = parcel.readInt();
        this.pk = (PkBean) parcel.readParcelable(PkBean.class.getClassLoader());
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LiveSummary liveSummary = (LiveSummary) obj;
        if (this.id.equals(liveSummary.id)) {
            String str = this.curroomnum;
            if (str != null) {
                return str.equals(liveSummary.curroomnum) && this.nickname.equals(liveSummary.nickname);
            }
            return this.nickname.equals(liveSummary.nickname);
        }
        return false;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getCity() {
        return this.city;
    }

    public String getCurroomnum() {
        return this.curroomnum;
    }

    public int getGameType() {
        return this.gameType;
    }

    public String getId() {
        return this.id;
    }

    public int getLastWeekRank() {
        return this.lastWeekRank;
    }

    public PrivateLimitBean getLimit() {
        return this.limit;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getOnline() {
        return this.online;
    }

    public PkBean getPk() {
        return this.pk;
    }

    public String getSnap() {
        return this.snap;
    }

    public int getToyStatus() {
        return this.toyStatus;
    }

    public int getVideo_status() {
        return this.video_status;
    }

    public int hashCode() {
        int hashCode = this.id.hashCode() * 31;
        String str = this.curroomnum;
        if (str == null) {
            str = this.nickname;
        }
        return hashCode + str.hashCode();
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCurroomnum(String str) {
        this.curroomnum = str;
    }

    public void setGameType(int i4) {
        this.gameType = i4;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setLastWeekRank(int i4) {
        this.lastWeekRank = i4;
    }

    public void setLimit(PrivateLimitBean privateLimitBean) {
        this.limit = privateLimitBean;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setOnline(int i4) {
        this.online = i4;
    }

    public void setPk(PkBean pkBean) {
        this.pk = pkBean;
    }

    public void setSnap(String str) {
        this.snap = str;
    }

    public void setToyStatus(int i4) {
        this.toyStatus = i4;
    }

    public void setVideo_status(int i4) {
        this.video_status = i4;
    }

    public String toString() {
        return "LiveSummary{id='" + this.id + "', curroomnum='" + this.curroomnum + "', online=" + this.online + ", pk=" + this.pk.getPrintStr() + ", avatar='" + this.avatar + "', snap='" + this.snap + "', city='" + this.city + "', nickname='" + this.nickname + "', is_attention=" + this.is_attention + ", gameType=" + this.gameType + ", limit=" + this.limit + ", toy_status=" + this.toyStatus + ", video_status=" + this.video_status + ", lastWeekRank=" + this.lastWeekRank + ", pk=" + this.pk + ", isMystery= " + isMystery() + '}';
    }

    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.curroomnum);
        parcel.writeInt(this.online);
        parcel.writeString(this.avatar);
        parcel.writeString(this.snap);
        parcel.writeString(this.city);
        parcel.writeString(this.nickname);
        parcel.writeInt(this.is_attention);
        parcel.writeInt(this.gameType);
        parcel.writeParcelable(this.limit, i4);
        parcel.writeInt(this.toyStatus);
        parcel.writeInt(this.video_status);
        parcel.writeInt(this.lastWeekRank);
        parcel.writeParcelable(this.pk, i4);
    }

    public LiveSummary() {
        this.snap = "";
        this.toyStatus = 0;
        this.video_status = 0;
    }
}
