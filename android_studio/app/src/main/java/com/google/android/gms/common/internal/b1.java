package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class b1 implements Parcelable.Creator<zav> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zav createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i4 = 0;
        boolean z9 = false;
        boolean z10 = false;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                iBinder = SafeParcelReader.Y(parcel, X);
            } else if (O == 3) {
                connectionResult = (ConnectionResult) SafeParcelReader.C(parcel, X, ConnectionResult.CREATOR);
            } else if (O == 4) {
                z9 = SafeParcelReader.P(parcel, X);
            } else if (O != 5) {
                SafeParcelReader.h0(parcel, X);
            } else {
                z10 = SafeParcelReader.P(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zav(i4, iBinder, connectionResult, z9, z10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zav[] newArray(int i4) {
        return new zav[i4];
    }
}
