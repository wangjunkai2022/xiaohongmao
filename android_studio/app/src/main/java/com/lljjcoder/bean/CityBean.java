package com.lljjcoder.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class CityBean implements Parcelable {
    public static final Parcelable.Creator<CityBean> CREATOR = new Parcelable.Creator<CityBean>() { // from class: com.lljjcoder.bean.CityBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CityBean createFromParcel(Parcel parcel) {
            return new CityBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CityBean[] newArray(int i4) {
            return new CityBean[i4];
        }
    };
    private ArrayList<DistrictBean> cityList;
    private String id;
    private String name;

    public CityBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ArrayList<DistrictBean> getCityList() {
        return this.cityList;
    }

    public String getId() {
        String str = this.id;
        return str == null ? "" : str;
    }

    public String getName() {
        String str = this.name;
        return str == null ? "" : str;
    }

    public void setCityList(ArrayList<DistrictBean> arrayList) {
        this.cityList = arrayList;
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
        parcel.writeTypedList(this.cityList);
    }

    protected CityBean(Parcel parcel) {
        this.id = parcel.readString();
        this.name = parcel.readString();
        this.cityList = parcel.createTypedArrayList(DistrictBean.CREATOR);
    }
}
