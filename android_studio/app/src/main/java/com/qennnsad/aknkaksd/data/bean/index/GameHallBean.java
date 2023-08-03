package com.qennnsad.aknkaksd.data.bean.index;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class GameHallBean implements Parcelable {
    public static final Parcelable.Creator<GameHallBean> CREATOR = new Parcelable.Creator<GameHallBean>() { // from class: com.qennnsad.aknkaksd.data.bean.index.GameHallBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GameHallBean createFromParcel(Parcel parcel) {
            return new GameHallBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GameHallBean[] newArray(int i4) {
            return new GameHallBean[i4];
        }
    };
    private String url;

    protected GameHallBean(Parcel parcel) {
        this.url = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public String toString() {
        return "GameHallBean{url='" + this.url + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.url);
    }
}
