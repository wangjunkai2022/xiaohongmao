package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class t implements Parcelable.Creator<ConnectionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ ConnectionResult createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        int i4 = 0;
        int i10 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                i10 = SafeParcelReader.Z(parcel, X);
            } else if (O == 3) {
                pendingIntent = (PendingIntent) SafeParcelReader.C(parcel, X, PendingIntent.CREATOR);
            } else if (O != 4) {
                SafeParcelReader.h0(parcel, X);
            } else {
                str = SafeParcelReader.G(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new ConnectionResult(i4, i10, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionResult[] newArray(int i4) {
        return new ConnectionResult[i4];
    }
}
