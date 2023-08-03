package com.lljjcoder.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ProvinceBean implements Parcelable {
    public static final Parcelable.Creator<ProvinceBean> CREATOR = new Parcelable.Creator<ProvinceBean>() { // from class: com.lljjcoder.bean.ProvinceBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProvinceBean createFromParcel(Parcel parcel) {
            return new ProvinceBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ProvinceBean[] newArray(int i4) {
            return new ProvinceBean[i4];
        }
    };
    private ArrayList<CityBean> cityList;
    private String id;
    private String name;

    public ProvinceBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ArrayList<CityBean> getCityList() {
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

    public void setCityList(ArrayList<CityBean> arrayList) {
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

    protected ProvinceBean(Parcel parcel) {
        this.id = parcel.readString();
        this.name = parcel.readString();
        this.cityList = parcel.createTypedArrayList(CityBean.CREATOR);
    }
}
