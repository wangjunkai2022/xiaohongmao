package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class n implements Parcelable.Creator<SafeParcelResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SafeParcelResponse createFromParcel(Parcel parcel) {
        int i02 = SafeParcelReader.i0(parcel);
        Parcel parcel2 = null;
        zan zanVar = null;
        int i4 = 0;
        while (parcel.dataPosition() < i02) {
            int X = SafeParcelReader.X(parcel);
            int O = SafeParcelReader.O(X);
            if (O == 1) {
                i4 = SafeParcelReader.Z(parcel, X);
            } else if (O == 2) {
                parcel2 = SafeParcelReader.y(parcel, X);
            } else if (O != 3) {
                SafeParcelReader.h0(parcel, X);
            } else {
                zanVar = (zan) SafeParcelReader.C(parcel, X, zan.CREATOR);
            }
        }
        SafeParcelReader.N(parcel, i02);
        return new SafeParcelResponse(i4, parcel2, zanVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SafeParcelResponse[] newArray(int i4) {
        return new SafeParcelResponse[i4];
    }
}
