package com.qennnsad.aknkaksd.data.bean.index;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class BoxDrawersBean implements Parcelable {
    public static final Parcelable.Creator<BoxDrawersBean> CREATOR = new Parcelable.Creator<BoxDrawersBean>() { // from class: com.qennnsad.aknkaksd.data.bean.index.BoxDrawersBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BoxDrawersBean createFromParcel(Parcel parcel) {
            return new BoxDrawersBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BoxDrawersBean[] newArray(int i4) {
            return new BoxDrawersBean[i4];
        }
    };
    private String avatar;
    private int count;
    private String id;
    private String nickname;
    private String snap;

    protected BoxDrawersBean(Parcel parcel) {
        this.id = parcel.readString();
        this.nickname = parcel.readString();
        this.avatar = parcel.readString();
        this.snap = parcel.readString();
        this.count = parcel.readInt();
    }

    @Override // android.os.Parcelable
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
        BoxDrawersBean boxDrawersBean = (BoxDrawersBean) obj;
        if (this.id.equals(boxDrawersBean.id)) {
            return this.id.equals(boxDrawersBean.id);
        }
        return false;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getCount() {
        return this.count;
    }

    public String getId() {
        return this.id;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getSnap() {
        return this.snap;
    }

    public int hashCode() {
        return (this.id.hashCode() * 31) + this.id.hashCode();
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setCount(int i4) {
        this.count = i4;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setSnap(String str) {
        this.snap = str;
    }

    public String toString() {
        return "BoxDrawersBean{id='" + this.id + "', nickname='" + this.nickname + "', avatar='" + this.avatar + "', snap='" + this.snap + "', count=" + this.count + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.nickname);
        parcel.writeString(this.avatar);
        parcel.writeString(this.snap);
        parcel.writeInt(this.count);
    }
}
