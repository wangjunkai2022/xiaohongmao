package com.google.android.exoplayer2.source;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class TrackGroupArray implements Parcelable {
    private int hashCode;
    public final int length;
    private final TrackGroup[] trackGroups;
    public static final TrackGroupArray EMPTY = new TrackGroupArray(new TrackGroup[0]);
    public static final Parcelable.Creator<TrackGroupArray> CREATOR = new a();

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<TrackGroupArray> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public TrackGroupArray createFromParcel(Parcel parcel) {
            return new TrackGroupArray(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public TrackGroupArray[] newArray(int i4) {
            return new TrackGroupArray[i4];
        }
    }

    public TrackGroupArray(TrackGroup... trackGroupArr) {
        this.trackGroups = trackGroupArr;
        this.length = trackGroupArr.length;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TrackGroupArray.class != obj.getClass()) {
            return false;
        }
        TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
        return this.length == trackGroupArray.length && Arrays.equals(this.trackGroups, trackGroupArray.trackGroups);
    }

    public TrackGroup get(int i4) {
        return this.trackGroups[i4];
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = Arrays.hashCode(this.trackGroups);
        }
        return this.hashCode;
    }

    public int indexOf(TrackGroup trackGroup) {
        for (int i4 = 0; i4 < this.length; i4++) {
            if (this.trackGroups[i4] == trackGroup) {
                return i4;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.length == 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.length);
        for (int i10 = 0; i10 < this.length; i10++) {
            parcel.writeParcelable(this.trackGroups[i10], 0);
        }
    }

    TrackGroupArray(Parcel parcel) {
        int readInt = parcel.readInt();
        this.length = readInt;
        this.trackGroups = new TrackGroup[readInt];
        for (int i4 = 0; i4 < this.length; i4++) {
            this.trackGroups[i4] = (TrackGroup) parcel.readParcelable(TrackGroup.class.getClassLoader());
        }
    }
}
