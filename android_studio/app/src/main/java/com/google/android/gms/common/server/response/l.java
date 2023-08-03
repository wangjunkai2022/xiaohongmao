package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class l implements Parcelable.Creator<zan> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zan createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        ArrayList arrayList = null;
        String str = null;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                arrayList = SafeParcelReader.L(parcel, X, zal.CREATOR);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                str = SafeParcelReader.G(parcel, X);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new zan(i4, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zan[] newArray(int i4) {
        return new zan[i4];
    }
}
