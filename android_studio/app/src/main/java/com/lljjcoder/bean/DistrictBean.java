package com.lljjcoder.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class DistrictBean implements Parcelable {
    public static final Parcelable.Creator<DistrictBean> CREATOR = new Parcelable.Creator<DistrictBean>() { // from class: com.lljjcoder.bean.DistrictBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DistrictBean createFromParcel(Parcel parcel) {
            return new DistrictBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DistrictBean[] newArray(int i4) {
            return new DistrictBean[i4];
        }
    };
    private String id;
    private String name;

    public DistrictBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getId() {
        String str = this.id;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return this.name;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.name);
    }

    protected DistrictBean(Parcel parcel) {
        this.id = parcel.readString();
        this.name = parcel.readString();
    }
}
