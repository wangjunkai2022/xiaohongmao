package com.qennnsad.aknkaksd.data.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class EditAvatarBean implements Parcelable {
    public static final Parcelable.Creator<EditAvatarBean> CREATOR = new Parcelable.Creator<EditAvatarBean>() { // from class: com.qennnsad.aknkaksd.data.bean.EditAvatarBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EditAvatarBean createFromParcel(Parcel parcel) {
            return new EditAvatarBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EditAvatarBean[] newArray(int i4) {
            return new EditAvatarBean[i4];
        }
    };
    private String avatar;
    private int avatartime;

    protected EditAvatarBean(Parcel parcel) {
        this.avatartime = parcel.readInt();
        this.avatar = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public int getAvatartime() {
        return this.avatartime;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setAvatartime(int i4) {
        this.avatartime = i4;
    }

    public String toString() {
        return "EditAvatarBean{avatartime=" + this.avatartime + ", avatar='" + this.avatar + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.avatartime);
        parcel.writeString(this.avatar);
    }
}
