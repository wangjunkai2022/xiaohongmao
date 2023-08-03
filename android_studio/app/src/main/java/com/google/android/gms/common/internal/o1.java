package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class o1 implements Parcelable.Creator<zzaj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaj createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            if (SafeParcelReader.O(X) != 1) {
                SafeParcelReader.h0(parcel, X);
            } else {
                i4 = SafeParcelReader.Z(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zzaj(i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaj[] newArray(int i4) {
        return new zzaj[i4];
    }
}
