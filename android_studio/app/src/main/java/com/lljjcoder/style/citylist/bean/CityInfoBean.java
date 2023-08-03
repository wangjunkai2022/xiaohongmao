package com.lljjcoder.style.citylist.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CityInfoBean implements Parcelable {
    public static final Parcelable.Creator<CityInfoBean> CREATOR = new Parcelable.Creator<CityInfoBean>() { // from class: com.lljjcoder.style.citylist.bean.CityInfoBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CityInfoBean createFromParcel(Parcel parcel) {
            return new CityInfoBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CityInfoBean[] newArray(int i4) {
            return new CityInfoBean[i4];
        }
    };
    private ArrayList<CityInfoBean> cityList;
    private String id;
    private String name;

    public CityInfoBean() {
    }

    public static CityInfoBean findCity(List<CityInfoBean> list, String str) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            try {
                CityInfoBean cityInfoBean = list.get(i4);
                if (str.equals(cityInfoBean.getName())) {
                    return cityInfoBean;
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ArrayList<CityInfoBean> getCityList() {
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

    public void setCityList(ArrayList<CityInfoBean> arrayList) {
        this.cityList = arrayList;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeString(this.id);
        parcel.writeString(this.name);
        parcel.writeTypedList(this.cityList);
    }

    protected CityInfoBean(Parcel parcel) {
        this.id = parcel.readString();
        this.name = parcel.readString();
        this.cityList = parcel.createTypedArrayList(CREATOR);
    }
}
