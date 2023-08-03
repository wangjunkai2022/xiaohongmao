package com.qennnsad.aknkaksd.data.bean.me;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class UserMoney implements Parcelable {
    public static final Parcelable.Creator<UserMoney> CREATOR = new Parcelable.Creator<UserMoney>() { // from class: com.qennnsad.aknkaksd.data.bean.me.UserMoney.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserMoney createFromParcel(Parcel parcel) {
            return new UserMoney(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserMoney[] newArray(int i4) {
            return new UserMoney[i4];
        }
    };
    private int beanbalance;
    private double chipbalance;
    private int coinbalance;
    private int pointbalance;
    private int remainfornextlev;

    protected UserMoney(Parcel parcel) {
        this.beanbalance = parcel.readInt();
        this.coinbalance = parcel.readInt();
        this.pointbalance = parcel.readInt();
        this.remainfornextlev = parcel.readInt();
        this.chipbalance = parcel.readDouble();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBeanbalance() {
        return this.beanbalance;
    }

    public double getChipbalance() {
        return this.chipbalance;
    }

    public int getCoinbalance() {
        return this.coinbalance;
    }

    public int getPointbalance() {
        return this.pointbalance;
    }

    public int getRemainForNextLev() {
        return this.remainfornextlev;
    }

    public void setBeanbalance(int i4) {
        this.beanbalance = i4;
    }

    public void setChipbalance(double d4) {
        this.chipbalance = d4;
    }

    public void setCoinbalance(int i4) {
        this.coinbalance = i4;
    }

    public void setPointbalance(int i4) {
        this.pointbalance = i4;
    }

    public void setRemainForNextLev(int i4) {
        this.remainfornextlev = i4;
    }

    public String toString() {
        return "UserMoney{beanbalance=" + this.beanbalance + ", coinbalance=" + this.coinbalance + ", pointbalance=" + this.pointbalance + ", chipbalance=" + this.chipbalance + ", remainfornextlev=" + this.remainfornextlev + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.beanbalance);
        parcel.writeInt(this.coinbalance);
        parcel.writeInt(this.pointbalance);
        parcel.writeInt(this.remainfornextlev);
        parcel.writeDouble(this.chipbalance);
    }
}
