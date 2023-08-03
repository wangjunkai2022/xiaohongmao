package com.qennnsad.aknkaksd.data.bean.me;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.MysterableBean;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import java.util.List;
import r7.h;

/* loaded from: classes3.dex */
public class UserInfo extends MysterableBean implements Parcelable {
    public static final Parcelable.Creator<UserInfo> CREATOR = new Parcelable.Creator<UserInfo>() { // from class: com.qennnsad.aknkaksd.data.bean.me.UserInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserInfo createFromParcel(Parcel parcel) {
            return new UserInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserInfo[] newArray(int i4) {
            return new UserInfo[i4];
        }
    };
    public static final transient int GENDER_FEMALE = 1;
    public static final transient int GENDER_MALE = 0;
    public static final int IS_ATTENTION = 1;
    private String age;
    private String approveid;
    private String approvetype;
    private String avatar;
    private double beanbalance;
    private double beanorignal;
    private String birthday;
    private String broadcasting;
    @SerializedName("broadcasting_tab")
    private DistrictType broadcastingTab;
    private String city;
    @SerializedName("coinbalance")
    private double coinBalance;
    private String copyright;
    @SerializedName("curroomnum")
    private String currentRoomNum;
    private String emotion;
    @SerializedName("family_level")
    private String familyLevel;
    @SerializedName("followees_cnt")
    private String followeesCount;
    @SerializedName("followers_cnt")
    private String followersCount;
    private String id;
    private String im_app_key;
    private String intro;
    @SerializedName("is_attention")
    private int isAttention;
    private int isHit;
    private int is_group_conversation;
    private int is_single_conversation;
    @SerializedName("emceelevel")
    private String level;
    private String nickname;
    private int peerage_id;
    private String professional;
    private String province;
    private String say;
    private int sex;
    private String snap;
    @SerializedName("contribute")
    private List<String> topContributeUsers;
    @SerializedName("spendcoin")
    private int totalContribution;
    private int toy_status;
    private String vip;

