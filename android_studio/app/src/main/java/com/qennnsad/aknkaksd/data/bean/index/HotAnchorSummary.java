package com.qennnsad.aknkaksd.data.bean.index;

import android.os.Parcel;
import android.os.Parcelable;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.data.bean.pk.PkBean;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import java.util.List;

/* loaded from: classes3.dex */
public class HotAnchorSummary extends LiveSummary implements Parcelable {
    public static final Parcelable.Creator<HotAnchorSummary> CREATOR = new Parcelable.Creator<HotAnchorSummary>() { // from class: com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HotAnchorSummary createFromParcel(Parcel parcel) {
            return new HotAnchorSummary(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HotAnchorSummary[] newArray(int i4) {
            return new HotAnchorSummary[i4];
        }
    };
    private String broadcasting;
    private String distance;
    private int emceelevel;
    private String intro;
    private boolean is_scroll;
    private String roomTitle;
    private List<RoomTopic> roomTopic;
    private int sex;
    private String starttime;

    /* loaded from: classes3.dex */
    public class RoomTopic implements Parcelable {
        public final Parcelable.Creator<RoomTopic> CREATOR = new Parcelable.Creator<RoomTopic>() { // from class: com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary.RoomTopic.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RoomTopic createFromParcel(Parcel parcel) {
                return new RoomTopic(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RoomTopic[] newArray(int i4) {
                return new RoomTopic[i4];
            }
        };
        String id;
        String title;

        protected RoomTopic(Parcel parcel) {
            this.id = parcel.readString();
            this.title = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getId() {
            return this.id;
        }

        public String getTitle() {
            return this.title;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }

        public String toString() {
            return "RoomTopic{id='" + this.id + "', title='" + this.title + "', CREATOR=" + this.CREATOR + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeString(this.title);
            parcel.writeString(this.id);
        }
    }

    protected HotAnchorSummary(Parcel parcel) {
        this.sex = 1;
        this.roomTitle = parcel.readString();
        this.starttime = parcel.readString();
        this.broadcasting = parcel.readString();
        this.distance = parcel.readString();
        this.emceelevel = parcel.readInt();
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
        this.intro = parcel.readString();
        this.sex = parcel.readInt();
        this.pk = (PkBean) parcel.readParcelable(PkBean.class.getClassLoader());
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getBroadcasting() {
        return this.broadcasting;
    }

    public String getCurrentRoomNum() {
        return this.curroomnum;
    }

    public String getDistance() {
        return this.distance;
    }

    public int getEmceelevel() {
        return this.emceelevel;
    }

    public String getIntro() {
        return this.intro;
    }

    public int getOnlineCount() {
        return this.online;
    }

    public String getRoomTitle() {
        return this.roomTitle;
    }

    public List<RoomTopic> getRoomTopic() {
        return this.roomTopic;
    }

    public int getSex() {
        return this.sex;
    }

    public String getStarttime() {
        return this.starttime;
    }

    public List<RoomTopic> getTopic() {
        return this.roomTopic;
    }

    public boolean isScroll() {
        return this.is_scroll;
    }

    public void setBroadcasting(String str) {
        this.broadcasting = str;
    }

    public void setCurrentRoomNum(String str) {
        this.curroomnum = str;
    }

    public void setDistance(String str) {
        this.distance = str;
    }

    public void setEmceelevel(int i4) {
        this.emceelevel = i4;
    }

    public void setIntro(String str) {
        this.intro = str;
    }

    public void setIsScroll(boolean z9) {
        this.is_scroll = z9;
    }

    public void setOnlineCount(int i4) {
        this.online = i4;
    }

    public void setRoomTitle(String str) {
        this.roomTitle = str;
    }

    public void setRoomTopic(List<RoomTopic> list) {
        this.roomTopic = list;
    }

    public void setSex(int i4) {
        this.sex = i4;
    }

    public void setStarttime(String str) {
        this.starttime = str;
    }

    public void setTopic(List<RoomTopic> list) {
        this.roomTopic = list;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary
    public String toString() {
        return "HotAnchorSummary{id='" + this.id + "', curroomnum='" + this.curroomnum + "', online=" + this.online + ", avatar='" + this.avatar + "', snap='" + this.snap + "', city='" + this.city + "', nickname='" + this.nickname + "', is_attention=" + this.is_attention + ", gameType=" + this.gameType + ", roomTitle='" + this.roomTitle + "', roomTopic=" + this.roomTopic + ", limit=" + this.limit + ", starttime='" + this.starttime + "', broadcasting='" + this.broadcasting + "', toy_status=" + this.toyStatus + ", distance='" + this.distance + "', emceelevel=" + this.emceelevel + ", intro=" + this.intro + ", sex=" + this.sex + ", pk=" + this.pk + '}';
    }

    @Override // com.qennnsad.aknkaksd.data.bean.LiveSummary, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.roomTitle);
        parcel.writeString(this.starttime);
        parcel.writeString(this.broadcasting);
        parcel.writeString(this.distance);
        parcel.writeInt(this.emceelevel);
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
        parcel.writeString(this.intro);
        parcel.writeInt(this.sex);
        parcel.writeParcelable(this.pk, i4);
    }

    public HotAnchorSummary() {
        this.sex = 1;
    }
}
