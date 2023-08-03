package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class b implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zaa createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        int i4 = 0;
        Intent intent = null;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                i10 = SafeParcelReader.Z(parcel, X);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                intent = (Intent) SafeParcelReader.C(parcel, X, Intent.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zaa(i4, i10, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa[] newArray(int i4) {
        return new zaa[i4];
    }
}
