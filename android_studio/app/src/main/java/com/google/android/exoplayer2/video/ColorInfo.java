package com.google.android.exoplayer2.video;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.z0;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class ColorInfo implements Parcelable {
    public static final Parcelable.Creator<ColorInfo> CREATOR = new a();
    public final int colorRange;
    public final int colorSpace;
    public final int colorTransfer;
    private int hashCode;
    @Nullable
    public final byte[] hdrStaticInfo;

    /* loaded from: classes2.dex */
    class a implements Parcelable.Creator<ColorInfo> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public ColorInfo createFromParcel(Parcel parcel) {
            return new ColorInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public ColorInfo[] newArray(int i4) {
            return new ColorInfo[i4];
        }
    }

    public ColorInfo(int i4, int i10, int i11, @Nullable byte[] bArr) {
        this.colorSpace = i4;
        this.colorRange = i10;
        this.colorTransfer = i11;
        this.hdrStaticInfo = bArr;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ColorInfo.class != obj.getClass()) {
            return false;
        }
        ColorInfo colorInfo = (ColorInfo) obj;
        return this.colorSpace == colorInfo.colorSpace && this.colorRange == colorInfo.colorRange && this.colorTransfer == colorInfo.colorTransfer && Arrays.equals(this.hdrStaticInfo, colorInfo.hdrStaticInfo);
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = ((((((527 + this.colorSpace) * 31) + this.colorRange) * 31) + this.colorTransfer) * 31) + Arrays.hashCode(this.hdrStaticInfo);
        }
        return this.hashCode;
    }

    public String toString() {
        int i4 = this.colorSpace;
        int i10 = this.colorRange;
        int i11 = this.colorTransfer;
        boolean z9 = this.hdrStaticInfo != null;
        StringBuilder sb = new StringBuilder(55);
        sb.append("ColorInfo(");
        sb.append(i4);
        sb.append(", ");
        sb.append(i10);
        sb.append(", ");
        sb.append(i11);
        sb.append(", ");
        sb.append(z9);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.colorSpace);
        parcel.writeInt(this.colorRange);
        parcel.writeInt(this.colorTransfer);
        z0.x1(parcel, this.hdrStaticInfo != null);
        byte[] bArr = this.hdrStaticInfo;
        if (bArr != null) {
            parcel.writeByteArray(bArr);
        }
    }

    ColorInfo(Parcel parcel) {
        this.colorSpace = parcel.readInt();
        this.colorRange = parcel.readInt();
        this.colorTransfer = parcel.readInt();
        this.hdrStaticInfo = z0.Z0(parcel) ? parcel.createByteArray() : null;
    }
}
