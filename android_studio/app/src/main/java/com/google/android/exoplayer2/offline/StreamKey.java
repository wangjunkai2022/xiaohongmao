package com.google.android.exoplayer2.offline;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class StreamKey implements Comparable<StreamKey>, Parcelable {
    public static final Parcelable.Creator<StreamKey> CREATOR = new a();
    public final int groupIndex;
    public final int periodIndex;
    public final int trackIndex;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<StreamKey> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public StreamKey createFromParcel(Parcel parcel) {
            return new StreamKey(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public StreamKey[] newArray(int i4) {
            return new StreamKey[i4];
        }
    }

    public StreamKey(int i4, int i10) {
        this(0, i4, i10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StreamKey.class != obj.getClass()) {
            return false;
        }
        StreamKey streamKey = (StreamKey) obj;
        return this.periodIndex == streamKey.periodIndex && this.groupIndex == streamKey.groupIndex && this.trackIndex == streamKey.trackIndex;
    }

    public int hashCode() {
        return (((this.periodIndex * 31) + this.groupIndex) * 31) + this.trackIndex;
    }

    public String toString() {
        int i4 = this.periodIndex;
        int i10 = this.groupIndex;
        int i11 = this.trackIndex;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i4);
        sb.append(".");
        sb.append(i10);
        sb.append(".");
        sb.append(i11);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.periodIndex);
        parcel.writeInt(this.groupIndex);
        parcel.writeInt(this.trackIndex);
    }

    public StreamKey(int i4, int i10, int i11) {
        this.periodIndex = i4;
        this.groupIndex = i10;
        this.trackIndex = i11;
    }

    @Override // java.lang.Comparable
    public int compareTo(StreamKey streamKey) {
        int i4 = this.periodIndex - streamKey.periodIndex;
        if (i4 == 0) {
            int i10 = this.groupIndex - streamKey.groupIndex;
            return i10 == 0 ? this.trackIndex - streamKey.trackIndex : i10;
        }
        return i4;
    }

    StreamKey(Parcel parcel) {
        this.periodIndex = parcel.readInt();
        this.groupIndex = parcel.readInt();
        this.trackIndex = parcel.readInt();
    }
}
