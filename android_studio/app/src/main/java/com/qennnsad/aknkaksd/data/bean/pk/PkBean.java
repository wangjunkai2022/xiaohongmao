package com.qennnsad.aknkaksd.data.bean.pk;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class PkBean implements Parcelable {
    public static final Parcelable.Creator<PkBean> CREATOR = new Parcelable.Creator<PkBean>() { // from class: com.qennnsad.aknkaksd.data.bean.pk.PkBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PkBean createFromParcel(Parcel parcel) {
            return new PkBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PkBean[] newArray(int i4) {
            return new PkBean[i4];
        }
    };
    private int duration;
    @SerializedName("start_time")
    private Long startTime;

    public PkBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getPrintStr() {
        return "Pk{startTime='" + this.startTime + "', duration='" + this.duration + '}';
    }

    public Long getStartTime() {
        return this.startTime;
    }

    public void setDuration(int i4) {
        this.duration = i4;
    }

    public void setStartTime(Long l10) {
        this.startTime = l10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeLong(this.startTime.longValue());
        parcel.writeInt(this.duration);
    }

    protected PkBean(Parcel parcel) {
        this.startTime = Long.valueOf(parcel.readLong());
        this.duration = parcel.readInt();
    }
}
