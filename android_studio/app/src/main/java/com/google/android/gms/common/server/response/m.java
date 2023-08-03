package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class m implements Parcelable.Creator<zal> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zal createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        String str = null;
        ArrayList arrayList = null;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                str = SafeParcelReader.G(parcel, X);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                arrayList = SafeParcelReader.L(parcel, X, zam.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zal(i4, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zal[] newArray(int i4) {
        return new zal[i4];
    }
}
