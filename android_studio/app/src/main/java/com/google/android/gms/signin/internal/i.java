package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zav;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class i implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zak createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ConnectionResult connectionResult = null;
        zav zavVar = null;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                connectionResult = (ConnectionResult) SafeParcelReader.C(parcel, X, ConnectionResult.CREATOR);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                zavVar = (zav) SafeParcelReader.C(parcel, X, zav.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zak(i4, connectionResult, zavVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak[] newArray(int i4) {
        return new zak[i4];
    }
}
