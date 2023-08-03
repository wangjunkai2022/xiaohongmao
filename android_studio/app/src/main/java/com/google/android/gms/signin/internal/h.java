package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zat;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class h implements Parcelable.Creator<zai> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zai createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i4 = 0;
        zat zatVar = null;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O != 2) {
                SafeParcelReader.h0(parcel, X);
            } else {
                zatVar = (zat) SafeParcelReader.C(parcel, X, zat.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zai(i4, zatVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zai[] newArray(int i4) {
        return new zai[i4];
    }
}
