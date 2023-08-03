package com.qennnsad.aknkaksd.data.bean.register;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes3.dex */
public class SenReBenn implements Parcelable {
    public static final Parcelable.Creator<SenReBenn> CREATOR = new Parcelable.Creator<SenReBenn>() { // from class: com.qennnsad.aknkaksd.data.bean.register.SenReBenn.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SenReBenn createFromParcel(Parcel parcel) {
            return new SenReBenn(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SenReBenn[] newArray(int i4) {
            return new SenReBenn[i4];
        }
    };
    private List<Double> speed;

    /* renamed from: x  reason: collision with root package name */
    private List<Double> f47683x;

    /* renamed from: y  reason: collision with root package name */
    private List<Double> f47684y;

    /* renamed from: z  reason: collision with root package name */
    private List<Double> f47685z;

    public SenReBenn() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<Double> getSpeed() {
        return this.speed;
    }

    public List<Double> getX() {
        return this.f47683x;
    }

    public List<Double> getY() {
        return this.f47684y;
    }

    public List<Double> getZ() {
        return this.f47685z;
    }

    public void setSpeed(List<Double> list) {
        this.speed = list;
    }

    public void setX(List<Double> list) {
        this.f47683x = list;
    }

    public void setY(List<Double> list) {
        this.f47684y = list;
    }

    public void setZ(List<Double> list) {
        this.f47685z = list;
    }

    public String toString() {
        return "SenReBenn{x=" + this.f47683x + ", y=" + this.f47684y + ", z=" + this.f47685z + ", speed=" + this.speed + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
    }

    protected SenReBenn(Parcel parcel) {
    }
}
