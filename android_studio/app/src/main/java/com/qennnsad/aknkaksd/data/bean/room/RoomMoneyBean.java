package com.qennnsad.aknkaksd.data.bean.room;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public class RoomMoneyBean implements Parcelable {
    public static final Parcelable.Creator<RoomMoneyBean> CREATOR = new Parcelable.Creator<RoomMoneyBean>() { // from class: com.qennnsad.aknkaksd.data.bean.room.RoomMoneyBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RoomMoneyBean createFromParcel(Parcel parcel) {
            return new RoomMoneyBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RoomMoneyBean[] newArray(int i4) {
            return new RoomMoneyBean[i4];
        }
    };
    private int beanbalance;
    private int coinbalance;

    protected RoomMoneyBean(Parcel parcel) {
        this.beanbalance = parcel.readInt();
        this.coinbalance = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getBeanbalance() {
        return this.beanbalance;
    }

    public int getCoinbalance() {
        return this.coinbalance;
    }

    public void setBeanbalance(int i4) {
        this.beanbalance = i4;
    }

    public void setCoinbalance(int i4) {
        this.coinbalance = i4;
    }

    public String toString() {
        return "RoomMoneyBean{beanbalance=" + this.beanbalance + ", coinbalance=" + this.coinbalance + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.beanbalance);
        parcel.writeInt(this.coinbalance);
    }
}
