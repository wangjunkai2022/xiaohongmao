package com.qennnsad.aknkaksd.data.bean.room;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.WatermarkBean;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBean;
import com.qennnsad.aknkaksd.data.websocket.b;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class PrivateLimitBean implements Parcelable {
    public static final Parcelable.Creator<PrivateLimitBean> CREATOR = new Parcelable.Creator<PrivateLimitBean>() { // from class: com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateLimitBean createFromParcel(Parcel parcel) {
            return new PrivateLimitBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivateLimitBean[] newArray(int i4) {
            return new PrivateLimitBean[i4];
        }
    };
    private AnchorBean anchor;
    private int bsid;
    private int come;
    private String copyright;
    @SerializedName("fanclub_enabled")
    private int fanclubEnabled;
    private int id;
    private long inPkWith;
    private int isPkSender;
    private int money;
    private int online;
    @SerializedName(b.f47836s0)
    private List<PinnedMessageBean> pinnedMessages;
    private int plid;
    private int prerequisite;
    private int prerequisite_coin;
    private float prerequisite_minute;
    private int preview_time;
    private int ptid;
    private String ptname;
    private StreamBean stream;
    private String tips;

    /* loaded from: classes3.dex */
    public static class AnchorBean implements Parcelable {
        public static final Parcelable.Creator<AnchorBean> CREATOR = new Parcelable.Creator<AnchorBean>() { // from class: com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean.AnchorBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AnchorBean createFromParcel(Parcel parcel) {
                return new AnchorBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AnchorBean[] newArray(int i4) {
                return new AnchorBean[i4];
            }
        };
        private int age;
        private String approveid;
        private int approvetype;
        private String avatar;
        private String avatartime;
        private int beanorignal;
        private String birthday;
        private String broadcasting;
        private String city;
        @SerializedName("copyright")
        private String copyrightX;
        private String curroomnum;
        private String emceelevel;
        private String emotion;
        private String followees_cnt;
        private String followers_cnt;
        @SerializedName("id")
        private String idX;
        private String intro;
        private int isHit;
        private int is_attention;
        private boolean is_legend;
        @SerializedName("lobNo")
        private int lob;
        private String nickname;
        private String professional;
        private String province;
        @SerializedName("realtime_subtitles_on")
        private int realtimeSubtitlesOn;
        private int sex;
        private String snap;
        private int spendcoin;
        private String toy_status;
        private String vip;

        protected AnchorBean(Parcel parcel) {
            this.is_legend = false;
            this.idX = parcel.readString();
            this.sex = parcel.readInt();
            this.broadcasting = parcel.readString();
            this.intro = parcel.readString();
            this.nickname = parcel.readString();
            this.city = parcel.readString();
            this.snap = parcel.readString();
            this.curroomnum = parcel.readString();
            this.vip = parcel.readString();
            this.avatartime = parcel.readString();
            this.birthday = parcel.readString();
            this.professional = parcel.readString();
            this.emotion = parcel.readString();
            this.province = parcel.readString();
            this.approveid = parcel.readString();
            this.toy_status = parcel.readString();
            this.avatar = parcel.readString();
            this.followers_cnt = parcel.readString();
            this.followees_cnt = parcel.readString();
            this.is_attention = parcel.readInt();
            this.isHit = parcel.readInt();
            this.emceelevel = parcel.readString();
            this.age = parcel.readInt();
            this.beanorignal = parcel.readInt();
            this.spendcoin = parcel.readInt();
            this.approvetype = parcel.readInt();
            this.copyrightX = parcel.readString();
            this.is_legend = parcel.readByte() != 0;
            this.realtimeSubtitlesOn = parcel.readInt();
            this.lob = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getAge() {
            return this.age;
        }

        public String getApproveid() {
            return this.approveid;
        }

        public int getApprovetype() {
            return this.approvetype;
        }

        public String getAvatar() {
            return this.avatar;
        }

        public String getAvatartime() {
            return this.avatartime;
        }

        public int getBeanorignal() {
            return this.beanorignal;
        }

        public String getBirthday() {
            return this.birthday;
        }

        public String getBroadcasting() {
            return this.broadcasting;
        }

        public String getCity() {
            return this.city;
        }

        public String getCopyrightX() {
            return this.copyrightX;
        }

        public String getCurroomnum() {
            return this.curroomnum;
        }

        public String getEmceelevel() {
            return this.emceelevel;
        }

        public String getEmotion() {
            return this.emotion;
        }

        public String getFollowees_cnt() {
            return this.followees_cnt;
        }

        public String getFollowers_cnt() {
            return this.followers_cnt;
        }

        public String getIdX() {
            return this.idX;
        }

        public String getIntro() {
            return this.intro;
        }

        public int getIsHit() {
            return this.isHit;
        }

        public int getIs_attention() {
            return this.is_attention;
        }

        public int getLob() {
            return this.lob;
        }

        public String getNickname() {
            return this.nickname;
        }

        public String getProfessional() {
            return this.professional;
        }

        public String getProvince() {
            return this.province;
        }

        public int getRealtimeSubtitlesOn() {
            return this.realtimeSubtitlesOn;
        }

        public int getSex() {
            return this.sex;
        }

        public String getSnap() {
            return this.snap;
        }

        public int getSpendcoin() {
            return this.spendcoin;
        }

        public String getToy_status() {
            return this.toy_status;
        }

        public String getVip() {
            return this.vip;
        }

        public boolean isIs_legend() {
            return this.is_legend;
        }

        public void setAge(int i4) {
            this.age = i4;
        }

        public void setApproveid(String str) {
            this.approveid = str;
        }

        public void setApprovetype(int i4) {
            this.approvetype = i4;
        }

        public void setAvatar(String str) {
            this.avatar = str;
        }

        public void setAvatartime(String str) {
            this.avatartime = str;
        }

        public void setBeanorignal(int i4) {
            this.beanorignal = i4;
        }

        public void setBirthday(String str) {
            this.birthday = str;
        }

        public void setBroadcasting(String str) {
            this.broadcasting = str;
        }

        public void setCity(String str) {
            this.city = str;
        }

        public void setCopyrightX(String str) {
            this.copyrightX = str;
        }

        public void setCurroomnum(String str) {
            this.curroomnum = str;
        }

        public void setEmceelevel(String str) {
            this.emceelevel = str;
        }

        public void setEmotion(String str) {
            this.emotion = str;
        }

        public void setFollowees_cnt(String str) {
            this.followees_cnt = str;
        }

        public void setFollowers_cnt(String str) {
            this.followers_cnt = str;
        }

        public void setIdX(String str) {
            this.idX = str;
        }

        public void setIntro(String str) {
            this.intro = str;
        }

        public void setIsHit(int i4) {
            this.isHit = i4;
        }

        public void setIs_attention(int i4) {
            this.is_attention = i4;
        }

        public void setIs_legend(boolean z9) {
            this.is_legend = z9;
        }

        public void setLob(int i4) {
            this.lob = i4;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setProfessional(String str) {
            this.professional = str;
        }

        public void setProvince(String str) {
            this.province = str;
        }

        public void setRealtimeSubtitlesOn(int i4) {
            this.realtimeSubtitlesOn = i4;
        }

        public void setSex(int i4) {
            this.sex = i4;
        }

        public void setSnap(String str) {
            this.snap = str;
        }

        public void setSpendcoin(int i4) {
            this.spendcoin = i4;
        }

        public void setToy_status(String str) {
            this.toy_status = str;
        }

        public void setVip(String str) {
            this.vip = str;
        }

        public String toString() {
            return "AnchorBean{idX='" + this.idX + "', sex=" + this.sex + ", broadcasting='" + this.broadcasting + "', intro='" + this.intro + "', nickname='" + this.nickname + "', city='" + this.city + "', snap='" + this.snap + "', curroomnum='" + this.curroomnum + "', vip='" + this.vip + "', avatartime='" + this.avatartime + "', birthday='" + this.birthday + "', professional='" + this.professional + "', emotion='" + this.emotion + "', province='" + this.province + "', approveid='" + this.approveid + "', toy_status='" + this.toy_status + "', avatar='" + this.avatar + "', followers_cnt='" + this.followers_cnt + "', followees_cnt='" + this.followees_cnt + "', is_attention=" + this.is_attention + ", isHit=" + this.isHit + ", emceelevel='" + this.emceelevel + "', age=" + this.age + ", beanorignal=" + this.beanorignal + ", spendcoin=" + this.spendcoin + ", approvetype=" + this.approvetype + ", copyrightX='" + this.copyrightX + "', is_legend=" + this.is_legend + ", realtimeSubtitlesOn=" + this.realtimeSubtitlesOn + ", lob=" + this.lob + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeString(this.idX);
            parcel.writeInt(this.sex);
            parcel.writeString(this.broadcasting);
            parcel.writeString(this.intro);
            parcel.writeString(this.nickname);
            parcel.writeString(this.city);
            parcel.writeString(this.snap);
            parcel.writeString(this.curroomnum);
            parcel.writeString(this.vip);
            parcel.writeString(this.avatartime);
            parcel.writeString(this.birthday);
            parcel.writeString(this.professional);
            parcel.writeString(this.emotion);
            parcel.writeString(this.province);
            parcel.writeString(this.approveid);
            parcel.writeString(this.toy_status);
            parcel.writeString(this.avatar);
            parcel.writeString(this.followers_cnt);
            parcel.writeString(this.followees_cnt);
            parcel.writeInt(this.is_attention);
            parcel.writeInt(this.isHit);
            parcel.writeString(this.emceelevel);
            parcel.writeInt(this.age);
            parcel.writeInt(this.beanorignal);
            parcel.writeInt(this.spendcoin);
            parcel.writeInt(this.approvetype);
            parcel.writeString(this.copyrightX);
            parcel.writeByte(this.is_legend ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.realtimeSubtitlesOn);
            parcel.writeInt(this.lob);
        }
    }

    /* loaded from: classes3.dex */
    public static class StreamBean implements Parcelable {
        public static final Parcelable.Creator<StreamBean> CREATOR = new Parcelable.Creator<StreamBean>() { // from class: com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean.StreamBean.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StreamBean createFromParcel(Parcel parcel) {
                return new StreamBean(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public StreamBean[] newArray(int i4) {
                return new StreamBean[i4];
            }
        };
        private String pull_url;
        private WatermarkBean watermark;

        protected StreamBean(Parcel parcel) {
            this.pull_url = parcel.readString();
            this.watermark = (WatermarkBean) parcel.readParcelable(WatermarkBean.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String getPull_url() {
            return this.pull_url;
        }

        public WatermarkBean getWatermark() {
            return this.watermark;
        }

        public void setPull_url(String str) {
            this.pull_url = str;
        }

        public void setWatermark(WatermarkBean watermarkBean) {
            this.watermark = watermarkBean;
        }

        public String toString() {
            return "StreamBean{pull_url='" + this.pull_url + "'watermark='" + this.watermark + "'}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            parcel.writeString(this.pull_url);
            parcel.writeParcelable(this.watermark, i4);
        }
    }

    protected PrivateLimitBean(Parcel parcel) {
        this.id = parcel.readInt();
        this.plid = parcel.readInt();
        this.bsid = parcel.readInt();
        this.ptid = parcel.readInt();
        this.prerequisite = parcel.readInt();
        this.prerequisite_coin = parcel.readInt();
        this.prerequisite_minute = parcel.readFloat();
        this.ptname = parcel.readString();
        this.online = parcel.readInt();
        this.preview_time = parcel.readInt();
        this.come = parcel.readInt();
        this.money = parcel.readInt();
        this.copyright = parcel.readString();
        this.stream = (StreamBean) parcel.readParcelable(StreamBean.class.getClassLoader());
        this.anchor = (AnchorBean) parcel.readParcelable(AnchorBean.class.getClassLoader());
        this.inPkWith = parcel.readLong();
        this.isPkSender = parcel.readInt();
        this.fanclubEnabled = parcel.readInt();
        ArrayList arrayList = new ArrayList();
        this.pinnedMessages = arrayList;
        if (Build.VERSION.SDK_INT >= 29) {
            parcel.readParcelableList(arrayList, PinnedMessageBean.class.getClassLoader());
        } else {
            parcel.readList(arrayList, PinnedMessageBean.class.getClassLoader());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public AnchorBean getAnchor() {
        return this.anchor;
    }

    public int getBsid() {
        return this.bsid;
    }

    public int getCome() {
        return this.come;
    }

    public String getCopyright() {
        return this.copyright;
    }

    public int getFanclubEnabled() {
        return this.fanclubEnabled;
    }

    public int getId() {
        return this.id;
    }

    public long getInPkWith() {
        return this.inPkWith;
    }

    public int getIsPkSender() {
        return this.isPkSender;
    }

    public int getMoney() {
        return this.money;
    }

    public int getOnline() {
        return this.online;
    }

    public List<PinnedMessageBean> getPinnedMessages() {
        return this.pinnedMessages;
    }

    public int getPlid() {
        return this.plid;
    }

    public int getPrerequisite() {
        return this.prerequisite;
    }

    public int getPrerequisite_coin() {
        return this.prerequisite_coin;
    }

    public float getPrerequisite_minute() {
        return this.prerequisite_minute;
    }

    public int getPreview_time() {
        return this.preview_time;
    }

    public int getPtid() {
        return this.ptid;
    }

    public String getPtname() {
        return this.ptname;
    }

    public StreamBean getStream() {
        return this.stream;
    }

    public String getTips() {
        return this.tips;
    }

    public void setAnchor(AnchorBean anchorBean) {
        this.anchor = anchorBean;
    }

    public void setBsid(int i4) {
        this.bsid = i4;
    }

    public void setCome(int i4) {
        this.come = i4;
    }

    public void setCopyright(String str) {
        this.copyright = str;
    }

    public void setFanclubEnabled(int i4) {
        this.fanclubEnabled = i4;
    }

    public void setId(int i4) {
        this.id = i4;
    }

    public void setInPkWith(long j4) {
        this.inPkWith = j4;
    }

    public void setIsPkSender(int i4) {
        this.isPkSender = i4;
    }

    public void setMoney(int i4) {
        this.money = i4;
    }

    public void setOnline(int i4) {
        this.online = i4;
    }

    public void setPinnedMessages(List<PinnedMessageBean> list) {
        this.pinnedMessages = list;
    }

    public void setPlid(int i4) {
        this.plid = i4;
    }

    public void setPrerequisite(int i4) {
        this.prerequisite = i4;
    }

    public void setPrerequisite_coin(int i4) {
        this.prerequisite_coin = i4;
    }

    public void setPrerequisite_minute(float f10) {
        this.prerequisite_minute = f10;
    }

    public void setPreview_time(int i4) {
        this.preview_time = i4;
    }

    public void setPtid(int i4) {
        this.ptid = i4;
    }

    public void setPtname(String str) {
        this.ptname = str;
    }

    public void setStream(StreamBean streamBean) {
        this.stream = streamBean;
    }

    public void setTips(String str) {
        this.tips = str;
    }

    public String toString() {
        return "PrivateLimitBean{id=" + this.id + ", plid=" + this.plid + ", bsid=" + this.bsid + ", ptid=" + this.ptid + ", prerequisite=" + this.prerequisite + ", prerequisite_minute=" + this.prerequisite_minute + ", prerequisite_coin=" + this.prerequisite_coin + ", ptname='" + this.ptname + "', online=" + this.online + ", anchor=" + this.anchor + ", preview_time=" + this.preview_time + ", come=" + this.come + ", money=" + this.money + ", copyright='" + this.copyright + "', stream=" + this.stream + ", tips=" + this.tips + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.id);
        parcel.writeInt(this.plid);
        parcel.writeInt(this.bsid);
        parcel.writeInt(this.ptid);
        parcel.writeInt(this.prerequisite);
        parcel.writeInt(this.prerequisite_coin);
        parcel.writeFloat(this.prerequisite_minute);
        parcel.writeString(this.ptname);
        parcel.writeInt(this.online);
        parcel.writeInt(this.preview_time);
        parcel.writeInt(this.come);
        parcel.writeInt(this.money);
        parcel.writeString(this.copyright);
        parcel.writeParcelable(this.stream, i4);
        parcel.writeParcelable(this.anchor, i4);
        parcel.writeLong(this.inPkWith);
        parcel.writeInt(this.isPkSender);
        parcel.writeInt(this.fanclubEnabled);
        if (Build.VERSION.SDK_INT >= 29) {
            parcel.writeParcelableList(this.pinnedMessages, i4);
        } else {
            parcel.writeList(this.pinnedMessages);
        }
    }
}
