package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class u implements Parcelable.Creator<Feature> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Feature createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        int i4 = 0;
        long j4 = -1;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                str = SafeParcelReader.G(parcel, X);
            } else if (O == 2) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                j4 = SafeParcelReader.c0(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new Feature(str, i4, j4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Feature[] newArray(int i4) {
        return new Feature[i4];
    }
}
