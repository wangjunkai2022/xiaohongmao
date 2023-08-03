package com.qennnsad.aknkaksd.data.bean.index;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class BoxListBean implements Parcelable {
    public static final Parcelable.Creator<BoxListBean> CREATOR = new Parcelable.Creator<BoxListBean>() { // from class: com.qennnsad.aknkaksd.data.bean.index.BoxListBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BoxListBean createFromParcel(Parcel parcel) {
            return new BoxListBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BoxListBean[] newArray(int i4) {
            return new BoxListBean[i4];
        }
    };
    private String avatar;
    private String drawer_id;
    private String id;
    private String nickname;
    private String pull_url;
    private String snap;

    protected BoxListBean(Parcel parcel) {
        this.id = parcel.readString();
        this.drawer_id = parcel.readString();
        this.nickname = parcel.readString();
        this.avatar = parcel.readString();
        this.snap = parcel.readString();
        this.pull_url = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getDrawer_id() {
        return this.drawer_id;
    }

    public String getId() {
        return this.id;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPull_url() {
        return this.pull_url;
    }

    public String getSnap() {
        return this.snap;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setDrawer_id(String str) {
        this.drawer_id = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPull_url(String str) {
        this.pull_url = str;
    }

    public void setSnap(String str) {
        this.snap = str;
    }

    public String toString() {
        return "BoxListBean{id='" + this.id + "', drawer_id='" + this.drawer_id + "', nickname='" + this.nickname + "', avatar='" + this.avatar + "', snap='" + this.snap + "', pull_url='" + this.pull_url + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.drawer_id);
        parcel.writeString(this.nickname);
        parcel.writeString(this.avatar);
        parcel.writeString(this.snap);
        parcel.writeString(this.pull_url);
    }
}