    public UserInfo() {
        this.currentRoomNum = "0";
        this.followersCount = "0";
        this.followeesCount = "0";
        this.totalContribution = 0;
        this.level = "1";
        this.say = "";
        this.peerage_id = 0;
        this.broadcastingTab = DistrictType.Unknown;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAge() {
        return this.age;
    }

    public String getApproveid() {
        return this.approveid;
    }

    public String getApprovetype() {
        return this.approvetype;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public double getBeanbalance() {
        return this.beanbalance;
    }

    public double getBeanorignal() {
        return this.beanorignal;
    }

    public String getBirthday() {
        return this.birthday;
    }

    public String getBroadcasting() {
        return this.broadcasting;
    }

    @h
    public DistrictType getBroadcastingTab() {
        return this.broadcastingTab;
    }

    public String getCity() {
        return this.city;
    }

    public double getCoinBalance() {
        return this.coinBalance;
    }

    public String getCopyright() {
        return this.copyright;
    }

    public String getCurrentRoomNum() {
        return this.currentRoomNum;
    }

    public String getEmotion() {
        return this.emotion;
    }

    public String getFamilyLevel() {
        return this.familyLevel;
    }

    public String getFolloweesCount() {
        return this.followeesCount;
    }

    public String getFollowersCount() {
        return this.followersCount;
    }

    public String getHome() {
        return this.province;
    }

    public String getId() {
        return this.id;
    }

    public String getIm_app_key() {
        return this.im_app_key;
    }

    public String getIntro() {
        return this.intro;
    }

    public int getIsAttention() {
        return this.isAttention;
    }

    public int getIsHit() {
        return this.isHit;
    }

    public int getIs_group_conversation() {
        return this.is_group_conversation;
    }

    public int getIs_single_conversation() {
        return this.is_single_conversation;
    }

    public String getLevel() {
        return this.level;
    }

    public String getLove() {
        return this.emotion;
    }

    public String getMajor() {
        return this.professional;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getPeerage_id() {
        return this.peerage_id;
    }

    public String getProfessional() {
        return this.professional;
    }

    public String getProvince() {
        return this.province;
    }

    public String getSay() {
        return this.say;
    }

    public int getSex() {
        return this.sex;
    }

    public String getSnap() {
        return this.snap;
    }

    public List<String> getTopContributeUsers() {
        return this.topContributeUsers;
    }

    public int getTotalContribution() {
        return this.totalContribution;
    }

    public int getToy_status() {
        return this.toy_status;
    }

    public String getVip() {
        return this.vip;
    }

    public void setAge(String str) {
        this.age = str;
    }

    public void setApproveid(String str) {
        this.approveid = str;
    }

    public void setApprovetype(String str) {
        this.approvetype = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBeanbalance(double d4) {
        this.beanbalance = d4;
    }

    public void setBeanorignal(double d4) {
        this.beanorignal = d4;
    }

    public void setBirthday(String str) {
        this.birthday = str;
    }

    public void setBroadcasting(String str) {
        this.broadcasting = str;
    }

    public void setBroadcastingTab(DistrictType districtType) {
        this.broadcastingTab = districtType;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCoinBalance(double d4) {
        this.coinBalance = d4;
    }

    public void setCopyright(String str) {
        this.copyright = str;
    }

    public void setCurrentRoomNum(String str) {
        this.currentRoomNum = str;
    }

    public void setEmotion(String str) {
        this.emotion = str;
    }

    public void setFamilyLevel(String str) {
        this.familyLevel = str;
    }

    public void setFolloweesCount(String str) {
        this.followeesCount = str;
    }

    public void setFollowersCount(String str) {
        this.followersCount = str;
    }

    public void setHome(String str) {
        this.province = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setIm_app_key(String str) {
        this.im_app_key = str;
    }

    public void setIntro(String str) {
        this.intro = str;
    }

    public void setIsAttention(int i4) {
        this.isAttention = i4;
    }

    public void setIsHit(int i4) {
        this.isHit = i4;
    }

    public void setIs_group_conversation(int i4) {
        this.is_group_conversation = i4;
    }

    public void setIs_single_conversation(int i4) {
        this.is_single_conversation = i4;
    }

    public void setLevel(String str) {
        this.level = str;
    }

    public void setLove(String str) {
        this.emotion = str;
    }

    public void setMajor(String str) {
        this.professional = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPeerage_id(int i4) {
        this.peerage_id = i4;
    }

    public void setProfessional(String str) {
        this.professional = str;
    }

    public void setProvince(String str) {
        this.province = str;
    }

    public void setSay(String str) {
        this.say = str;
    }

    public void setSex(int i4) {
        this.sex = i4;
    }

    public void setSnap(String str) {
        this.snap = str;
    }

    public void setTopContributeUsers(List<String> list) {
        this.topContributeUsers = list;
    }

    public void setTotalContribution(int i4) {
        this.totalContribution = i4;
    }

    public void setToy_status(int i4) {
        this.toy_status = i4;
    }

    public void setVip(String str) {
        this.vip = str;
    }

    public String toString() {
        return "UserInfo{id='" + this.id + "', sex=" + this.sex + ", intro='" + this.intro + "', nickname='" + this.nickname + "', city='" + this.city + "', snap='" + this.snap + "', currentRoomNum='" + this.currentRoomNum + "', vip='" + this.vip + "', coinBalance=" + this.coinBalance + ", beanbalance=" + this.beanbalance + ", beanorignal=" + this.beanorignal + ", birthday='" + this.birthday + "', emotion='" + this.emotion + "', province='" + this.province + "', professional='" + this.professional + "', isHit=" + this.isHit + ", avatar='" + this.avatar + "', topContributeUsers=" + this.topContributeUsers + ", followersCount='" + this.followersCount + "', followeesCount='" + this.followeesCount + "', totalContribution=" + this.totalContribution + ", isAttention=" + this.isAttention + ", level='" + this.level + "', broadcasting='" + this.broadcasting + "', approveid='" + this.approveid + "', age='" + this.age + "', approvetype='" + this.approvetype + "', copyright='" + this.copyright + "', say='" + this.say + "', toy_status=" + this.toy_status + ", im_app_key='" + this.im_app_key + "', is_single_conversation=" + this.is_single_conversation + ", is_group_conversation=" + this.is_group_conversation + ", peerage_id=" + this.peerage_id + ", isMystery= " + isMystery() + ", broadcastingTab= " + this.broadcastingTab + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeInt(this.sex);
        parcel.writeString(this.intro);
        parcel.writeString(this.nickname);
        parcel.writeString(this.city);
        parcel.writeString(this.snap);
        parcel.writeString(this.currentRoomNum);
        parcel.writeString(this.vip);
        parcel.writeDouble(this.coinBalance);
        parcel.writeDouble(this.beanbalance);
        parcel.writeDouble(this.beanorignal);
        parcel.writeString(this.birthday);
        parcel.writeString(this.emotion);
        parcel.writeString(this.province);
        parcel.writeString(this.professional);
        parcel.writeInt(this.isHit);
        parcel.writeString(this.avatar);
        parcel.writeStringList(this.topContributeUsers);
        parcel.writeString(this.followersCount);
        parcel.writeString(this.followeesCount);
        parcel.writeInt(this.totalContribution);
        parcel.writeInt(this.isAttention);
        parcel.writeString(this.level);
        parcel.writeString(this.familyLevel);
        parcel.writeString(this.broadcasting);
        parcel.writeString(this.approveid);
        parcel.writeString(this.age);
        parcel.writeString(this.approvetype);
        parcel.writeString(this.copyright);
        parcel.writeString(this.say);
        parcel.writeInt(this.toy_status);
        parcel.writeString(this.im_app_key);
        parcel.writeInt(this.is_single_conversation);
        parcel.writeInt(this.is_group_conversation);
        parcel.writeInt(this.peerage_id);
    }

    protected UserInfo(Parcel parcel) {
        this.currentRoomNum = "0";
        this.followersCount = "0";
        this.followeesCount = "0";
        this.totalContribution = 0;
        this.level = "1";
        this.say = "";
        this.peerage_id = 0;
        this.broadcastingTab = DistrictType.Unknown;
        this.id = parcel.readString();
        this.sex = parcel.readInt();
        this.intro = parcel.readString();
        this.nickname = parcel.readString();
        this.city = parcel.readString();
        this.snap = parcel.readString();
        this.currentRoomNum = parcel.readString();
        this.vip = parcel.readString();
        this.coinBalance = parcel.readDouble();
        this.beanbalance = parcel.readDouble();
        this.beanorignal = parcel.readDouble();
        this.birthday = parcel.readString();
        this.emotion = parcel.readString();
        this.province = parcel.readString();
        this.professional = parcel.readString();
        this.isHit = parcel.readInt();
        this.avatar = parcel.readString();
        this.topContributeUsers = parcel.createStringArrayList();
        this.followersCount = parcel.readString();
        this.followeesCount = parcel.readString();
        this.totalContribution = parcel.readInt();
        this.isAttention = parcel.readInt();
        this.level = parcel.readString();
        this.familyLevel = parcel.readString();
        this.broadcasting = parcel.readString();
        this.approveid = parcel.readString();
        this.age = parcel.readString();
        this.approvetype = parcel.readString();
        this.copyright = parcel.readString();
        this.say = parcel.readString();
        this.toy_status = parcel.readInt();
        this.im_app_key = parcel.readString();
        this.is_single_conversation = parcel.readInt();
        this.is_group_conversation = parcel.readInt();
        this.peerage_id = parcel.readInt();
    }
}
