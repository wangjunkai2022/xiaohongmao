package com.qennnsad.aknkaksd.data.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class IncomeBean implements Parcelable {
    public static final Parcelable.Creator<IncomeBean> CREATOR = new Parcelable.Creator<IncomeBean>() { // from class: com.qennnsad.aknkaksd.data.bean.IncomeBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IncomeBean createFromParcel(Parcel parcel) {
            return new IncomeBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IncomeBean[] newArray(int i4) {
            return new IncomeBean[i4];
        }
    };
    private String alipayname;
    private int earnbean;
    private double rmb;

    public IncomeBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAlipayname() {
        return this.alipayname;
    }

    public int getEarnbean() {
        return this.earnbean;
    }

    public double getRmb() {
        return this.rmb;
    }

    public void setAlipayname(String str) {
        this.alipayname = str;
    }

    public void setEarnbean(int i4) {
        this.earnbean = i4;
    }

    public void setRmb(double d4) {
        this.rmb = d4;
    }

    public String toString() {
        return "IncomeBean{earnbean=" + this.earnbean + ", rmb=" + this.rmb + ", alipayname='" + this.alipayname + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.earnbean);
        parcel.writeDouble(this.rmb);
        parcel.writeString(this.alipayname);
    }

    protected IncomeBean(Parcel parcel) {
        this.earnbean = parcel.readInt();
        this.rmb = parcel.readDouble();
        this.alipayname = parcel.readString();
    }
}
